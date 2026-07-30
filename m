X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/30/13
Message-ID: <ams4sk5PmoW8Q32m@donburi.himad.notcom.org>
Date: Thu, 30 Jul 2026 14:54:02 +0300
From: Valtteri Vuorikoski <vuori@...com.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-22068+more: multiple vulnerabilities in Apache Traffic Server prior to 9.2.15/10.1.4
Content-Type: text/plain; charset=utf-8

Forward of the announcement posted to the Apache Traffic Server announcement
list on Tuesday with 38 vulnerabilities of varying severities, up to CVSS 10 in
some cases. CVSS scores are given on the announcement web page at
<https://trafficserver.apache.org/security-2026-07.html>.

These are fixed in versions 9.2.15 and 10.1.4. Based on perusing the commit log,
the fixes also appear to be on the master branch. However it seems that at least
some of the fixes have not been added to the 10.2.x (upcoming stable release)
branch yet.

 -Valtteri


----- Forwarded message from Masakazu Kitajo <maskit@...che.org> -----

Date: Tue, 28 Jul 2026 16:19:11 -0600
From: Masakazu Kitajo <maskit@...che.org>
To: announce@...fficserver.apache.org,  users
 <users@...fficserver.apache.org>, announce@...che.org
Subject: [SECURITY] Multiple vulnerabilities fixed in Apache Traffic Server
 9.2.15 and 10.1.4

The following 38 vulnerabilities affecting Apache Traffic Server have been
fixed in versions 9.2.15 and 10.1.4:

============================================================

Apache Traffic Server uses unanchored regular expressions for selection, so
substring and suffix matches bypass ACL, SNI, signature, and geo controls
across remap and several plugins.

CVE:
CVE-2026-22068 - Unanchored regular-expression matching allows ACL and
policy bypass

Severity:
important

Reported By:
Omkhar Arasaratnam
Apache Community

Vendor:
The Apache Software Foundation

Version Affected:
ATS 9.0.0 to 9.2.14
ATS 10.0.0 to 10.1.3

Mitigation:
9.x users should upgrade to 9.2.15 or later versions
10.x users should upgrade to 10.1.4 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-22068

============================================================

Apache Traffic Server does not strip Connection-listed hop-by-hop or
internal @ headers from untrusted peers before plugin hooks, enabling
request smuggling and metadata injection.

CVE:
CVE-2026-33267 - Hop-by-hop and internal headers from untrusted peers are
not stripped

Severity:
important

Reported By:
Charlie Campbell
Brian Neradt
Apache Community

Vendor:
The Apache Software Foundation

Version Affected:
ATS 9.0.0 to 9.2.14
ATS 10.0.0 to 10.1.3

Mitigation:
9.x users should upgrade to 9.2.15 or later versions
10.x users should upgrade to 10.1.4 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-33267

============================================================

Apache Traffic Server does not reject Transfer-Encoding in HTTP/2 requests,
allowing downgrade request smuggling.

CVE:
CVE-2026-58150 - HTTP/2 requests with Transfer-Encoding are not rejected,
allowing request smuggling

Severity:
important

Reported By:
Apache Community

Vendor:
The Apache Software Foundation

Version Affected:
ATS 9.0.0 to 9.2.14
ATS 10.0.0 to 10.1.3

Mitigation:
9.x users should upgrade to 9.2.15 or later versions
10.x users should upgrade to 10.1.4 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-58150

============================================================

Apache Traffic Server can be crashed or driven to resource exhaustion by
abusive HTTP/2 framing and flow-control.

CVE:
CVE-2026-58151 - Abusive HTTP/2 framing can exhaust resources and crash the
server

Severity:
important

Reported By:
Apache Community
Omkhar Arasaratnam

Vendor:
The Apache Software Foundation

Version Affected:
ATS 9.0.0 to 9.2.14
ATS 10.0.0 to 10.1.3

Mitigation:
9.x users should upgrade to 9.2.15 or later versions
10.x users should upgrade to 10.1.4 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-58151

============================================================

Apache Traffic Server can write out of bounds or overflow integers while
parsing MIME and HTTP headers.

CVE:
CVE-2026-58154 - Memory-safety errors in MIME and header parsing

Severity:
important

Reported By:
Michael Bommarito
Apache Community
Omkhar Arasaratnam

Vendor:
The Apache Software Foundation

Version Affected:
ATS 9.0.0 to 9.2.14
ATS 10.0.0 to 10.1.3

Mitigation:
9.x users should upgrade to 9.2.15 or later versions
10.x users should upgrade to 10.1.4 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-58154

============================================================

Apache Traffic Server truncates over-long header names, allowing header
aliasing, request smuggling, and policy bypass.

CVE:
CVE-2026-58155 - Header-name length truncation enables header aliasing and
request smuggling

Severity:
important

Reported By:
Omkhar Arasaratnam

Vendor:
The Apache Software Foundation

Version Affected:
ATS 9.0.0 to 9.2.14
ATS 10.0.0 to 10.1.3

Mitigation:
9.x users should upgrade to 9.2.15 or later versions
10.x users should upgrade to 10.1.4 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-58155

============================================================

Apache Traffic Server can reuse server sessions and tunnels improperly,
exposing data across client connections.

CVE:
CVE-2026-58157 - Improper server-session reuse can expose data across
client connections

Severity:
important

Reported By:
Apache Community
Omkhar Arasaratnam

Vendor:
The Apache Software Foundation

Version Affected:
ATS 9.0.0 to 9.2.14
ATS 10.0.0 to 10.1.3

Mitigation:
9.x users should upgrade to 9.2.15 or later versions
10.x users should upgrade to 10.1.4 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-58157

============================================================

Apache Traffic Server can crash from null dereferences and dangling
references in TLS and SNI handling.

CVE:
CVE-2026-58161 - Memory-safety errors in TLS and SNI handling can crash the
server

Severity:
important

Reported By:
Omkhar Arasaratnam

Vendor:
The Apache Software Foundation

Version Affected:
ATS 9.0.0 to 9.2.14
ATS 10.0.0 to 10.1.3

Mitigation:
9.x users should upgrade to 9.2.15 or later versions
10.x users should upgrade to 10.1.4 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-58161

============================================================

The Apache Traffic Server Cripts framework has out-of-bounds writes, path
traversal, and use-after-free errors.

CVE:
CVE-2026-58177 - Memory-safety and path-traversal errors in the Cripts
framework

Severity:
important

Reported By:
Apache Community
Omkhar Arasaratnam

Vendor:
The Apache Software Foundation

Version Affected:
ATS 10.0.0 to 10.1.3

Mitigation:
10.x users should upgrade to 10.1.4 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-58177

============================================================

Apache Traffic Server drops the per-stream buffer cap when dechunking
HTTP/2 or HTTP/3 responses, letting a slow client exhaust server memory.

CVE:
CVE-2026-65324 - HTTP/2 and HTTP/3 dechunking removes per-stream buffer
cap, allowing memory exhaustion

Severity:
important

Reported By:
Apache Community
Omkhar Arasaratnam

Vendor:
The Apache Software Foundation

Version Affected:
ATS 9.0.0 to 9.2.14
ATS 10.0.0 to 10.1.3

Mitigation:
9.x users should upgrade to 9.2.15 or later versions
10.x users should upgrade to 10.1.4 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-65324

============================================================

Apache Traffic Server terminates a chunked-extension quoted-string at CRLF,
so a smuggled request hidden in the quoted value is parsed as a second
request when ATS is a reverse proxy.

CVE:
CVE-2026-24033 - Chunked extension quoted-string parsing allows request
smuggling

Severity:
moderate

Reported By:
Rajat Raghav
Katsutoshi Ikenoya (LY Corporation)

Vendor:
The Apache Software Foundation

Version Affected:
ATS 9.0.0 to 9.2.14
ATS 10.0.0 to 10.1.3

Mitigation:
9.x users should upgrade to 9.2.15 or later versions
10.x users should upgrade to 10.1.4 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-24033

============================================================

Apache Traffic Server copies the client Host header into a fixed-size stack
buffer without a bound during redirect handling, so an over-long Host
header overflows the stack when redirect following is enabled.

CVE:
CVE-2026-33930 - Buffer overflow via Host field that has a long string value

Severity:
moderate

Reported By:
Pengpeng Hou

Vendor:
The Apache Software Foundation

Version Affected:
ATS 9.0.0 to 9.2.14
ATS 10.0.0 to 10.1.3

Mitigation:
9.x users should upgrade to 9.2.15 or later versions
10.x users should upgrade to 10.1.4 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-33930

============================================================

Apache Traffic Server compares the TLS SNI against the Host header with a
length taken from the Host alone, so any SNI that has the Host as a prefix
bypasses host-SNI policy.

CVE:
CVE-2026-41920 - SNI and Host comparison uses a one-sided length, allowing
host-SNI policy bypass

Severity:
moderate

Reported By:
JD Marsters (Bhut Red)
Apache Community

Vendor:
The Apache Software Foundation

Version Affected:
ATS 9.0.0 to 9.2.14
ATS 10.0.0 to 10.1.3

Mitigation:
9.x users should upgrade to 9.2.15 or later versions
10.x users should upgrade to 10.1.4 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-41920

============================================================

Apache Traffic Server allows request smuggling if chunked messages are
malformed.

CVE:
CVE-2026-57834 - Malformed chunked message body allows request smuggling

Severity:
moderate

Reported By:
Haruki Oyama
Katsutoshi Ikenoya (LY Corporation)
Apache Community

Vendor:
The Apache Software Foundation

Version Affected:
ATS 9.0.0 to 9.2.14
ATS 10.0.0 to 10.1.3

Mitigation:
9.x users should upgrade to 9.2.15 or later versions
10.x users should upgrade to 10.1.4 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-57834

============================================================

Apache Traffic Server mishandles integers while decoding HPACK/XPACK
headers, corrupting memory.

CVE:
CVE-2026-58152 - Integer-handling errors in HPACK/XPACK decoding corrupt
memory

Severity:
moderate

Reported By:
Apache Community
Javid Khan

Vendor:
The Apache Software Foundation

Version Affected:
ATS 9.0.0 to 9.2.14
ATS 10.0.0 to 10.1.3

Mitigation:
9.x users should upgrade to 9.2.15 or later versions
10.x users should upgrade to 10.1.4 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-58152

============================================================

Apache Traffic Server forwards HTTP/2 origin trailers to HTTP/1 clients
without proper chunked framing when converting HTTP/2 to HTTP/1.

CVE:
CVE-2026-58153 - HTTP/2 to HTTP/1 conversion forwards origin trailers to
clients unsafely

Severity:
moderate

Reported By:
Apache Community
Omkhar Arasaratnam

Vendor:
The Apache Software Foundation

Version Affected:
ATS 10.0.0 to 10.1.3

Mitigation:
10.x users should upgrade to 10.1.4 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-58153

============================================================

Apache Traffic Server mis-parses ports in URLs and userinfo, allowing
port-based access-control bypass.

CVE:
CVE-2026-58156 - URL and port parsing errors allow access-control bypass

Severity:
moderate

Reported By:
Apache Community
Omkhar Arasaratnam

Vendor:
The Apache Software Foundation

Version Affected:
ATS 9.0.0 to 9.2.14
ATS 10.0.0 to 10.1.3

Mitigation:
9.x users should upgrade to 9.2.15 or later versions
10.x users should upgrade to 10.1.4 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-58156

============================================================

Apache Traffic Server mishandles PROXY protocol input, truncating ports and
overflowing the stack.

CVE:
CVE-2026-58158 - PROXY protocol parsing has port truncation and a stack
overflow

Severity:
moderate

Reported By:
Apache Community

Vendor:
The Apache Software Foundation

Version Affected:
ATS 9.0.0 to 9.2.14
ATS 10.0.0 to 10.1.3

Mitigation:
9.x users should upgrade to 9.2.15 or later versions
10.x users should upgrade to 10.1.4 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-58158

============================================================

Apache Traffic Server can bypass IP access controls on UDS listeners and
through ACL matching errors.

CVE:
CVE-2026-58159 - Listener and ACL handling allow access-control bypass

Severity:
moderate

Reported By:
Apache Community
Omkhar Arasaratnam

Vendor:
The Apache Software Foundation

Version Affected:
ATS 9.0.0 to 9.2.14
ATS 10.0.0 to 10.1.3

Mitigation:
9.x users should upgrade to 9.2.15 or later versions
10.x users should upgrade to 10.1.4 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-58159

============================================================

Apache Traffic Server reads out of bounds while parsing DNS answers.

CVE:
CVE-2026-58160 - Out-of-bounds reads while parsing DNS responses

Severity:
moderate

Reported By:
Apache Community
Omkhar Arasaratnam

Vendor:
The Apache Software Foundation

Version Affected:
ATS 9.0.0 to 9.2.14
ATS 10.0.0 to 10.1.3

Mitigation:
9.x users should upgrade to 9.2.15 or later versions
10.x users should upgrade to 10.1.4 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-58160

============================================================

The Apache Traffic Server certifier plugin generates certificates based on
attacker-controlled client SNI.

CVE:
CVE-2026-58162 - Certifier plugin trusts client SNI when generating
certificates

Severity:
moderate

Reported By:
Omkhar Arasaratnam

Vendor:
The Apache Software Foundation

Version Affected:
ATS 9.0.0 to 9.2.14
ATS 10.0.0 to 10.1.3

Mitigation:
9.x users should upgrade to 9.2.15 or later versions
10.x users should upgrade to 10.1.4 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-58162

============================================================

Apache Traffic Server mishandles on-disk cache fields and object lifetimes,
corrupting state or crashing.

CVE:
CVE-2026-58163 - Cache deserialization and lifetime errors can corrupt
state or crash the server

Severity:
moderate

Reported By:
Apache Community
Omkhar Arasaratnam

Vendor:
The Apache Software Foundation

Version Affected:
ATS 9.0.0 to 9.2.14
ATS 10.0.0 to 10.1.3

Mitigation:
9.x users should upgrade to 9.2.15 or later versions
10.x users should upgrade to 10.1.4 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-58163

============================================================

Apache Traffic Server has use-after-free and time-of-check/time-of-use
errors in remap configuration handling.

CVE:
CVE-2026-58164 - Remap configuration lifetime and TOCTOU errors cause
use-after-free

Severity:
moderate

Reported By:
Apache Community
Omkhar Arasaratnam

Vendor:
The Apache Software Foundation

Version Affected:
ATS 9.0.0 to 9.2.14
ATS 10.0.0 to 10.1.3

Mitigation:
9.x users should upgrade to 9.2.15 or later versions
10.x users should upgrade to 10.1.4 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-58164

============================================================

Apache Traffic Server leaks memory when handling HostDB SRV records.

CVE:
CVE-2026-58175 - HostDB SRV handling leaks memory

Severity:
moderate

Reported By:
Omkhar Arasaratnam

Vendor:
The Apache Software Foundation

Version Affected:
ATS 9.0.0 to 9.2.14
ATS 10.0.0 to 10.1.3

Mitigation:
9.x users should upgrade to 9.2.15 or later versions
10.x users should upgrade to 10.1.4 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-58175

============================================================

The Apache Traffic Server ESI plugin can recurse without bound and fetch
attacker-controlled URLs.

CVE:
CVE-2026-58178 - ESI plugin allows uncontrolled recursion and server-side
request forgery

Severity:
moderate

Reported By:
Apache Community

Vendor:
The Apache Software Foundation

Version Affected:
ATS 9.0.0 to 9.2.14
ATS 10.0.0 to 10.1.3

Mitigation:
9.x users should upgrade to 9.2.15 or later versions
10.x users should upgrade to 10.1.4 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-58178

============================================================

The Apache Traffic Server regex_remap plugin overflows the stack and
integers from substitution input.

CVE:
CVE-2026-58179 - regex_remap plugin overflows the stack from attacker input

Severity:
moderate

Reported By:
Apache Community

Vendor:
The Apache Software Foundation

Version Affected:
ATS 9.0.0 to 9.2.14
ATS 10.0.0 to 10.1.3

Mitigation:
9.x users should upgrade to 9.2.15 or later versions
10.x users should upgrade to 10.1.4 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-58179

============================================================

The Apache Traffic Server txn_box plugin overflows the stack from
attacker-controlled input.

CVE:
CVE-2026-58180 - txn_box plugin overflows the stack from attacker input

Severity:
moderate

Reported By:
Apache Community

Vendor:
The Apache Software Foundation

Version Affected:
ATS 9.0.0 to 9.2.14
ATS 10.0.0 to 10.1.3

Mitigation:
9.x users should upgrade to 9.2.15 or later versions
10.x users should upgrade to 10.1.4 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-58180

============================================================

The Apache Traffic Server uri_signing and url_sig plugins can exhaust the
stack or crash on attacker input.

CVE:
CVE-2026-58181 - uri_signing and url_sig plugins can exhaust the stack or
crash

Severity:
moderate

Reported By:
Apache Community
Omkhar Arasaratnam

Vendor:
The Apache Software Foundation

Version Affected:
ATS 9.0.0 to 9.2.14
ATS 10.0.0 to 10.1.3

Mitigation:
9.x users should upgrade to 9.2.15 or later versions
10.x users should upgrade to 10.1.4 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-58181

============================================================

The Apache Traffic Server ts_lua plugin mishandles initialization,
transform context, and per-instance state.

CVE:
CVE-2026-58182 - ts_lua plugin has initialization and resource-handling
errors

Severity:
moderate

Reported By:
Omkhar Arasaratnam

Vendor:
The Apache Software Foundation

Version Affected:
ATS 9.0.0 to 9.2.14
ATS 10.0.0 to 10.1.3

Mitigation:
9.x users should upgrade to 9.2.15 or later versions
10.x users should upgrade to 10.1.4 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-58182

============================================================

The Apache Traffic Server prefetch plugin can crash when processing
attacker-influenced input.

CVE:
CVE-2026-58183 - prefetch plugin can crash on attacker-influenced input

Severity:
moderate

Reported By:
Omkhar Arasaratnam

Vendor:
The Apache Software Foundation

Version Affected:
ATS 9.0.0 to 9.2.14
ATS 10.0.0 to 10.1.3

Mitigation:
9.x users should upgrade to 9.2.15 or later versions
10.x users should upgrade to 10.1.4 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-58183

============================================================

The Apache Traffic Server header_rewrite plugin can crash or corrupt memory
during cookie operations and CIDR condition matching.

CVE:
CVE-2026-58184 - header_rewrite plugin cookie handling can corrupt memory

Severity:
moderate

Reported By:
Omkhar Arasaratnam

Vendor:
The Apache Software Foundation

Version Affected:
ATS 9.0.0 to 9.2.14
ATS 10.0.0 to 10.1.3

Mitigation:
9.x users should upgrade to 9.2.15 or later versions
10.x users should upgrade to 10.1.4 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-58184

============================================================

The Apache Traffic Server intercept plugin has a use-after-free.

CVE:
CVE-2026-58185 - Use-after-free in the intercept plugin

Severity:
moderate

Reported By:
Omkhar Arasaratnam

Vendor:
The Apache Software Foundation

Version Affected:
ATS 9.0.0 to 9.2.14
ATS 10.0.0 to 10.1.3

Mitigation:
9.x users should upgrade to 9.2.15 or later versions
10.x users should upgrade to 10.1.4 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-58185

============================================================

The Apache Traffic Server webp_transform plugin can decode unsafely and
serve mislabeled, cacheable responses.

CVE:
CVE-2026-58186 - webp_transform plugin decodes unsafely and mislabels
degraded responses

Severity:
moderate

Reported By:
Omkhar Arasaratnam

Vendor:
The Apache Software Foundation

Version Affected:
ATS 9.0.0 to 9.2.14
ATS 10.0.0 to 10.1.3

Mitigation:
9.x users should upgrade to 9.2.15 or later versions
10.x users should upgrade to 10.1.4 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-58186

============================================================

The Apache Traffic Server multiplexer plugin overruns its chunk-decode
buffer on upstream input, enabling denial of service.

CVE:
CVE-2026-58187 - Multiplexer plugin chunk decoder enables a denial of
service

Severity:
moderate

Reported By:
Omkhar Arasaratnam

Vendor:
The Apache Software Foundation

Version Affected:
ATS 9.0.0 to 9.2.14
ATS 10.0.0 to 10.1.3

Mitigation:
9.x users should upgrade to 9.2.15 or later versions
10.x users should upgrade to 10.1.4 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-58187

============================================================

Several Apache Traffic Server experimental plugins have memory-safety and
limit-bypass errors.

CVE:
CVE-2026-58188 - Memory-safety and limit-bypass errors across experimental
plugins

Severity:
moderate

Reported By:
Yon Harlicaj
Apache Community
Omkhar Arasaratnam

Vendor:
The Apache Software Foundation

Version Affected:
ATS 9.0.0 to 9.2.14
ATS 10.0.0 to 10.1.3

Mitigation:
9.x users should upgrade to 9.2.15 or later versions
10.x users should upgrade to 10.1.4 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-58188

============================================================

Apache Traffic Server allows redirect-limit bypass when plugins reset the
retry counter, enabling SSRF amplification.

CVE:
CVE-2026-58189 - Plugins resetting the redirect counter enable SSRF
amplification

Severity:
moderate

Reported By:
Omkhar Arasaratnam

Vendor:
The Apache Software Foundation

Version Affected:
ATS 9.0.0 to 9.2.14
ATS 10.0.0 to 10.1.3

Mitigation:
9.x users should upgrade to 9.2.15 or later versions
10.x users should upgrade to 10.1.4 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-58189

============================================================

Apache Traffic Server updates the HTTP/2 HPACK dynamic table before
confirming the header block encoded successfully, so an encode failure
leaves the encoder out of sync with the peer decoder and corrupts
subsequent header blocks on the connection.

CVE:
CVE-2026-65100 - HPACK encoder desynchronizes from the decoder after a
failed header encode

Severity:
moderate

Reported By:
Omkhar Arasaratnam
Apache Community

Vendor:
The Apache Software Foundation

Version Affected:
ATS 9.0.0 to 9.2.14
ATS 10.0.0 to 10.1.3

Mitigation:
9.x users should upgrade to 9.2.15 or later versions
10.x users should upgrade to 10.1.4 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-65100

============================================================

Apache Traffic Server reuses multiplexed HTTP/2 origin connections without
verifying the server certificate covers the new request hostname.

CVE:
CVE-2026-65325 - HTTP/2 multiplexed origin sessions are reused without
certificate re-verification

Severity:
moderate

Reported By:
Apache Community
Omkhar Arasaratnam

Vendor:
The Apache Software Foundation

Version Affected:
ATS 9.0.0 to 9.2.14
ATS 10.0.0 to 10.1.3

Mitigation:
9.x users should upgrade to 9.2.15 or later versions
10.x users should upgrade to 10.1.4 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-65325

============================================================

Users of all affected versions should upgrade to 9.2.15 or 10.1.4 as soon
as possible.

We would like to thank all reporters credited above, and the Apache
Traffic Server community, for identifying and helping resolve these
issues.

Regards,
Masakazu Kitajo
Apache Traffic Server PMC

----- End forwarded message -----
