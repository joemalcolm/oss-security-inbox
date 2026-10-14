X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/14/3
Message-ID: <q63rq4o4-13o0-s37n-2qpq-6r75o9opo0p0@unkk.fr>
Date: Wed, 14 Oct 2026 08:07:46 +0200 (CEST)
From: Daniel Stenberg <daniel@...x.se>
To: curl security announcements -- curl users <curl-users@...ts.haxx.se>,  curl-announce@...ts.haxx.se, libcurl hacking <curl-library@...ts.haxx.se>,  oss-security@...ts.openwall.com
Subject: [SECURITY ADVISORIES] curl 8.23.0
Content-Type: text/plain; charset=utf-8

Hello,

Today the curl project publishes a set of twenty-four separate vulnerabilities
in association with the release of curl 8.23.0.

All vulnerabilities have their fixes mentioned in text and link to the
corresponding commit that fixes the problem.

Detailed information about all vulnerabilities are available on
https://curl.se/docs/security.html

One vulnerability is considered severity HIGH:

CVE-2026-92392: HTTP/2 upload Use-After-Free

The other vulnerabilities are considered severity LOW:

CVE-2026-107929: local interface connection reuse mixup
CVE-2026-107928: info leak uploading over WebSockets with GnuTLS
CVE-2026-94266: password leak in CURLINFO_EFFECTIVE_URL
CVE-2026-94265: Authorization: Negotiate sent to foreign origin
CVE-2026-92391: curl_mime_free stack overflow by recursion
CVE-2026-92390: -J no-clobber guarantee bypassed with 103 early hints
CVE-2026-92389: TFTP direction confusion
CVE-2026-92388: FTP wildcard write callback mixup
CVE-2026-92387: never-ending loop via server response omission
CVE-2026-92386: server-set cookie aborts cookie jar load
CVE-2026-87866: wolfSSL public-key pinning bypass
CVE-2026-87865: knownhost callback mismatches key as missing
CVE-2026-87864: IMAP APPEND plus CRLF conversion command injection
CVE-2026-87863: HSTS response erases persisted entries
CVE-2026-87862: HSTS cache import drops longer-lived child
CVE-2026-87861: cross-origin reuse of a Negotiate connection
CVE-2026-86415: auto client cert connection reuse mixup
CVE-2026-86414: leaking host credentials to HTTP proxy
CVE-2026-86413: Negotiate credentials sent to redirected origin
CVE-2026-86412: server-set cookie erases cookie jar
CVE-2026-86411: FTP connection reuse inherits client-certificate
CVE-2026-86410: redirect to SFTP or SCP bypasses host verification
CVE-2026-86409: stale SigV4 headers sent unintended

-- 

  / daniel.haxx.se || https://rock-solid.curl.dev
