X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["861" "Tuesday" "26" "July" "2016" "01:07:33" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1607260055500.12460@wniryva>" "22" "[oss-security] CVE request Qemu: scsi: esp: oob write access while reading ESP command " nil nil nil "7" "2016072519:37:33" "[oss-security] CVE request Qemu: scsi: esp: oob write access while reading ESP command" (number mark "U       ppandit@redh Jul 26   22/861   " thread-indent "\"[oss-security] CVE request Qemu: scsi: esp: oob write access while reading ESP command \"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30091 invoked by uid 550); 25 Jul 2016 19:37:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30073 invoked from network); 25 Jul 2016 19:37:53 -0000
Date: Tue, 26 Jul 2016 01:07:33 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1607260055500.12460@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Mon, 25 Jul 2016 19:37:41 +0000 (UTC)
Subject: [oss-security] CVE request Qemu: scsi: esp: oob write access while reading ESP
 command 

   Hello,

Quick Emulator(Qemu) built with the ESP/NCR53C9x controller emulation support 
is vulnerable to an OOB write access issue. It could occur while doing DMA 
read into ESP command buffer 's->cmdbuf'; It could write past the 's->cmdbuf' 
area, if it was transferring more than 16 bytes in esp_do_dma().

A privileged user inside guest could use this flaw to crash the Qemu process 
resulting in DoS OR potentially leverage it to execute arbitrary code with 
privileges of the Qemu process on the host.

Upstream patches:
-----------------
   -> http://git.qemu.org/?p=qemu.git;a=commit;h=926cde5f3e4d2504ed161ed0
   -> http://git.qemu.org/?p=qemu.git;a=commit;h=cc96677469388bad3d664793

This issue was discovered by Li Qiang of 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
