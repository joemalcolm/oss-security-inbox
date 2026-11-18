X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/18/16
Message-ID: <av4MKXBseGwe-Upp@netmeister.org>
Date: Wed, 18 Nov 2026 15:35:53 -0500
From: Jan Schaumann <jschauma@...meister.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-123633, CVE-2026-123007: nginx RCE via HTTP/2
Content-Type: text/plain; charset=utf-8

Wiz.io published two RCE vulnerabilities in nginx's
HTTP/2 handling:

https://www.wiz.io/blog/nginx-http2-rce-vulnerabilities

CVE-2026-123633, HTTP/2 connection use-after-free
CVE-2026-123007 HTTP/2 send_window integer underflow

F5's security advisory is at
https://my.f5.com/manage/s/article/K000164058
https://my.f5.com/manage/s/article/K000163928
https://my.f5.com/manage/s/article/K000163926

The main F5 advisory includes a few additional
vulnerabilities, but the two RCEs are making the
internet hype cycle rounds today under the (*eyeroll*)
names "nginx2shell" and/or "nginx2root"
(https://nginx2root.com/).

(The "2root" moniker is particularly annoying because
it relies on an independent LPE, which, well, sure, if
you assume that you have an LPE, then _any_ RCE is a
remote root, but ok.)

Both RCEs require HTTP/2 to be enabled, so turning
that off (`http2 off`) is an effective mitigation.


nginx.org says

"nginx-1.30.7 stable and nginx-1.31.9 mainline
versions have been released, with vulnerability fixes
for use-after-free in resolver (CVE-2026-123634),
memory corruption in HTTP/2 flow control
(CVE-2026-123007), use-after-free in HTTP/3
(CVE-2026-121810), use-after-free in HTTP/2
(CVE-2026-123633), infinite loop while reading client
request body over TLS 1.3 (CVE-2026-118899),
use-after-free in mail proxy module (CVE-2026-113425),
NULL pointer dereference when using PROXY protocol
version 2 (CVE-2026-120993), buffer overflow when
using alias with try_files (CVE-2026-125283), SNI
bypass in client certificate validation in stream
module (CVE-2026-120967), and insufficient validation
in stream ssl_preread module (CVE-2026-123640).

https://nginx.org/en/security_advisories.html

(I'll note again that I find it suboptimal to have a
single page for all CVEs with no clear identification
of what date they were announced; I also see no good
way of keeping up to date with nginx security
announcements as the project does not seem to maintain
mailing lists any longer (e.g.,
http://mailman.nginx.org/pipermail/nginx-announce/).)

The latest open source release is here:
https://github.com/nginx/nginx/releases/tag/release-1.31.9

Full set of changes from previous release:
https://github.com/nginx/nginx/compare/release-1.31.8...release-1.31.9



Cribbing from the Wiz.io advisory:

" Both vulnerabilities require HTTP/2 to be enabled,
but their additional requirements differ.
CVE-2026-123633 affects reverse-proxy processing when
available connection slots run low. CVE-2026-123007
can also affect NGINX serving content directly, as
demonstrated in our testing over HTTPS on 64-bit
systems. Typical memory safety mitigations such as
ASLR do not protect against these issues, as attackers
can use either vulnerabilities for memory read access
prior to code execution.

[...]

Any exploit assumes the attacker is able to
communicate directly with the affected NGINX server.
CDNs and WAFs that terminate HTTP/2 may mitigate parts
of the exploit by not reflecting the exact payload
back to the underlying NGINX server. This depends on
implementation.

Specifically, CVE-2026-123007 requires the attacker to
send a large number of WINDOW_UPDATE records to
increase it to an arbitrary value. Detection rules
covering long standing HTTP/2 connections sending
large amounts of data may hint at an attack associated
with this vulnerability. CVE-2026-123633 has different
exploitation constraints and is more likely to be
exploited when NGINX is configured in proxy
configuration."


