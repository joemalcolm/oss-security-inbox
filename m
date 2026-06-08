X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/08/3
Message-ID: <d0550f78-f98a-45b9-b872-f1c45285e9a1@pipping.org>
Date: Mon, 8 Jun 2026 17:29:11 +0200
From: Sebastian Pipping <sebastian@...ping.org>
To: oss-security@...ts.openwall.com
Subject: offlineimap 8.0.3 fixes CVE-2020-37248 (STARTTLS stripping)
Content-Type: text/plain; charset=utf-8

Hello oss-security,


just a quick note that offlineimap 8.0.3 fixes CVE-2020-37248
"STARTTLS stripping":

   OfflineIMAP before 8.0.3 trusts the server with their STARTTLS
   capability prior to authentication, which allows STRIPTLS/man-in-the-
   middle attacks, taking over the connection and extracting account
   credentials in cleartext.

The key fix commit is…

  
https://github.com/OfflineIMAP/offlineimap3/commit/46505c53ef995455d66c685f9ec3ff6ea93dbb74

…and issues…

- https://github.com/OfflineIMAP/offlineimap3/issues/222
- https://github.com/OfflineIMAP/offlineimap/issues/669

…are related. The issue was first reported in 2020, hence CVE-2020-*.

Best



Sebastian

