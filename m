Received: (qmail 18225 invoked by uid 550); 13 Jan 2026 14:58:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18156 invoked from network); 13 Jan 2026 14:58:23 -0000
Date: Tue, 13 Jan 2026 09:58:13 -0500
From: Jan Schaumann <jschauma@netmeister.org>
To: oss-security@lists.openwall.com
Message-ID: <aWZdhW5WioYfH8Iy@netmeister.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Subject: [oss-security] NodeJS Security Releases (CVE-2025-55131, CVE-2025-55130,
 CVE-2025-59465, and others)

[I'm not affiliated with NodeJS; just posting here
because ІIRC the team generally doesn't.]

https://nodejs.org/en/blog/vulnerability/december-2025-security-releases

Despite the URL, this is a release published today.
It was originally planned to be released "on, or
shortly after, Monday, December 15, 2025."  It seems
this update was prepended to the pre-announcement note
at that URL.


Full text of the website:

----

Tuesday, January 13, 2026 Security Releases

Security releases available
Updates are now available for the 25.x, 24.x, 22.x,
20.x Node.js release lines to address:

* 3 high severity issues.
* 4 medium severity issues.
* 1 low severity issue.

This security release includes the following
dependency updates to address public vulnerabilities:

* c-ares (1.34.6) on 20.x, 22.x, 24.x, 25.x
* undici (6.23.0, 7.18.0) on 20.x, 22.x, 24.x, 25.x

Timeout-based race conditions make
Uint8Array/Buffer.alloc non-zerofilled
(CVE-2025-55131) - (High)

A flaw in Node.js's buffer allocation logic can expose
uninitialized memory when allocations are interrupted,
when using the vm module with the timeout option.
Under specific timing conditions, buffers allocated
with Buffer.alloc and other TypedArray instances like
Uint8Array may contain leftover data from previous
operations, allowing in-process secrets like tokens or
passwords to leak or causing data corruption.

While exploitation typically requires precise timing
or in-process code execution, it can become remotely
exploitable when untrusted input influences workload
and timeouts, leading to potential confidentiality and
integrity impact.

Impact:

This vulnerability affects all users in active release
lines: 20.x, 22.x, 24.x, 25.x
Thank you, to Nikita Skovoroda for reporting and
fixing this vulnerability.


Bypass File System Permissions using crafted symlinks
(CVE-2025-55130) - (High)

A flaw in Node.js’s Permissions model allows attackers
to bypass --allow-fs-read and --allow-fs-write
restrictions using crafted relative symlink paths. By
chaining directories and symlinks, a script granted
access only to the current directory can escape the
allowed path and read sensitive files. This breaks the
expected isolation guarantees and enables arbitrary
file read/write, leading to potential system
compromise.

Impact:

This vulnerability affects users of the permission
model on Node.js v20, v22, v24, and v25.
Thank you, to natann for reporting this vulnerability
and thank you RafaelGSS for fixing it.


Node.js HTTP/2 server crashes with unhandled error
when receiving malformed HEADERS frame
(CVE-2025-59465) - (High)

A malformed HTTP/2 HEADERS frame with oversized,
invalid HPACK data can cause Node.js to crash by
triggering an unhandled TLSSocket error ECONNRESET.
Instead of safely closing the connection, the process
crashes, enabling a remote denial of service. This
primarily affects applications that do not attach
explicit error handlers to secure sockets, for
example:

server.on('secureConnection', socket => {
  socket.on('error', err => {
    console.log(err);
  });
});
JavaScript
Copy to clipboard
Impact:

This vulnerability affects all users in active release
lines: 20.x, 22.x, 24.x, 25.x

Thank you, to dantt for reporting this vulnerability
and thank you RafaelGSS for fixing it.


Uncatchable "Maximum call stack size exceeded" error
on Node.js via async_hooks leads to process crashes
bypassing error handlers (CVE-2025-59466) - (Medium)

We have identified a bug in Node.js error handling
where "Maximum call stack size exceeded" errors become
uncatchable when async_hooks.createHook() is enabled.
Instead of reaching process.on('uncaughtException'),
the process terminates, making the crash
unrecoverable. Applications that rely on
AsyncLocalStorage (v22, v20) or
async_hooks.createHook() (v24, v22, v20) become
vulnerable to denial-of-service crashes triggered by
deep recursion under specific conditions.

Impact:

This vulnerability affects all users in active release
lines: 20.x, 22.x, 24.x, 25.x

Thank you, to Andrew MacPherson (AndrewMohawk) for
identifying & aaron_vercel for reporting this
vulnerability and thank you mcollina for fixing it.


Memory leak that enables remote Denial of Service
against applications processing TLS client
certificates (CVE-2025-59464) - (Medium)

A memory leak in Node.js’s OpenSSL integration occurs
when converting X.509 certificate fields to UTF-8
without freeing the allocated buffer. When
applications call socket.getPeerCertificate(true),
each certificate field leaks memory, allowing remote
clients to trigger steady memory growth through
repeated TLS connections. Over time this can lead to
resource exhaustion and denial of service.

Impact:

This vulnerability affects all users in active release
lines: 20.x, 22.x, 24.x
Thank you, to giant_anteater for reporting this
vulnerability and thank you RafaelGSS for fixing it.


Node.js permission model bypass via unchecked Unix
Domain Socket connections (UDS) (CVE-2026-21636) -
(Medium)

A flaw in Node.js's permission model allows Unix
Domain Socket (UDS) connections to bypass network
restrictions when --permission is enabled. Even
without --allow-net, attacker-controlled inputs (such
as URLs or socketPath options) can connect to
arbitrary local sockets via net, tls, or undici/fetch.
This breaks the intended security boundary of the
permission model and enables access to privileged
local services, potentially leading to privilege
escalation, data exposure, or local code execution.

In the moment of this vulnerability, network
permissions (--allow-net) are still in the
experimental phase.

Impact:

The issue affects users of the Node.js permission
model on version v25.
Thank you, to mufeedvh for reporting this
vulnerability and thank you RafaelGSS for fixing it.


TLS PSK/ALPN Callback Exceptions Bypass Error
Handlers, Causing DoS and FD Leak (CVE-2026-21637) -
(Medium)

A flaw in Node.js TLS error handling allows remote
attackers to crash or exhaust resources of a TLS
server when pskCallback or ALPNCallback are in use.
Synchronous exceptions thrown during these callbacks
bypass standard TLS error handling paths
(tlsClientError and error), causing either immediate
process termination or silent file descriptor leaks
that eventually lead to denial of service. Because
these callbacks process attacker-controlled input
during the TLS handshake, a remote client can
repeatedly trigger the issue.

Impact:

This vulnerability affects TLS servers using PSK or
ALPN callbacks across Node.js versions where these
callbacks throw without being safely wrapped.
Thank you, to 0xmaxhax for reporting this
vulnerability and thank you mcollina for fixing it.


fs.futimes() Bypasses Read-Only Permission Model
(CVE-2025-55132) - (Low)

A flaw in Node.js's permission model allows a file's
access and modification timestamps to be changed via
futimes() even when the process has only read
permissions.

Unlike utimes(), futimes() does not apply the expected
write-permission checks, which means file metadata can
be modified in read-only directories. This behavior
could be used to alter timestamps in ways that obscure
activity, reducing the reliability of logs.

Impact:

This vulnerability affects users of the permission
model on Node.js v20, v22, v24, and v25.
Thank you, to oriotie for reporting this vulnerability
and thank you RafaelGSS for fixing it.


Downloads and release details
Node.js v20.19.7 https://nodejs.org/en/blog/release/v20.19.7/
Node.js v22.21.2 https://nodejs.org/en/blog/release/v22.21.2/
Node.js v24.12.1 https://nodejs.org/en/blog/release/v24.12.1/
Node.js v25.2.2 https://nodejs.org/en/blog/release/v25.2.2/

----

The URLs to the release details appear to not be
functional (yet?).

Release details on GitHub appear to be:

https://github.com/nodejs/node/releases/tag/v20.20.0
https://github.com/nodejs/node/releases/tag/v22.22.0
https://github.com/nodejs/node/releases/tag/v24.13.0
https://github.com/nodejs/node/releases/tag/v25.3.0

(Note: different versions from the one noted above.)
