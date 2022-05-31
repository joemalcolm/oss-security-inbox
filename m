X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/05/31/2
Message-ID: <ef0d3598-74a5-7981-af98-c05407457f68@apache.org>
Date: Tue, 31 May 2022 13:04:24 +0000
From: Tim Allison <tallison@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-30973: Apache Tika: Missing fix for CVE-2022-30126 in 1.28.2 
Content-Type: text/plain; charset=utf-8

Description:

We failed to apply the fix for CVE-2022-30126 to the 1.x branch in the 1.28.2 release.  In Apache Tika, a regular expression in the StandardsText class, used by the StandardsExtractingContentHandler could lead to a denial of service caused by backtracking on a specially crafted file. This only affects users who are running the StandardsExtractingContentHandler, which is a non-standard handler.  This is fixed in 1.28.3.

Mitigation:

Avoid using the StandardsExtractingContentHandler or upgrade to Tika 1.28.3 or 2.4.0

Credit:

This issue was reported by Cathy Hu, SUSE Software Solutions Germany GmbH.

