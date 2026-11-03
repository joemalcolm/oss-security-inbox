X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/03/5
Message-ID: <A-wAM5BCcnB5-An4v4dy2sJHw45R18FtrtfV3WX-6-CIRe4jBJbv0kTCZEAtt0k9dWe4ZLYYjWmQp9CMVlTJlvKS61kJCopiNHHZ7BQMuo0=@innora.ai>
Date: Tue, 03 Nov 2026 09:53:28 +0000
From: feng@...ora.ai
To: oss-security@...ts.openwall.com
Subject: Apache Traffic Server: heap-buffer-overflow via HTTP Host header (unbounded alloca pattern, 5 sites) — 90-day disclosure
Content-Type: text/plain; charset=utf-8

Apache Traffic Server: heap-buffer-overflow via HTTP Host header
(unbounded alloca pattern, 5 sites) — 90-day disclosure

Reporter: Innora Security Research (feng@...ora.ai)
Target: Apache Traffic Server master (verified on HEAD <= 82605c6 at report
time; pattern still present on master as of 2026-11-03, HttpTransact.cc:1573)
Weakness: CWE-787 Out-of-bounds Write (heap-buffer-overflow, ASAN-verified)
Companion: CWE-789 Memory Allocation with Excessive Size Value
Severity: Medium-High (CVSS 6.4 — AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:L/A:H)

== Summary ==

Apache Traffic Server contains 5 call sites that pass attacker-controlled
lengths to alloca. The primary HTTP-path finding:

In src/proxy/http/HttpTransact.cc (ModifyRequest):

  char *hostname = static_cast<char *>(alloca(hostname_len + PORT_PADDING));
  memcpy(hostname, buf.data(), hostname_len);

where hostname_len is derived directly from the HTTP Host request header.
When an administrator raises both proxy.config.http.request_header_max_size
and proxy.config.http.header_field_max_size above the worker-thread stack
size (defaults are 32 KiB; RECC_NULL imposes no upper bound and admins
frequently raise these for large-cookie / JWT / custom-header workloads),
an unauthenticated remote client can send a Host: header large enough to
overflow.

ASAN-verified result:
  ==10==ERROR: AddressSanitizer: heap-buffer-overflow
  WRITE of size 10485760 at 0x7fffee913818 thread T10
Triggered chain: NetHandler::process_ready_list ->
UnixNetVConnection::net_read_io -> HttpSM::state_read_client_request_header
-> HttpSM::call_transact_and_set_next_state -> HttpTransact::ModifyRequest
-> __asan_memcpy. Crash signal 6, ATS process aborts, all in-flight
connections dropped.

== Pre-conditions (honest scope) ==

Two static-config options gate the trigger; both are RECC_NULL
(src/records/RecordsConfig.cc:574), meaning ATS imposes no upper bound:

  proxy.config.http.request_header_max_size  (default 32768; trigger > 8 MiB)
  proxy.config.http.header_field_max_size    (default 32768; trigger > 8 MiB)

This is an admin-misconfiguration-dependent remote trigger, not a
default-config exploit. The plugin-API path (4 additional alloca sites
on caller-controlled sizes in InkAPI.cc) is Medium severity (local
high-priv).

== Suggested fix ==

Replace alloca with heap allocation (ats_malloc or std::string) for
hostname construction, and impose hard upper bounds on the two RECC_NULL
config options. A class-wide audit of alloca(user-controlled-size) sites
is warranted (5 sites identified in the original report).

== Disclosure timeline ==

- 2026-05-17 17:34 SGT: full report (10-file evidence tarball, PoC, ASAN
  logs, upstream PR draft) sent to security@...fficserver.apache.org
  (SMTP 250 OK, 24523 bytes).
- 2026-05-31: T+14 polite nudge reminder drafted per disclosure policy.
- 2026-08-15: 90-day disclosure window expired. No vendor response
  received at any point.
- 2026-11-03: verified the vulnerable pattern is still present on
  master (HttpTransact.cc:1573). Publishing per 90-day policy.

Full technical report with all 5 alloca sites, ASAN transcripts, PoC and
an upstream PR draft available on request to the reporter address.

—
Feng Ning / Innora Security Research

