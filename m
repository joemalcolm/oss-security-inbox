X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/07/18/2
Message-ID: <CAEWfVJkLfoDJ-VjddTo_Vb70q4M+tN2GvpabRDR_iPdCAFtY1Q@mail.gmail.com>
Date: Tue, 18 Jul 2017 12:22:03 +0200
From: Bertrand Delacretaz <bdelacretaz@...che.org>
To: dev <dev@...ng.apache.org>, users <users@...ng.apache.org>,  "security@...ng.apache.org" <security@...ng.apache.org>, oss-security@...ts.openwall.com,  bugtraq@...urityfocus.com
Subject: CVE-2016-6798 : Apache Sling XXE vulnerability
Content-Type: text/plain; charset=utf-8

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
Sling XSS Protection API 1.0.0

Description:
The method XSS.getValidXML() uses an insecure SAX parser to validate
the input string, which allows for XXE [0] attacks in all scripts
which use this method to validate user input, potentially allowing an
attacker to read sensitive data on the filesystem, perform
same-site-request-forgery (SSRF), port-scanning behind the firewall or
DoS the application.

[0] https://www.owasp.org/index.php/XML_External_Entity_(XXE)_Processing

Mitigation:
Users should upgrade to version 1.0.12 or later of the XSS Protection
API module.
