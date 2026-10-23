X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/23/26
Message-ID: <atu1DUiEKzMjZGnL@netmeister.org>
Date: Fri, 23 Oct 2026 15:27:09 -0400
From: Jan Schaumann <jschauma@...meister.org>
To: oss-security@...ts.openwall.com
Subject: nginx RCEs CVE-2026-93479, CVE-2026-15176
Content-Type: text/plain; charset=utf-8

F5 has published a security advisory:
https://my.f5.com/manage/s/article/K000163408

This includes issues in the Open Source nginx:
https://nginx.org/en/security_advisories.html

That page makes it hard to identify which issues were
published when, though, and I don't believe the team
posts them here.

The following appear to impact open source nginx prior
to  1.31.7 or 1.30.6.  At least two of them include a
possibility of RCE.


Use-after-free when using asynchronous file I/O (AIO)
Severity: medium
https://my.f5.com/manage/s/article/K000162608
CVE-2026-97205

NGINX Plus and NGINX Open Source have a vulnerability
in the ngx_http_core_module module. When asynchronous
file I/O (AIO) is enabled in certain configurations,
processing a Server Side Includes (SSI) page
containing include virtual commands may trigger a
Use-After-Free (UAF) in the NGINX worker process. This
may cause memory corruption or cause a worker process
to terminate unexpectedly. Additionally, attackers can
execute code on systems with Address Space Layout
Randomization (ASLR) disabled or when the attacker can
bypass ASLR. 


Session forgery when using TLS session tickets
Severity: medium
https://my.f5.com/manage/s/article/K000162606
CVE-2026-97629

When NGINX Plus or NGINX Open Source is configured
with ssl_session_cache shared:<name>:<size> without an
explicit ssl_session_ticket_key file directive to
automatically rotate SSL session ticket keys, a remote
unauthenticated attacker is able to forge client SSL
sessions in a non-deterministic manner that is beyond
the attacker's control. An attacker could leverage
this vulnerability to bypass verification of client
certificates.


Request body injection in HTTP/3
Severity: medium
https://www.cve.org/CVERecord?id=CVE-2026-95101
CVE-2026-95101

Description NGINX Plus and NGINX Open Source have a
vulnerability in the ngx_http_v3_module module. When
using HTTP/3 with proxy_request_buffering on
directive, an unauthenticated attacker may be able to
inject data in the proxied request. Impact This
vulnerability may allow remote attackers to inject
data in the proxied request.  There is no control
plane exposure; this is a data plane issue only.


Buffer overflow in script evaluation
Severity: medium
https://my.f5.com/manage/s/article/K000162607
CVE-2026-93479

A vulnerability exists in NGINX Plus and NGINX Open
Source when a map directive uses regex matching and
the root directive or access log format references the
map's regex capture variables before referencing the
map output variable. Alternatively, the same result
could be achieved by using a non-cacheable variable in
a string expression under certain conditions. An
unauthenticated attacker along with conditions beyond
their control can exploit this vulnerability by
sending crafted HTTP requests. This may cause a heap
buffer overflow in the NGINX worker process leading to
a restart. Additionally, attackers can execute code on
systems with Address Space Layout Randomization (ASLR)
disabled or when the attacker can bypass ASLR.


Buffer overflow when using alias with rewrite
Severity: medium
https://my.f5.com/manage/s/article/K000162416
CVE-2026-15176

A vulnerability exists in NGINX Plus and NGINX Open
Source when a location is configured that uses the
alias directive together with rewrite and a set or
return directive referencing the $request_filename
variable. Alternatively, the same result could be
achieved when the $request_filename variable is used
in an access log_format directive. An unauthenticated
attacker along with conditions beyond their control
can exploit this vulnerability by sending crafted HTTP
requests. This may cause a heap buffer overflow in the
NGINX worker process leading to a restart.
Additionally, attackers can execute code on systems
with Address Space Layout Randomization (ASLR)
disabled or when the attacker can bypass ASLR.

