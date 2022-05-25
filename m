X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/05/25/1
Message-ID: <060f9c47-1f5d-d2f2-1bb6-6cc8ec0afc6a@census-labs.com>
Date: Wed, 25 May 2022 13:46:21 +0300
From: Dimitrios Glynos <dimitris@...sus-labs.com>
To: oss-security@...ts.openwall.com
Subject: multiple vulnerabilities in radare2
Content-Type: text/plain; charset=utf-8

Hello all,

Angelos T. Kalaitzidis of CENSUS had identified three vulnerabilities in radare2:
- A null pointer dereference bug (CVE-2022-0419, fixed in version 5.6.0)
- A heap buffer overflow bug (CVE-2021-44975, fixed in version 5.6.0)
- A null pointer dereference bug (CVE-2021-44974, fixed in version 5.5.4)

They're all triggerable by having radare2 process a crafted binary.

There's more information about these issues here:
https://census-labs.com/news/2022/05/24/multiple-vulnerabilities-in-radare2/

We're mostly sending this for CVE-to-patch coordination purposes for distros, 
as the issues have been addressed some time ago (back in February)
by the upstream project.

Kind regards,

Dimitris



Download attachment "signature.asc" of type "application/pgp-signature" (834 bytes)
