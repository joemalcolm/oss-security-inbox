X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/24/7
Message-ID: <aty9LSUPFrJHfrhz@donburi.himad.notcom.org>
Date: Sat, 24 Oct 2026 17:20:00 +0300
From: Valtteri Vuorikoski <vuori@...com.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-111813 etc: Multiple vulnerabilities in Apache Traffic Server prior to 9.2.16/10.1.5/10.2.1
Content-Type: text/plain; charset=utf-8

Announcement below was posted to the Apache Traffic Server mailing lists a few
days ago.

----- Forwarded message from Masakazu Kitajo <maskit@...che.org> -----

Date: Tue, 20 Oct 2026 20:07:34 -0600
From: Masakazu Kitajo <maskit@...che.org>
To: announce@...fficserver.apache.org,  users <users@...fficserver.apache.org>
Subject: [SECURITY] Multiple vulnerabilities fixed in Apache Traffic Server
 9.2.16, 10.1.5 and 10.2.1

The following 15 vulnerabilities affecting Apache Traffic Server have been
fixed in versions 9.2.16, 10.1.5 and 10.2.1:

============================================================

The Apache Traffic Server experimental magick plugin lets an
unauthenticated client control ImageMagick convert arguments in its default
(unsigned) configuration.

CVE:
CVE-2026-111813 - magick plugin passes client query strings unfiltered to
ImageMagick convert in the default configuration

Severity:
critical
CVSS v3.1: 10.0 CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:C/C:H/I:H/A:H
CVSS v4.0: 10.0
CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:H/VI:H/VA:H/SC:H/SI:H/SA:H

Reported By:
Apache Community
Abraxas Labs
The ASF

Vendor:
The ASF

Version Affected:
ATS 9.0.0 to 9.2.15
ATS 10.0.0 to 10.1.4
ATS 10.2.0

Mitigation:
9.x users should upgrade to 9.2.16 or later versions
10.1.x users should upgrade to 10.1.5 or later versions
10.2.x users should upgrade to 10.2.1 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-111813

============================================================

The Apache Traffic Server experimental wasm plugin has a use-after-free in
its transaction-close handler and forwards unvalidated guest-supplied
metric IDs to the internal stats API.

CVE:
CVE-2026-111804 - wasm plugin has a use-after-free and forwards unvalidated
guest metric IDs

Severity:
critical
CVSS v3.1: 8.2 CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:L/A:H
CVSS v4.0: 8.8
CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/VI:L/VA:H/SC:N/SI:N/SA:N

Reported By:
Omkhar Arasaratnam
Apache Community

Vendor:
The ASF

Version Affected:
ATS 10.0.0 to 10.1.4
ATS 10.2.0

Mitigation:
10.1.x users should upgrade to 10.1.5 or later versions
10.2.x users should upgrade to 10.2.1 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-111804

============================================================

Apache Traffic Server can return an origin connection to the shared pool
while the origin is still waiting on a request body the client declared but
never fully sent, including when the client used Expect: 100-continue. The
origin then reads a later request on that connection as leftover body data,
which lets an attacker smuggle requests past ATS access controls, disrupt
other users' requests, or poison the cache.

CVE:
CVE-2025-31699 - Origin connection still owed a request body is reused,
enabling request smuggling

Severity:
important
CVSS v3.1: 8.9 CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:C/C:H/I:H/A:L
CVSS v4.0: 9.1
CVSS:4.0/AV:N/AC:L/AT:P/PR:N/UI:N/VC:L/VI:H/VA:L/SC:H/SI:H/SA:L

Reported By:
Martin van Kervel Smedshammer
Nick Muerdter

Vendor:
The ASF

Version Affected:
ATS 9.0.0 to 9.2.15
ATS 10.0.0 to 10.1.4
ATS 10.2.0

Mitigation:
9.x users should upgrade to 9.2.16 or later versions
10.1.x users should upgrade to 10.1.5 or later versions
10.2.x users should upgrade to 10.2.1 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2025-31699

============================================================

When a client sends a POST with Expect: 100-continue and the origin answers
before reading the body, Apache Traffic Server parses the unread body left
on the client connection as the next request. An attacker behind a
front-end proxy that shares connections to Traffic Server can use this to
smuggle requests past the front end and desynchronize responses for other
users.

CVE:
CVE-2025-55702 - An unread Expect: 100-continue request body is framed as a
new request

Severity:
important
CVSS v3.1: 8.7 CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:C/C:H/I:H/A:N
CVSS v4.0: 7.0
CVSS:4.0/AV:N/AC:L/AT:P/PR:N/UI:N/VC:N/VI:N/VA:N/SC:H/SI:H/SA:N

Reported By:
Sebastiano Sartor

Vendor:
The ASF

Version Affected:
ATS 9.0.0 to 9.2.15
ATS 10.0.0 to 10.1.4
ATS 10.2.0

Mitigation:
9.x users should upgrade to 9.2.16 or later versions
10.1.x users should upgrade to 10.1.5 or later versions
10.2.x users should upgrade to 10.2.1 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2025-55702

============================================================

Apache Traffic Server forwarded a malformed 302 response that should have
been rejected as a parse error, because the Transfer-Encoding: chunked
carve-out bypassed the rejection path. A response that two peers can read
differently is then stored and served, allowing cache poisoning and
response-framing desync.

CVE:
CVE-2026-111816 - A malformed 302 response bypasses parse-error rejection
through the Transfer-Encoding: chunked carve-out

Severity:
important
CVSS v3.1: 9.3 CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:C/C:L/I:H/A:N
CVSS v4.0: 9.2
CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/VI:H/VA:N/SC:L/SI:H/SA:N

Reported By:
Apache Community
OneZ3r0

Vendor:
The ASF

Version Affected:
ATS 9.0.0 to 9.2.15
ATS 10.0.0 to 10.1.4
ATS 10.2.0

Mitigation:
9.x users should upgrade to 9.2.16 or later versions
10.1.x users should upgrade to 10.1.5 or later versions
10.2.x users should upgrade to 10.2.1 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-111816

============================================================

Apache Traffic Server can be used to exhaust an HTTP/1.1 origin's worker
pool via a truncated HTTP/2 Content-Length value.

CVE:
CVE-2026-111805 - HTTP/2 Content-Length truncation lets a client trigger
backend worker-pool exhaustion

Severity:
important
CVSS v3.1: 8.6 CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:C/C:N/I:N/A:H
CVSS v4.0: 7.7
CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/VI:N/VA:N/SC:N/SI:N/SA:H

Reported By:
matrix_cain (YakLang)
Alieldeen Khaled Ali
Jesse Yang
Alex Williams (Pellera Technologies)
VulnCheck (coordinator)
The ASF

Vendor:
The ASF

Version Affected:
ATS 9.0.0 to 9.2.15
ATS 10.0.0 to 10.1.4
ATS 10.2.0

Mitigation:
9.x users should upgrade to 9.2.16 or later versions
10.1.x users should upgrade to 10.1.5 or later versions
10.2.x users should upgrade to 10.2.1 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-111805

============================================================

Apache Traffic Server can be used to exhaust an HTTP/1.1 origin's worker
pool via a malformed padded HTTP/2 DATA frame.

CVE:
CVE-2026-111808 - HTTP/2 DATA frame padding underflow lets a client trigger
backend worker-pool exhaustion

Severity:
important
CVSS v3.1: 8.6 CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:C/C:N/I:N/A:H
CVSS v4.0: 7.7
CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/VI:N/VA:N/SC:N/SI:N/SA:H

Reported By:
Khalilov Moe (LeetProtect)
The ASF

Vendor:
The ASF

Version Affected:
ATS 9.0.0 to 9.2.15
ATS 10.0.0 to 10.1.4
ATS 10.2.0

Mitigation:
9.x users should upgrade to 9.2.16 or later versions
10.1.x users should upgrade to 10.1.5 or later versions
10.2.x users should upgrade to 10.2.1 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-111808

============================================================

Apache Traffic Server's default outbound session-sharing policy can reuse a
pooled TLS session authenticated with one client certificate for a
transaction configured to present a different one.

CVE:
CVE-2026-111814 - Default server_session_sharing.match omits MASK_CERT,
allowing pooled mTLS identity confusion at the origin

Severity:
important
CVSS v3.1: 10.0 CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:C/C:H/I:H/A:N
CVSS v4.0: 7.8
CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/VI:L/VA:N/SC:H/SI:H/SA:N

Reported By:
Craig Taylor

Vendor:
The ASF

Version Affected:
ATS 9.0.0 to 9.2.15
ATS 10.0.0 to 10.1.4
ATS 10.2.0

Mitigation:
9.x users should upgrade to 9.2.16 or later versions
10.1.x users should upgrade to 10.1.5 or later versions
10.2.x users should upgrade to 10.2.1 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-111814

============================================================

Apache Traffic Server can resume a TLS session across SNI virtual hosts
without re-verifying a client certificate required by the resumed host's
verify_client STRICT policy.

CVE:
CVE-2026-111815 - TLS session ticket resumption bypasses per-SNI
verify_client STRICT enforcement

Severity:
important
CVSS v3.1: 10.0 CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:C/C:H/I:H/A:N
CVSS v4.0: 7.8
CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/VI:N/VA:N/SC:H/SI:H/SA:N

Reported By:
Yonghwa Lee, Xint by Theori

Vendor:
The ASF

Version Affected:
ATS 9.0.0 to 9.2.15
ATS 10.0.0 to 10.1.4
ATS 10.2.0

Mitigation:
9.x users should upgrade to 9.2.16 or later versions
10.1.x users should upgrade to 10.1.5 or later versions
10.2.x users should upgrade to 10.2.1 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-111815

============================================================

Apache Traffic Server 9.2.15, 10.1.4 and 10.2.0 write one unthrottled
diagnostic log line for every internal @ header they strip, so a request
carrying many such headers makes the proxy write far more log data than the
request contains.

CVE:
CVE-2026-111810 - Unthrottled per-header diagnostic logging enables a
log-flood denial of service

Severity:
important
CVSS v3.1: 7.5 CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H
CVSS v4.0: 8.7
CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/VI:N/VA:H/SC:N/SI:N/SA:N

Reported By:
Apache Community

Vendor:
The ASF

Version Affected:
ATS 9.2.15
ATS 10.1.4
ATS 10.2.0

Mitigation:
9.x users should upgrade to 9.2.16 or later versions
10.1.x users should upgrade to 10.1.5 or later versions
10.2.x users should upgrade to 10.2.1 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-111810

============================================================

Apache Traffic Server allows request smuggling via HEAD requests that carry
Content-Length or Transfer-Encoding.

CVE:
CVE-2026-111809 - HEAD requests carrying Content-Length or
Transfer-Encoding enable request smuggling

Severity:
moderate
CVSS v3.1: 9.3 CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:C/C:L/I:H/A:N
CVSS v4.0: 6.9
CVSS:4.0/AV:N/AC:L/AT:P/PR:N/UI:N/VC:N/VI:L/VA:N/SC:L/SI:H/SA:N

Reported By:
Apache Community

Vendor:
The ASF

Version Affected:
ATS 9.0.0 to 9.2.15
ATS 10.0.0 to 10.1.4
ATS 10.2.0

Mitigation:
9.x users should upgrade to 9.2.16 or later versions
10.1.x users should upgrade to 10.1.5 or later versions
10.2.x users should upgrade to 10.2.1 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-111809

============================================================

The Apache Traffic Server experimental tsmemcache plugin allows
unauthenticated network read, write, and deletion of the shared proxy cache.

CVE:
CVE-2026-111811 - tsmemcache plugin exposes the shared proxy cache over the
network with no authentication

Severity:
moderate
CVSS v3.1: 9.0 CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:C/C:H/I:H/A:H
CVSS v4.0: 9.4
CVSS:4.0/AV:N/AC:L/AT:P/PR:N/UI:N/VC:H/VI:H/VA:H/SC:N/SI:N/SA:H

Reported By:
Apache Community

Vendor:
The ASF

Version Affected:
ATS 9.0.0 to 9.2.15
ATS 10.0.0 to 10.1.4
ATS 10.2.0

Mitigation:
9.x users should upgrade to 9.2.16 or later versions
10.1.x users should upgrade to 10.1.5 or later versions
10.2.x users should upgrade to 10.2.1 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-111811

============================================================

The Apache Traffic Server origin_server_auth plugin lets a client force
signing of attacker-chosen AWS request headers under the proxy's own
credentials.

CVE:
CVE-2026-111812 - origin_server_auth signs client-controlled AWS headers
under the proxy's IAM credentials

Severity:
moderate
CVSS v3.1: 10.0 CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:C/C:H/I:H/A:N
CVSS v4.0: 7.0
CVSS:4.0/AV:N/AC:L/AT:P/PR:N/UI:N/VC:N/VI:N/VA:N/SC:H/SI:H/SA:N

Reported By:
Apache Community

Vendor:
The ASF

Version Affected:
ATS 9.0.0 to 9.2.15
ATS 10.0.0 to 10.1.4
ATS 10.2.0

Mitigation:
9.x users should upgrade to 9.2.16 or later versions
10.1.x users should upgrade to 10.1.5 or later versions
10.2.x users should upgrade to 10.2.1 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-111812

============================================================

Apache Traffic Server can stall a chunked transfer that it passes through
with its trailers removed (proxy.config.http.drop_chunked_trailers) until
the connection times out, because it waits for the trailer bytes it has
already dropped. Trailer dropping is on by default in 10.x. In 9.2.x it is
off by default, and those versions are affected only if it is enabled.

CVE:
CVE-2026-111817 - Dropping chunked trailers stalls a passthrough transfer
until timeout

Severity:
moderate
CVSS v3.1: 5.3 CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:L
CVSS v4.0: 6.9
CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/VI:N/VA:L/SC:N/SI:N/SA:N

Reported By:
Omkhar Arasaratnam

Vendor:
The ASF

Version Affected:
ATS 9.2.5 to 9.2.15
ATS 10.0.0 to 10.1.4
ATS 10.2.0

Mitigation:
9.x: no fix is included in 9.2.16; affected only if drop_chunked_trailers
is enabled
10.1.x users should upgrade to 10.1.5 or later versions
10.2.x users should upgrade to 10.2.1 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-111817

============================================================

Apache Traffic Server can crash with a null pointer dereference when a
client POST request is torn down via half-close while a chunked origin
response is being reparsed from a reentrant write-ready callback, a
timing-dependent race.

CVE:
CVE-2026-112381 - Nullptr dereference in net_write_io on a POST half-close
with chunked response

Severity:
moderate
CVSS v3.1: 5.9 CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N/A:H
CVSS v4.0: 8.2
CVSS:4.0/AV:N/AC:L/AT:P/PR:N/UI:N/VC:N/VI:N/VA:H/SC:N/SI:N/SA:N

Reported By:
Masaori Koshiba

Vendor:
The ASF

Version Affected:
ATS 9.2.15
ATS 10.1.4
ATS 10.2.0

Mitigation:
9.x users should upgrade to 9.2.16 or later versions
10.1.x users should upgrade to 10.1.5 or later versions
10.2.x users should upgrade to 10.2.1 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-112381

============================================================

Users of all affected versions should upgrade to 9.2.16, 10.1.5 or 10.2.1
as soon as possible.

We would like to thank all reporters credited above, and the Apache
Traffic Server community, for identifying and helping resolve these
issues.

Regards,
Masakazu Kitajo
Apache Traffic Server PMC

----- End forwarded message -----
