X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/01/24/1
Message-ID: <nycvar.YSQ.7.76.1901241241500.20220@xnncv>
Date: Thu, 24 Jan 2019 12:43:37 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
Subject: CVE-2019-6501 QEMU: scsi-generic: possible OOB access while handling inquiry request
Content-Type: text/plain; charset=utf-8

  Hello,

An out of bounds r/w access issue was found in the way QEMU handled inquiry 
request coming from a guest in scsi_handle_inquiry_reply(). A guest 
user/process could use this flaw to corrupt byte of QEMU process memory.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2019-01/msg02324.html

CVE-2019-6501 requested via -> https://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
