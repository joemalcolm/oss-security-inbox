X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["708" "Friday" "14" "October" "2016" "16:44:16" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1610141642160.13950@wniryva>" "24" "[oss-security] CVE request Qemu: net: OOB buffer access in rocker switch emulation" nil nil nil "10" "2016101411:14:16" "[oss-security] CVE request Qemu: net: OOB buffer access in rocker switch emulation" (number mark "U       ppandit@redh Oct 14   24/708   " thread-indent "\"[oss-security] CVE request Qemu: net: OOB buffer access in rocker switch emulation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23706 invoked by uid 550); 14 Oct 2016 11:14:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23634 invoked from network); 14 Oct 2016 11:14:33 -0000
Date: Fri, 14 Oct 2016 16:44:16 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Huawei PSIRT <psirt@huawei.com>
Message-ID: <alpine.LFD.2.20.1610141642160.13950@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]); Fri, 14 Oct 2016 11:14:21 +0000 (UTC)
Subject: [oss-security] CVE request Qemu: net: OOB buffer access in rocker switch
 emulation

   Hello,

Quick Emulator(Qemu) built with the Rocker switch emulation support is 
vulnerable to an OOB read access issue. It could occur while performing a DMA 
access 'TEST_DMA_CTRL_INVERT' test.

A privileged guest user could use this issue to crash the Qemu process 
instance on the host resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-10/msg02501.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1384896

This issue was reported by Huawei Product Security Incident Response Team 
(PSIRT), Huawei Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
