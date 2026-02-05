Received: (qmail 14147 invoked by uid 550); 5 Feb 2026 03:46:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14104 invoked from network); 5 Feb 2026 03:46:16 -0000
Date: Wed, 4 Feb 2026 22:46:07 -0500
From: Jan Schaumann <jschauma@netmeister.org>
To: oss-security@lists.openwall.com
Message-ID: <aYQSf3Dg0UJ83IXz@netmeister.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Subject: [oss-security] NGINX < 1.29.5, 1.28.2 MitM injection CVE-2026-1642

I don't believe F5 / the NGINX team is in the habit of
posting security announcements here, so:

https://my.f5.com/manage/s/article/K000159824

Partial contents of that advisory below:

Security Advisory Description

A vulnerability exists in NGINX OSS and NGINX Plus
when configured to proxy to upstream Transport Layer
Security (TLS) servers. An attacker with a
man-in-the-middle (MITM) position on the upstream
server side—along with conditions beyond the
attacker's control—may be able to inject plain text
data into the response from an upstream proxied
server. (CVE-2026-1642)

Impact

The vulnerability may allow an unauthenticated
attacker with an MITM position on the upstream server
side to inject responses which may be sent to clients.

NGINX Open Source
Versions known to be vulnerable: 1.3.0 - 1.29.4

Fixes introduced in: 1.29.5, 1.28.2

Severity/CVSS score:
Medium/5.9 (CVSS v3.1)
CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:H/A:N

High/8.2 (CVSS v4.0)
CVSS:4.0/AV:N/AC:L/AT:P/PR:N/UI:N/VC:N/VI:H/VA:N/SC:N/SI:N/SA:N


Vulnerable component or feature: NGINX proxying to
TLS-enabled HTTP (HTTP 1.x and HTTP/2), gRPC, and
uWSGI backends

Mitigation: None

This issue was discovered internally by F5.

---

Release notes on GitHub:

https://github.com/nginx/nginx/releases/tag/release-1.29.5
https://github.com/nginx/nginx/releases/tag/release-1.28.2


The actual code fix appears to be:
https://github.com/nginx/nginx/pull/1114/changes/376c3739b633e4ddac8ecf59d72e43b0b9151c51

I don't think I've seen a GitHub Security Advisory.

