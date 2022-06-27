X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/06/27/5
Message-ID: <98a8ea54-34b2-8826-b198-19d5a1acbbf6@apache.org>
Date: Mon, 27 Jun 2022 20:30:57 +0000
From: Tim Allison <tallison@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-33879: Apache Tika: Incomplete fix and new regex DoS in StandardsExtractingContentHandler 
Content-Type: text/plain; charset=utf-8

Severity: low

Description:

The initial fixes in CVE-2022-30126 and CVE-2022-30973 for regexes in the StandardsExtractingContentHandler were insufficient, and we found a separate, new regex DoS in a different regex in the StandardsExtractingContentHandler. These are now fixed in 1.28.4 and 2.4.1.

Credit:

This incomplete fix was discovered and reported by the CodeQL team member [@atorralba (Tony Torralba)](https://github.com/atorralba) and [@jarlob (Jaroslav Lobačevski)](https://github.com/jarlob) from Github Security Lab.  The new ReDos was discovered by the Apache Tika team.

