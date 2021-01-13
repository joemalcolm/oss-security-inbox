X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/01/13/6
Message-ID: <1997272077.1689973.1610560284705@mail.yahoo.com>
Date: Wed, 13 Jan 2021 17:51:24 +0000 (UTC)
From: "fanningpj@...che.org" <fanningpj@...che.org>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: CVE-2021-23926: XMLBeans XML Entity Expansion
Content-Type: text/plain; charset=utf-8

Description:

The XML parsers used by XMLBeans up to version 2.6.0 did not set the properties needed to protect the user from malicious XML input. Vulnerabilities include possibilities for XML Entity Expansion attacks.

Affects XMLBeans up to and including v2.6.0.


This issue is being tracked as https://issues.apache.org/jira/browse/XMLBEANS-517References:

https://poi.apache.org/
https://issues.apache.org/jira/browse/XMLBEANS-517
