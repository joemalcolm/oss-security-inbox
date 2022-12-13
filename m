X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/12/13/2
Message-ID: <CAB8XdGDk7xbis9aOcDM3w+b6CepMBKNhWwweKH9ZW2a0TQXZ6Q@mail.gmail.com>
Date: Tue, 13 Dec 2022 14:38:00 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-46363: Apache CXF directory listing / code exfiltration
Content-Type: text/plain; charset=utf-8

Severity: moderate

Description:

A vulnerability in Apache CXF before versions 3.5.5 and 3.4.10 allows
an attacker to perform a remote directory listing or code
exfiltration. The vulnerability only applies when the CXFServlet is
configured with both the static-resources-list and
redirect-query-check attributes. These attributes are not supposed to
be used together, and so the vulnerability can only arise if the CXF
service is misconfigured.

Credit:

thanat0s from Beijin Qihoo 360 adlab (finder)

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2022-46363
