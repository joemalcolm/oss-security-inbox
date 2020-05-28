X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/05/28/1
Message-ID: <nycvar.YSQ.7.77.849.2005281030080.62159@xnncv>
Date: Thu, 28 May 2020 10:32:53 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
cc: "Ding, Ren" <rding@...ech.edu>, "Zhao, Hanqing" <hanqing@...ech.edu>
Subject: CVE-2020-13361 QEMU: es1370: OOB access due to incorrect frame count leads to DoS
Content-Type: text/plain; charset=utf-8

   Hello,

An OOB access issue was found in the ES1370 audio device emulator of the QEMU. 
The issue occurs in 'audio_pcm_sw_read', while reading audio byte stream from 
a channel, if the channel frame count is set to a malicious value. A guest 
user/process may use this flaw to crash the QEMU process on the host resulting 
in DoS scenario.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2020-05/msg07230.html

This issue was reported by Ren Ding & Hanqing Zhao of SSLab Georgia Tech. 
'CVE-2020-13361' requested via -> https://cveform.mitre.org/


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

