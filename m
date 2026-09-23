X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/23/12
Message-ID: <e88730ba-632d-96d1-74d3-a6ab51a5a35c@apache.org>
Date: Wed, 23 Sep 2026 08:24:43 +0000
From: Joerg Hoh <joerghoh@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-91852: Apache Sling XSS: CWE-79 multiple raw-string break-outs and ReDOS in XSSImpl 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Sling XSS before 2.4.12

Description:

Improper neutralization of input during web page generation ('cross-site scripting') vulnerability in Apache Sling XSS.



This issue affects Apache Sling XSS: before 2.4.12.



Users are recommended to upgrade to version 2.4.12, which fixes the issue.

This issue is being tracked as https://issues.apache.org/jira/browse/SLING-13334 

Credit:

Apache Sling would like to thank the github user n0mi1k, the group of Mohsen Iranmanesh, Sina Moradi Sabet, Sina Marefat, Ali Javidi Ghasr and Mohammad A. Tayebi and The Apache Software Foundation for reporting this issue (finder)

References:

https://sling.apache.org/news.html
https://sling.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-91852
https://issues.apache.org/jira/browse/https://issues.apache.org/jira/browse/SLING-13334

