X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/02/2
Message-ID: <nr1op7o6-2556-3933-7281-o5p49r53691q@unkk.fr>
Date: Wed, 2 Sep 2026 08:22:10 +0200 (CEST)
From: Daniel Stenberg <daniel@...x.se>
To: curl security announcements -- curl users <curl-users@...ts.haxx.se>,  curl-announce@...ts.haxx.se, libcurl hacking <curl-library@...ts.haxx.se>,  oss-security@...ts.openwall.com
Subject: [SECURITY ADVISORIES] curl 8.22.0
Content-Type: text/plain; charset=utf-8

Hello,

In association with curl 8.22.0 we announce these ten security advisories 
addressing separate security vulneraiblities in curl, libcurl and wcurl.

We recommend you study the details in our write-ups. We try hard to explain 
them in detail and include all sufficient details.

All new curl/libcurl are listed here: https://curl.se/docs/vuln-8.21.0.html

CVE-2026-13608: OpenLDAP SASL authentication bypass

CVE-2026-18924: HTTP/2 server push UAF

CVE-2026-19931: Negotiate ambient user conn reuse

CVE-2026-80229: OpenSSL provider use-after-free

CVE-2026-80230: OpenSSL pinning bypass

CVE-2026-80231: native CA store conn reuse

CVE-2026-80255: secure cookie attribute bypass with tab

CVE-2026-82208: wolfSSL CA-cache hit overrides callback

CVE-2026-82209: domain-scoped PSL domain cookie

CVE-2026-80256: wcurl backslash bypass

The wcurl problem is documented here:

   https://curl.se/docs/CVE-2026-80256.html

-- 

  / daniel.haxx.se || https://rock-solid.curl.dev
