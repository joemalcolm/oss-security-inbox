X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/23/4
Message-ID: <CADk+mPBTM+VcNFT=bKyOFLaXTEAB9esSbUXgJfSYEv5E6=7WYg@mail.gmail.com>
Date: Tue, 23 Jun 2026 17:15:54 +0200
From: Rainer Gerhards <rgerhards@...adiscon.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-55556: rsyslog imhttp Basic Auth heap overflow
Content-Type: text/plain; charset=utf-8

Hello,

We are publishing CVE-2026-55556 for a heap overflow in the optional
rsyslog imhttp input module.

imhttp is a contributed rsyslog plugin. It is not part of typical default
rsyslog installations, is seldom installed in production deployments, and is
not frequently packaged by distributions. Systems that do not build, package,
install, load, and configure imhttp are not affected.

The issue is in the HTTP Basic Authentication parser used by imhttp. Older
code used:

    auth->pworkbuf = calloc(0, len);

when decoding an oversized Basic Authentication header, instead of allocating
len bytes. If imhttp Basic Authentication was enabled, a remote client able to
reach the imhttp listener could trigger heap memory corruption. The practical
expected impact is denial of service; stronger impact would depend on platform,
allocator behavior, compiler options, and process hardening.

Affected configurations require all of the following:

- rsyslog built with the contributed imhttp module
- imhttp installed and available
- imhttp loaded and configured
- HTTP Basic Authentication enabled for the affected imhttp endpoint
- attacker access to that HTTP endpoint

Default rsyslog configurations do not load imhttp.

The affected upstream code path was removed in rsyslog 8.2604.0 by commit:

    acde2ba25ea33816694b787859f4a727a247b6d6
    imhttp: add route-scoped API key authentication

That change was primarily a feature enhancement and general imhttp auth
refactor adding route-scoped API key authentication and mixed auth selection.
As is now common in rsyslog development, nearby hardening was done as part of
that work. In this case, the old Basic Authentication parser and its dynamic
work-buffer allocation were replaced with bounded parsing, including a cap on
Basic Authentication header size.

For downstreams maintaining older branches that do not take the broader auth
refactor, the reporter-provided minimal targeted fix is:

diff --git a/contrib/imhttp/imhttp.c b/contrib/imhttp/imhttp.c
index d0b8a18b6..c0298856c 100644
--- a/contrib/imhttp/imhttp.c
+++ b/contrib/imhttp/imhttp.c
@@ -702,7 +702,7 @@ static int parse_auth_header(struct mg_connection
*conn, struct auth_s *auth) {
     size_t len = apr_base64_decode_len((const char *)src);
     auth->pworkbuf = auth->workbuf;
     if (len > sizeof(auth->workbuf)) {
-        auth->pworkbuf = calloc(0, len);
+        auth->pworkbuf = calloc(1, len);
         auth->workbuf_len = len;
     }
     len = apr_base64_decode(auth->pworkbuf, src);

Credit: reported by 0xseiryuu, who also provided the minimal targeted fix
shown above.

References:

- CVE-2026-55556
- GHSA-947w-69ph-mc2r
- upstream refactor:
  https://github.com/rsyslog/rsyslog/commit/acde2ba25ea33816694b787859f4a727a247b6d6

Regards,
Rainer
