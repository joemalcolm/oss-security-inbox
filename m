X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/09/02/4
Message-ID: <6ab86c25-f72e-7f27-ac29-54ce9b9128f8@apache.org>
Date: Fri, 2 Sep 2022 08:17:05 +0200
From: Jacques Le Roux <jleroux@...che.org>
To: oss-security@...ts.openwall.com
Subject: Apache OFBiz - Server-Side Template Injection (CVE-2022-25813)
Content-Type: text/plain; charset=utf-8

Severity:
High (SSTI then possible RCE)

Vendor:
The Apache Software Foundation

Versions Affected:
OFBiz versions prior to 18.12.06

Description:
As an ecommerce anonymous client, an external attacker can insert a malicious
content in a message “Subject” field from the "Contact us" page. Then a party
manager needs to list the communications in the party component to activate
the SSTI. A RCE is then possible.

Mitigation:
Upgrade to at least 18.12.06
or apply patches at https://issues.apache.org/jira/browse/OFBIZ-12594

Credit:
Matei "Mal" Badanoiu

References:
http://ofbiz.apache.org/download.html#vulnerabilities

