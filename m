X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/05/16/3
Message-ID: <072956cd-6dcf-5053-b666-e1254a85a20d@apache.org>
Date: Mon, 16 May 2022 16:45:13 +0000
From: Tim Allison <tallison@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-30126: Apache Tika Regular Expression Denial of Service in Standards Extractor 
Content-Type: text/plain; charset=utf-8

Severity: low

Description:

A regular expression in our StandardsText class, used by the StandardsExtractingContentHandler could lead to a denial of service caused by backtracking on a specially crafted file. This only affects users who are running the StandardsExtractingContentHandler, which is a non-standard handler.  This is fixed in 1.28.2 and 2.4.0

Mitigation:

Upgrade to 1.28.2 or 2.4.0

Credit:

This issue was discovered and reported by the CodeQL team members [@atorralba (Tony Torralba)](https://github.com/atorralba) and [@joefarebrother (Joseph Farebrother)](https://github.com/joefarebrother).

