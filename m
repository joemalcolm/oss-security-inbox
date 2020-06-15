X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/06/15/2
Message-ID: <001301d642f3$32a10d70$97e32850$@gmail.com>
Date: Mon, 15 Jun 2020 09:58:53 +0100
From: "Simon Steiner" <simonsteiner1984@...il.com>
To: <oss-security@...ts.openwall.com>
Subject: [CVE-2019-17566] Apache XML Graphics Batik SSRF vulnerability
Content-Type: text/plain; charset=utf-8

CVE-2019-17566:
        Apache XML Graphics Batik SSRF vulnerability

Severity:
        Medium

Vendor:
        The Apache Software Foundation

Versions Affected:
        Batik 1.12 and earlier

Description:
        The Apache Batik library is vulnerable to SSRF via "xlink:href"
attributes that allow an
attacker to cause the underlying server to make arbitrary GET requests.

Mitigation:
        Users should upgrade to Batik 1.13 or later and pass
-blockExternalResources on the command line

Credit:
        This issue was independently reported by Sean Melia

References:
        http://xmlgraphics.apache.org/security.html

The Apache XML Graphics team.


