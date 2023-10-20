X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/10/20/5
Message-ID: <CAB8XdGA58wd-CUqd+wW+6V6PVrz2kimSq74TsYJdizDZaT3=hQ@mail.gmail.com>
Date: Fri, 20 Oct 2023 10:09:16 +0100
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-44483: Apache Santuario: Private Key disclosure in debug-log output
Content-Type: text/plain; charset=utf-8

Severity: moderate

Affected versions:

- Apache Santuario  before < 2.2.6
- Apache Santuario  before < 2.3.4
- Apache Santuario  before < 3.0.3

Description:

All versions of Apache Santuario - XML Security for Java prior to
2.2.6, 2.3.4, and 3.0.3, when using the JSR 105 API, are vulnerable to
an issue where a private key may be disclosed in log files when
generating an XML Signature and logging with debug level is enabled.
Users are recommended to upgrade to version 2.2.6, 2.3.4, or 3.0.3,
which fixes this issue.

Credit:

Apache Santuario would like to thank Max Fichtelmann for reporting
this issue. (finder)

References:

https://santuario.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-44483
