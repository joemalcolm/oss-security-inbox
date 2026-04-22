X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/04/22/5
Message-ID: <CA+v+6sHAEKPnkign1BLuFpz-7D=MeWb51FrwQtVyA48DnfgAiQ@mail.gmail.com>
Date: Wed, 22 Apr 2026 08:47:31 +0200
From: Arturo Bernal <abernal@...che.org>
To: Apache Security Team <security@...che.org>, oss-security@...ts.openwall.com,  HttpComponents Project <dev@...apache.org>,  HttpClient User Discussion <httpclient-users@...apache.org>, xx@....ee
Subject: [SECURITY] CVE-2026-40542: Apache HttpClient 5.6 SCRAM-SHA-256 mutual authentication bypass
Content-Type: text/plain; charset=utf-8

Severity: important

Affected versions:

   - Apache HttpClient 5.6

Description:
A missing critical step in authentication in Apache HttpClient 5.6 may
allow an attacker to cause the client to accept SCRAM-SHA-256
authentication without proper mutual authentication verification.


Users are recommended to upgrade to Apache HttpClient 5.6.1. which corrects
this issue.

Credit:
This issue was reported by Rasmus Moorats.


References:
https://hc.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-40542

https://github.com/apache/httpcomponents-client/commit/726eac2323d370435d8afca1e0540aa099927f18




Arturo

