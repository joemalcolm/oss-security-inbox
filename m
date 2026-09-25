X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/25/20
Message-ID: <1225d3ec-119d-fbba-12c3-72a0e1384ed3@apache.org>
Date: Fri, 25 Sep 2026 20:16:41 +0000
From: "David M. Johnson" <snoopdave@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-82387: Apache Roller: Stored cross-site scripting via uploaded media content type 
Content-Type: text/plain; charset=utf-8

Severity: Moderate 
    CVSS 3.1: 5.4 (medium) CVSS:3.1/AV:N/AC:L/PR:L/UI:R/S:C/C:L/I:L/A:N

Affected versions:

- Apache Roller 6.1.5

Description:

Improper Neutralization of Input During Web Page Generation ('Cross-site Scripting') in Apache Roller 6.1.5 allows a user with media-upload rights to store active content on Roller's origin, because the media upload feature trusts the upload-supplied content type and serves the stored file back with that type. A victim who opens the uploaded file executes the stored script. Media uploads are disabled by default; only installations that enable them are affected, and the shipped type restrictions do not block active content once uploads are on. Users are recommended to upgrade to Apache Roller 6.1.6 or later, which derives the stored type from file content and serves non-image media as a download.

Credit:

m4dn355 (finder)

References:

https://github.com/apache/roller/pull/174
https://roller.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-82387

