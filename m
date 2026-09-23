X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/23/23
Message-ID: <77230e54-d0b8-44e4-9f76-0028c20a7e0c@apache.org>
Date: Wed, 23 Sep 2026 12:20:02 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-77762: Apache Tomcat: Stale HPACK emitter injects trailers into recycled pooled Request
Content-Type: text/plain; charset=utf-8

Severity: low

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.25
- Apache Tomcat 10.1.0-M1 through 10.1.59
- Apache Tomcat 9.0.39 through 9.0.121
- Apache Tomcat 8.56.59 through 8.5.100
- Apache Tomcat through 7.0.109 unaffected

Description:

Concurrent Execution using Shared Resource with Improper Synchronization 
('Race Condition') vulnerability in Apache Tomcat allows an attacker to 
inject trailer fields into another HTTP/2 request.



This issue affects Apache Tomcat: from 11.0.0-M1 through 11.0.25, from 
10.1.0-M1 through 10.1.59, from 9.0.39 through 9.0.121.



The following versions were EOL at the time the CVE was created but are
known to be affected: from 8.5.59 through 8.5.100. Other unsupported 
versions may also be affected.




Users are recommended to upgrade to version 11.0.26, 10.1.60, 9.0.122, 
which fix the issue.

References:

https://lists.apache.org/thread/y5r9fvjo7ol24mkoyoc0st8bqrfyqcyn
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-77762
