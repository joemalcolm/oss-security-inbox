X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/03/14/1
Message-ID: <13a710ca-0f67-4c77-dc3a-61091d14a77f@apache.org>
Date: Mon, 14 Mar 2022 10:06:24 +0000
From: Stefan Eissing <icing@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-23943: Apache HTTP Server: mod_sed: Read/write beyond bounds 
Content-Type: text/plain; charset=utf-8

Severity: important

Description:

Out-of-bounds Write vulnerability in mod_sed of Apache HTTP Server allows an attacker to overwrite heap memory with possibly attacker provided data.

This issue affects Apache HTTP Server 2.4 version 2.4.52 and prior versions.

Credit:

Ronald Crane (Zippenhop LLC)

