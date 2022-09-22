X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/09/22/2
Message-ID: <001301d8ce81$fa4e05f0$eeea11d0$@gmail.com>
Date: Thu, 22 Sep 2022 13:51:04 +0100
From: "Simon Steiner" <simonsteiner1984@...il.com>
To: <general@...graphics.apache.org>, <batik-dev@...graphics.apache.org>, <batik-users@...graphics.apache.org>, "'Apache Security Team'" <security@...che.org>, <oss-security@...ts.openwall.com>
Subject: [CVE-2022-38398] Apache Batik information disclosure vulnerability
Content-Type: text/plain; charset=utf-8

CVE-2022-38398:
        Apache Batik information disclosure vulnerability

Severity:
        Medium

Vendor:
        The Apache Software Foundation

Versions Affected:
        Batik 1.0 - 1.14

Description:
        DefaultExternalResourceSecurity should block urls loaded thru the
jar protocol

Mitigation:
        Users should upgrade to Batik 1.15+

Credit:
        This issue was independently reported by Piotr Bazydlo (@chudypb) of
Trend Micro Zero Day Initiative

References:
        http://xmlgraphics.apache.org/security.html
        https://issues.apache.org/jira/browse/BATIK-1331

The Apache XML Graphics team.

