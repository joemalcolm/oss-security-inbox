X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/02/24/1
Message-ID: <000901d70aa4$f97e3070$ec7a9150$@gmail.com>
Date: Wed, 24 Feb 2021 12:02:49 -0000
From: "Simon Steiner" <simonsteiner1984@...il.com>
To: <oss-security@...ts.openwall.com>
Subject: [CVE-2020-11988] Apache XML Graphics Commons SSRF vulnerability
Content-Type: text/plain; charset=utf-8

CVE-2020-11988:
        Apache XML Graphics Commons SSRF vulnerability

Severity:
        Medium

Vendor:
        The Apache Software Foundation

Versions Affected:
        XML Graphics Commons 2.4 and earlier

Description:
        The Apache XML Graphics Commons library is vulnerable to SSRF via the XMPParser that allow an
attacker to cause the underlying server to make arbitrary GET requests.

Mitigation:
        Users should upgrade to XML Graphics Commons 2.6 or later

Credit:
        This issue was independently reported by 张相浩

References:
        http://xmlgraphics.apache.org/security.html

The Apache XML Graphics team.




