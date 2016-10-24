X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["663" "Monday" "24" "October" "2016" "16:06:34" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1610241602370.6422@wniryva>" "22" "[oss-security] CVE request Qemu: audio: intel-hda: infinite loop in processing dma buffer stream" nil nil nil "10" "2016102410:36:34" "[oss-security] CVE request Qemu: audio: intel-hda: infinite loop in processing dma buffer stream" (number mark "U       ppandit@redh Oct 24   22/663   " thread-indent "\"[oss-security] CVE request Qemu: audio: intel-hda: infinite loop in processing dma buffer stream\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3858 invoked by uid 550); 24 Oct 2016 10:36:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3834 invoked from network); 24 Oct 2016 10:36:51 -0000
Date: Mon, 24 Oct 2016 16:06:34 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Huawei PSIRT <psirt@huawei.com>
Message-ID: <alpine.LFD.2.20.1610241602370.6422@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Mon, 24 Oct 2016 10:36:39 +0000 (UTC)
Subject: [oss-security] CVE request Qemu: audio: intel-hda: infinite loop in processing dma
 buffer stream

   Hello,

Quick Emulator(Qemu) built with the Intel HDA controller emulation support is 
vulnerable to an infinite loop issue. It could occur while processing the DMA 
buffer stream while doing data transfer in 'intel_hda_xfer'.

A privileged user inside guest could use this flaw to consume excessive CPU 
cycles on the host, resulting in DoS.

Upstream patch
--------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-10/msg04717.html


This issue was reported by Huawei Product Security Incident Response Team 
(PSIRT), Huawei Inc.


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
