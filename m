X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/10/7
Message-ID: <CAKtDSqBNkCTixzxVxeA6Sm05OC5_Ci80UsiTBOO=TGLwQywWmQ@mail.gmail.com>
Date: Mon, 10 Aug 2026 23:26:26 +0300
From: Sergei G <serg.gordey@...il.com>
To: oss-security@...ts.openwall.com
Subject: actix-multipart: field parser hangs indefinitely after EOF on a truncated boundary prefix, leaking the connection slot
Content-Type: text/plain; charset=utf-8

Since the actix-web maintainers have protected themselves from the
"neuroslop" I'm sharing the finding here.

========== Agent - generated content ==========

AI assistance disclosure / credit: discovered and verified using
rust-in-peace (https://github.com/scadastrangelove/rust-in-peace), an
AI-agent-based Rust security review pipeline. Every cited line was
re-read against the exact published crate source and the behavior
below was reproduced through three independent dynamic reproductions.
Re-tested 2026-08-10 with actix-web 4.14.1, actix-http 3.13.3,
actix-server 2.7.0, and actix-multipart 0.8.0.

Component: actix-multipart field stream parser
(actix-multipart/src/field.rs, InnerField::read_stream)

Affected: confirmed at actix-multipart 0.8.0 (current crates.io
release as of 2026-08-10, verified against the exact package fetched
by cargo. Re-tested against GitHub main at actix/actix-web@...35abc;
the vulnerable code paths are still present.

Class: CWE-400 Uncontrolled Resource Consumption / CWE-667-adjacent
stuck-future (remote, per-connection availability).

Severity (self-assessed): Medium.
Deterministic, single-request trigger (no timing/race precondition),
remotely reachable on any route using the Multipart extractor,
requires zero ongoing attacker resources after the initial packet.

Estimated CVSS: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:L ≈ 5.3 for
a single exploitation

===Summary===

actix-multipart's InnerField::read_stream parses a multipart field
body of unknown length by scanning for the next boundary. When the
residual buffer looks like the start of a boundary marker (\r,
optionally followed by \n--) but doesn't yet contain enough bytes to
confirm or reject it, the code correctly returns Poll::Pending — that
part is right, because normally more bytes are still coming.

But if the transport has already reached EOF (payload.eof == true) and
no more bytes are ever coming (e.g. the client sent a body truncated
mid-boundary), the code still returns Poll::Pending indefinitely.
Nothing will ever wake this task, because the underlying stream is
already exhausted; a re-poll just re-observes the same exhausted
stream and repeats eof = true without re-checking it in these
branches.

Two independent call sites in the same function have this defect. A
client sends one ~70-byte truncated multipart request, closes the
connection (even an immediate RST), and the server-side handler
remains wedged until the worker process is restarted — along with the
file descriptor and the connection-count slot it holds.

The defective code (actix-multipart 0.8.0, src/field.rs)
// field.rs:288-302 — read_stream entry. The len==0 branch gets this right:
pub(crate) fn read_stream(
    payload: &mut PayloadBuffer,
    boundary: &str,
) -> Poll<Option<Result<Bytes, Error>>> {
    let mut pos = 0;
    let len = payload.buf.len();

    if len == 0 {
        return if payload.eof {
            Poll::Ready(Some(Err(Error::Incomplete)))   // <--
correctly handles EOF
        } else {
            Poll::Pending
        };
    }

    // field.rs:305-323 — Instance 2: early boundary-prefix check
    if len > 4 && payload.buf[0] == b'\r' {
        let b_len = if payload.buf.starts_with(b"\r\n") &&
&payload.buf[2..4] == b"--" {
            Some(4)
        } else if &payload.buf[1..3] == b"--" {
            Some(3)
        } else {
            None
        };

        if let Some(b_len) = b_len {
            let b_size = boundary.len() + b_len;
            if len < b_size {
                return Poll::Pending;                    // <-- BUG:
no payload.eof check
            } else if &payload.buf[b_len..b_size] == boundary.as_bytes() {
                return Poll::Ready(None);
            }
        }
    }

    loop {
        return if let Some(idx) =
memchr::memmem::find(&payload.buf[pos..], b"\r") {
            let cur = pos + idx;

            // field.rs:330-335 — Instance 1: main-loop boundary check
            if cur + 4 > len {
                if cur > 0 {
                    Poll::Ready(Some(Ok(payload.buf.split_to(cur).freeze())))
                } else {
                    Poll::Pending                          // <-- BUG:
no payload.eof check
                }
            } else {
                // ...boundary match / not-boundary handling, elided —
unaffected by this bug...
            }
        } else {
            Poll::Ready(Some(Ok(payload.buf.split().freeze())))
        };
    }
}

Both Poll::Pending returns marked <-- BUG are missing the same check
the len == 0 branch already has three lines above them: if payload.eof
is true, there is no more data coming, so Pending must become
Error::Incomplete instead.

Which of the two sites fires depends only on how many bytes of the
boundary prefix survive truncation relative to the configured
boundary's length — both are independently reachable with an
attacker-chosen boundary string, demonstrated separately below.

===Demonstration===

All three reproductions run against actix-multipart 0.8.0, the current
crates.io release as of 2026-08-10 (verified against the exact source
cargo fetches for that version, at
registry/src/.../actix-multipart-0.8.0/src/field.rs — not merely the
GitHub main branch, though the same vulnerable code is still present
on GitHub main at actix/actix-web@...35abc).

Instance 1 — main-loop branch (field.rs:334)

poc/instance1_cr_hang.rs: a one-field multipart body truncated to
leave \r\n- (3 bytes) after the field data, fed through the public
Multipart/Field API.

first chunk = b"data\r\n"
TIMEOUT: field.next() stayed pending after EOF on truncated CR-boundary
Instance 2 — early boundary-check branch (field.rs:316-317),
independently confirmed

poc/instance2_early_boundary_hang.rs: uses a realistic 10-character
boundary (abcdefghij) so the truncated suffix (\r\n--abc, 7 bytes) is
shorter than boundary.len() + 4 (14) — landing in the different
early-check branch, not the main loop. This rules out "instance 2 is
just instance 1 restated": the trigger condition, the code path, and
the buffer shape are all different.

first chunk = b"DATA"
TIMEOUT: field.next() stayed pending -- Instance 2 CONFIRMED (line
316-317, distinct from line 334)
End-to-end, real HTTP stack, immediate hard disconnect

poc/e2e_rst_hang/: a real actix-web 4.14.1 / actix-http 3.13.3 /
actix-server 2.7.0 / actix-multipart 0.8.0 server (1 worker) with a
POST /upload handler instrumented with entry/exit counters, driven
over real TCP sockets (no mock transport). Re-tested 2026-08-10.

Control: a well-formed multipart request → handler enters, processes
the field, exits. 200 OK in hundreds of microseconds (latest retest:
421.917µs, then 165.25µs after the attack).
Attack: a truncated (\r\n-) multipart request, then the client
immediately closes the socket with SO_LINGER(0) — this sends a TCP
RST, not a graceful FIN, the strongest "attacker is completely gone"
signal the OS can produce. Measured wall-clock time from the last
write() to the RST: 38.542 microseconds in the latest retest.
Control again: a second well-formed request on a fresh connection
succeeds normally — the server is not crashed or globally stalled;
only the one wedged handler is affected.
Observation window: the server's own instrumentation is polled every 2
seconds for 30 seconds after the RST. Every single sample reports the
handler as still not exited.

[attack] sending truncated multipart (body 73 bytes)
[attack] sent RST (full close) at t=38.542µs
...
[monitor] handlers: entered=3 exited=2 stuck=1   (repeated, unchanged,
for the full 30s window)

Independent OS-level confirmation. Running lsof against the live
server process 18 seconds after the RST:

COMMAND     PID USER   FD   TYPE  ... NAME
actix-mp- 92854 serg   16u  IPv4  ... TCP
localhost:19998->localhost:64200 (CLOSED)

The kernel has fully torn down the TCP connection (state CLOSED) — but
the server process still holds the file descriptor open, because
nothing in the wedged code path ever calls close() on it. This is a
direct OS-level observation of the leak, independent of any assumption
about Rust future or waker semantics.

Independent source-level confirmation that the connection-count slot
is lost, not just the fd. actix-server 2.7.0 accepts each connection
by creating a WorkerCounterGuard — an RAII guard that decrements the
server's max_connections counter on Drop — and moves that guard into
the per-connection service future itself:

// actix-server-2.7.0/src/worker.rs:695-699
let guard = this.counter.guard();
let _ = this.services[msg.token].service.call((guard, msg.io)).into_inner();
The guard is only dropped when that future completes. Our future never
completes, so the guard is never dropped, so the connection-count slot
(max_connections, default 25,600 per worker, worker.rs:256) is never
freed — for the lifetime of the worker process.

Why no existing timeout catches this
Checked against actix-web 4.14.1's own defaults and actix-http
3.13.3's dispatcher source, not assumed:

=== Timeout Default ===

client_request_timeout 5000ms "reading client request head" only —
already satisfied by the time our handler runs
client_disconnect_timeout 1000ms connection-shutdown linger — traced
in h1/dispatcher.rs: only consulted in the
SendPayload/SendErrorPayload states, i.e. after a response has already
been sent. Never reached while stuck in ServiceCall
tls_handshake_timeout 3000ms TLS handshake only
shutdown_timeout — graceful worker shutdown drain, unrelated to a single request
The dispatcher also does not force-close on a bare peer disconnect
while a service call is still in flight: h1_allow_half_closed defaults
to true (actix-web 4.14.1 server.rs:127-129, actix-http 3.13.3
config.rs:196-207), and the READ_DISCONNECT-triggered shutdown path
only fires when the dispatcher's state is None (no in-flight service
call; h1/dispatcher.rs:1413-1425). While our handler is wedged, that
condition never holds.

actix_multipart::MultipartConfig, the crate's own extractor
configuration, has exactly one knob — buffer_limit (bytes, default 64
KiB) — no timeout option. A ~70-byte truncated body never approaches
it.

===Impact===

Cost asymmetry: one ~70-byte request plus an RST (38.542µs of
attacker-side work in the latest retest, zero held attacker resources
afterward) consumes one of the server's 25,600-per-worker connection
slots, one file descriptor, and one task until the worker process
restarts. This is cheaper than classic slowloris, which requires the
attacker to keep a socket open for the duration.
Reach: any route using the Multipart extractor.
Not: a full-service crash (other connections continue to be served
normally); not memory corruption; not a panic.
Escalation path: the per-request cost to the attacker is small and
constant, so exhausting a worker's full 25,600-slot budget is a matter
of repeating the same ~70-byte request that many times, subject to
deployment-level rate limits and file-descriptor ceilings.

===Suggested fix===

In both Poll::Pending return sites within read_stream
(field.rs:316-317 and field.rs:334), check payload.eof first,
mirroring the existing len == 0 branch three lines above:

if payload.eof {
    return Poll::Ready(Some(Err(Error::Incomplete)));
}
return Poll::Pending;

Happy to submit this as a PR once a preferred direction is confirmed.

===Disclosure===

Found and verified with rust-in-peace
(https://github.com/scadastrangelove/rust-in-peace).
