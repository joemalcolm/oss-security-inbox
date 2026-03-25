Received: (qmail 4036 invoked by uid 550); 25 Mar 2026 00:52:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3994 invoked from network); 25 Mar 2026 00:52:18 -0000
Date: Tue, 24 Mar 2026 20:52:09 -0400
From: Jan Schaumann <jschauma@netmeister.org>
To: oss-security@lists.openwall.com
Message-ID: <acMxc_Ecnc5-dsrW@netmeister.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Subject: [oss-security] NodeJS Security Releases fixes High, 5 Medium, 2 Low
 severity issues

[I'm not affiliated with NodeJS; just posting here
because the NodeJS team generally doesn't.]

https://nodejs.org/en/blog/vulnerability/march-2026-security-releases

Full text of the website:

----
Security releases available

Updates are now available for the 25.x, 24.x, 22.x,
20.x Node.js release lines for the following issues.

This security release includes the following
dependency updates to address public vulnerabilities:

* undici (6.24.1, 7.24.4) on 22.x, 24.x, 25.x

Incomplete fix for CVE-2026-21637: loadSNI() in
_tls_wrap.js lacks try/catch leading to Remote DoS
(CVE-2026-21637) - (High)

A flaw in Node.js TLS error handling leaves
SNICallback invocations unprotected against
synchronous exceptions, while the equivalent ALPN and
PSK callbacks were already addressed in
CVE-2026-21637. This represents an incomplete fix of
that prior vulnerability.

When an SNICallback throws synchronously on unexpected
input the exception bypasses TLS error handlers and
propagates as an uncaught exception, crashing the
Node.js process.

* This vulnerability affects all Node.js versions that

* received the CVE-2026-21637 fix, including 20.x,
  22.x, 24.x, and 25.x, on any TLS server where
  SNICallback may throw on unexpected servername
  input.

Thank you, to mbarbs for reporting this vulnerability
and thank you mcollina for fixing it.


Denial of Service via __proto__ header name in
req.headersDistinct (Uncaught TypeError crashes
Node.js process) (CVE-2026-21710) - (High)

A flaw in Node.js HTTP request handling causes an
uncaught TypeError when a request is received with a
header named __proto__ and the application accesses
req.headersDistinct.

When this occurs, dest["__proto__"] resolves to
Object.prototype rather than undefined, causing
.push() to be called on a non-array. This exception is
thrown synchronously inside a property getter and
cannot be intercepted by error event listeners,
meaning it cannot be handled without wrapping every
req.headersDistinct access in a try/catch.

* This vulnerability affects all Node.js HTTP servers
  on 20.x, 22.x, 24.x, and v25.x

Thank you, to yushengchen for reporting this
vulnerability and thank you mcollina for fixing it.


Node.js Permission Model bypass: UDS server
bind/listen works without --allow-net (CVE-2026-21711)
- (Medium)

A flaw in Node.js Permission Model network enforcement
leaves Unix Domain Socket (UDS) server operations
without the required permission checks, while all
comparable network paths correctly enforce them.

As a result, code running under --permission without
--allow-net can create and expose local IPC endpoints,
allowing communication with other processes on the
same host outside of the intended network restriction
boundary.

* This vulnerability affects Node.js 25.x processes
  using the Permission Model where --allow-net is
  intentionally omitted to restrict network access.
  Note that --allow-net is currently an experimental
  feature.

Thank you, to xavlimsg for reporting this
vulnerability and thank you RafaelGSS for fixing it.


Assertion error in node_url.cc via malformed URL
format leads to Node.js crash (CVE-2026-21712) -
(Medium)

A flaw in Node.js URL processing causes an assertion
failure in native code when url.format() is called
with a malformed internationalized domain name (IDN)
containing invalid characters, crashing the Node.js
process.

* This vulnerability affects 24.x and 25.x.

Thank you, to wooffie for reporting this vulnerability
and thank you RafaelGSS for fixing it.


Timing side-channel in HMAC verification via memcmp()
in crypto_hmac.cc leads to potential MAC forgery
(CVE-2026-21713) - (Medium)

A flaw in Node.js HMAC verification uses a
non-constant-time comparison when validating
user-provided signatures, potentially leaking timing
information proportional to the number of matching
bytes. Under certain threat models where
high-resolution timing measurements are possible, this
behavior could be exploited as a timing oracle to
infer HMAC values.

Node.js already provides timing-safe comparison
primitives used elsewhere in the codebase, indicating
this is an oversight rather than an intentional design
decision.

* This vulnerability affects 20.x, 22.x, 24.x, and 25.x.

Thank you, to x_probe for reporting this vulnerability
and thank you panva for fixing it.


Memory leak in Node.js HTTP/2 server via WINDOW_UPDATE
on stream 0 leads to resource exhaustion
(CVE-2026-21714) - (Medium)

A memory leak occurs in Node.js HTTP/2 servers when a
client sends WINDOW_UPDATE frames on stream 0
(connection-level) that cause the flow control window
to exceed the maximum value of 2³¹-1. The server
correctly sends a GOAWAY frame, but the Http2Session
object is never cleaned up.

* This vulnerability affects HTTP2 users on Node.js
  20, 22, 24 and 25.

Thank you, to galbarnahum for reporting this
vulnerability and thank you RafaelGSS for fixing it.


HashDoS in V8 (CVE-2026-21717) - (Medium)

A flaw in V8's string hashing mechanism causes
integer-like strings to be hashed to their numeric
value, making hash collisions trivially predictable.
By crafting a request that causes many such collisions
in V8's internal string table, an attacker can
significantly degrade performance of the Node.js
process.

The most common trigger is any endpoint that calls
JSON.parse() on attacker-controlled input, as JSON
parsing automatically internalizes short strings into
the affected hash table.

* This vulnerability affects 20.x, 22.x, 24.x, and
  25.x.

Thank you, to sharp_edged for reporting this
vulnerability and thank you joyeecheung for fixing it.


Permission Model Bypass in realpathSync.native Allows
File Existence Disclosure (CVE-2026-21715) - (Low)

A flaw in Node.js Permission Model filesystem
enforcement leaves fs.realpathSync.native() without
the required read permission checks, while all
comparable filesystem functions correctly enforce
them.

As a result, code running under --permission with
restricted --allow-fs-read can still use
fs.realpathSync.native() to check file existence,
resolve symlink targets, and enumerate filesystem
paths outside of permitted directories.

* This vulnerability affects 20.x, 22.x, 24.x, and
  25.x processes using the Permission Model where
  --allow-fs-read is intentionally restricted.

Thank you, to stif for reporting this vulnerability
and thank you RafaelGSS for fixing it.


CVE-2024-36137 Patch Bypass - FileHandle.chmod/chown
(CVE-2026-21716) - (Low)

An incomplete fix for CVE-2024-36137 leaves
FileHandle.chmod() and FileHandle.chown() in the
promises API without the required permission checks,
while their callback-based equivalents (fs.fchmod(),
fs.fchown()) were correctly patched.

As a result, code running under --permission with
restricted --allow-fs-write can still use
promise-based FileHandle methods to modify file
permissions and ownership on already-open file
descriptors, bypassing the intended write
restrictions.

* This vulnerability affects 20.x, 22.x, 24.x, and
  25.x processes using the Permission Model where
  --allow-fs-write is intentionally restricted.

Thank you, to wooseokdotkim for reporting this
vulnerability and thank you RafaelGSS for fixing it.

Downloads and release details

* Node.js v20.20.2
  https://nodejs.org/en/blog/release/v20.20.2/
* Node.js v22.22.2
  https://nodejs.org/en/blog/release/v22.22.2/
* Node.js v24.14.1
  https://nodejs.org/en/blog/release/v24.14.1/
* Node.js v25.8.2
  https://nodejs.org/en/blog/release/v25.8.2/
