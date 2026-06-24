X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/24/1
Message-ID: <r52q52qp-rpn7-7p50-q2n0-442n2s8oq555@unkk.fr>
Date: Wed, 24 Jun 2026 08:08:57 +0200 (CEST)
From: Daniel Stenberg <daniel@...x.se>
To: curl security announcements -- curl users <curl-users@...ts.haxx.se>,  curl-announce@...ts.haxx.se, libcurl hacking <curl-library@...ts.haxx.se>,  oss-security@...ts.openwall.com
Subject: [SECURITY ADVISORIES] for curl 8.21.0
Content-Type: text/plain; charset=utf-8

Hello friends,

In association with the curl release 8.21.0 that we announced just minutes 
ago, we publish no less than eighteen new curl vulnerabilities.

Because of the large amount of issues, sending individual emails for each one 
would be a bit much so instead I list them all below and I link to each 
issue's individual explainer page.

CVE, title and severity. Listed here in numerical order. The order in which 
they were reported to us.

CVE-2026-8286: wrong STARTTLS connection reuse (LOW)
   https://curl.se/docs/CVE-2026-8286.html

CVE-2026-8458: wrong reuse for different services (LOW)
   https://curl.se/docs/CVE-2026-8458.html

CVE-2026-8924: traling dot domain super cookie (LOW)
   https://curl.se/docs/CVE-2026-8924.html

CVE-2026-8925: SASL double-free (MEDIUM)
   https://curl.se/docs/CVE-2026-8925.html

CVE-2026-8926: password leak with netrc and user in URL (LOW)
   https://curl.se/docs/CVE-2026-8926.html

CVE-2026-8927: env-set cross-proxy Digest auth state leak (MEDIUM)
   https://curl.se/docs/CVE-2026-8927.html

CVE-2026-8932: incomplete mTLS config matching in conn reuse (LOW)
   https://curl.se/docs/CVE-2026-8932.html

CVE-2026-9079: stale proxy password leak (MEDIUM)
   https://curl.se/docs/CVE-2026-9079.html

CVE-2026-9080: UAF after pause in socket callback (LOW)
   https://curl.se/docs/CVE-2026-9080.html

CVE-2026-9545: exposing HTTP/3 early data (LOW)
   https://curl.se/docs/CVE-2026-9545.html

CVE-2026-9546: sending old referer (LOW)
   https://curl.se/docs/CVE-2026-9546.html

CVE-2026-9547: SSH improper host validation (LOW)
   https://curl.se/docs/CVE-2026-9547.html

CVE-2026-10536: HTTP/2 stream-dependency tree UAF (LOW)
   https://curl.se/docs/CVE-2026-10536.html

CVE-2026-11352: QUIC zero-length UDP datagrams busy-loop (LOW)
   https://curl.se/docs/CVE-2026-11352.html

CVE-2026-11564: Native CA trust persist (LOW)
   https://curl.se/docs/CVE-2026-11564.html

CVE-2026-11586: WS Auto-PONG memory exhaustion (LOW)
   https://curl.se/docs/CVE-2026-11586.html

CVE-2026-11856: cross-origin Digest auth state leak (MEDIUM)
   https://curl.se/docs/CVE-2026-11856.html

CVE-2026-12064: proto-default skips SSH verification (LOW)
   https://curl.se/docs/CVE-2026-12064.html

-- 

  / daniel.haxx.se || https://rock-solid.curl.dev
