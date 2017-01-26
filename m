X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/01/26/1
Message-ID: <20170126123155.fquerqnvgz7frque@lorien.valinor.li>
Date: Thu, 26 Jan 2017 13:31:55 +0100
From: Salvatore Bonaccorso <carnil@...ian.org>
To: OSS Security Mailinglist <oss-security@...ts.openwall.com>
Subject: CVE Requests: libgd: potential unsigned onderflow, denial-of-service in gdImageCreateFromGd2Ctx and signed overflow in gd_io.c
Content-Type: text/plain; charset=utf-8

Hi

[I'm collecting the request in one mail, although maybe I should have
splitted up, apologies for that].

libgd fixed some issues in the git repositories, for which the
following three does not seem to have CVE ids:

1/ Fix potential unsigned underflow
Commit: https://github.com/libgd/libgd/commit/60bfb401ad5a4a8ae995dcd36372fe15c71e1a35

2/ Fix DOS vulnerability in gdImageCreateFromGd2Ctx()
Commit: https://github.com/libgd/libgd/commit/fe9ed49dafa993e3af96b6a5a589efeea9bfb36f

3/ Fix #354: Signed Integer Overflow gd_io.c
Commit: https://github.com/libgd/libgd/commit/69d2fd2c597ffc0c217de1238b9bf4d4bceba8e6
Issue: https://github.com/libgd/libgd/issues/354

Could you please assign CVE id's for those?

Regards,
Salvatore
