X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/04/12/1
Message-ID: <31ac7d5a-c4fa-44f2-21d5-139851806bb0@lehmi.de>
Date: Fri, 12 Apr 2019 06:44:41 +0200
From: Andreas Lehmkuehler <andreas@...mi.de>
To: oss-security@...ts.openwall.com
Subject: [SECURITY] CVE-2019-0228 Apache PDFBox XML External Entity vulnerability
Content-Type: text/plain; charset=utf-8

CVE-2019-0228: Apache PDFBox XML External Entity vulnerability

Severity: Important


Vendor:
The Apache Software Foundation

Versions Affected:
Apache PDFBox 2.0.14


Description:
Apache PDFBox 2.0.14 does not properly initialize the XML parser, which allows 
context-dependent attackers to conduct XML External Entity (XXE) attacks via a 
crafted XFDF.

Mitigation:
Upgrade to Apache PDFBox 2.0.15

Credit:
This issue was discovered by Kurt Boberg from DocuSign

[1] https://www.owasp.org/index.php/XML_External_Entity_(XXE)_Processing
