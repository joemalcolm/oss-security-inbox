X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/07/18/3
Message-ID: <CAEWfVJmX8X8qNOJyRRi=HVzhNAUC3eFvVP2jJTZEyYw=9S70GA@mail.gmail.com>
Date: Tue, 18 Jul 2017 12:23:32 +0200
From: Bertrand Delacretaz <bdelacretaz@...che.org>
To: dev <dev@...ng.apache.org>, users <users@...ng.apache.org>,  "security@...ng.apache.org" <security@...ng.apache.org>, oss-security@...ts.openwall.com,  bugtraq@...urityfocus.com
Subject: CVE-2016-5394 : Apache Sling XSS vulnerability
Content-Type: text/plain; charset=utf-8

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
Sling XSS Protection API 1.0.8

Description:
The encoding done by the XSSAPI.encodeForJSString() method is not
restrictive enough and for some input patterns allows script tags to
pass through unencoded, leading to potential XSS vulnerabilities.

Mitigation:
Users should upgrade to version 1.0.12 or later of the XSS Protection
API module.
