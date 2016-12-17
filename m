X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/12/17/2
Message-ID: <CAAmRq0miNRCeRU8CPCmh1jUsmbW2VL4qqFVapKP3VGCSmoUtyQ@mail.gmail.com>
Date: Sat, 17 Dec 2016 16:52:06 +0100
From: Gjoko Krstic <gjoko@...oscience.mk>
To: oss-security@...ts.openwall.com
Subject: CVE request - DCMTK remote stack buffer overflow
Content-Type: text/plain; charset=utf-8

*"At several places in the code a wrong length of ACSE data structures
received over the network can cause overflows or underflows when processing
those data structures. Related checks have been added at various places in
order to prevent such (possible) attacks. Thanks to Kevin Basista for the
report."The bug will indeed affect all DCMTK-based server applications that
accept incoming DICOM network connections that are using the dcmtk-3.6.0
and earlier versions. Developers are advised to apply the
patched-DCMTK-3.6.1_20160216 fix commit from Dec 14,
2015.http://zeroscience.mk/en/vulnerabilities/ZSL-2016-5384.php
<http://zeroscience.mk/en/vulnerabilities/ZSL-2016-5384.php>https://bugs.gentoo.org/show_bug.cgi?id=602918
<https://bugs.gentoo.org/show_bug.cgi?id=602918>*

