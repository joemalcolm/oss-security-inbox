X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/04/06/6
Message-ID: <081AF1E16E81CF4EB0B01F4D39B2D2A14B4EAFD5@EXMBX-TJ008.tencent.com>
Date: Thu, 6 Apr 2017 08:45:32 +0000
From: rudykewang(王永科) <rudykewang@...cent.com>
To: oss-security <oss-security@...ts.openwall.com>
Subject: CVE Request: Interger overflow vulnerability in ptp_unpack_OPL function of  libmtp (version 1.1.12 and below)
Content-Type: text/plain; charset=utf-8

Hi, I find an interger overflow vulnerability in ptp-pack.c(ptp_unpack_OPL  function) of  libmtp (version 1.1.12 and below) and report it to http://libmtp.sourceforge.net.
The fix is here: https://sourceforge.net/p/libmtp/mailman/message/35729062
Could you assign a CVE number for this? This is Yongke Wang of Tencent's Xuanwu Lab (xlab.tencent.com).
