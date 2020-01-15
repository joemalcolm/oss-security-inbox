X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/01/15/2
Message-ID: <CAE7Uba-_3at3DD=nyQydDbArg7Bjdz_9uUn-izyW0m41BKEvig@mail.gmail.com>
Date: Wed, 15 Jan 2020 17:30:50 +0100
From: Ismaël Mejía <iemejia@...che.org>
To: oss-security@...ts.openwall.com
Subject: [CVE-2020-1929] Apache Beam MongoDB IO connector disables certificate trust verification
Content-Type: text/plain; charset=utf-8

CVE-2020-1929 Apache Beam MongoDB IO connector disables certificate trust
verification

Severity: Major
Vendor: The Apache Software Foundation

Versions Affected:
Apache Beam 2.10.0 to 2.16.0

Description:
The Apache Beam MongoDB connector in versions 2.10.0 to 2.16.0 has an
option to
disable SSL trust verification. However this configuration is not respected
and
the certificate verification disables trust verification in every case. This
exclusion also gets registered globally which disables trust checking for
any
code running in the same JVM.

Mitigation:
Users of the affected versions should apply one of the following
mitigations:
- Upgrade to Apache Beam 2.17.0 or later

Acknowledgements:
This issue was reported (and fixed) by Colm Ó hÉigeartaigh.

