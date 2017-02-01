X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["720" "Wednesday" "1" "February" "2017" "21:06:39" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1702012104590.32078@wniryva>" "24" "[oss-security] CVE request Qemu: scsi: megasas: host memory leakage in megasas_handle_dcmd" nil nil nil "2" "2017020115:36:39" "[oss-security] CVE request Qemu: scsi: megasas: host memory leakage in megasas_handle_dcmd" (number mark "U       ppandit@redh Feb  1   24/720   " thread-indent "\"[oss-security] CVE request Qemu: scsi: megasas: host memory leakage in megasas_handle_dcmd\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13552 invoked by uid 550); 1 Feb 2017 15:36:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13529 invoked from network); 1 Feb 2017 15:36:59 -0000
Date: Wed, 1 Feb 2017 21:06:39 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1702012104590.32078@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Wed, 01 Feb 2017 15:36:48 +0000 (UTC)
Subject: [oss-security] CVE request Qemu: scsi: megasas: host memory leakage in
 megasas_handle_dcmd

   Hello,

Quick Emulator(Qemu) built with the MegaRAID SAS 8708EM2 Host Bus Adapter 
emulation support is vulnerable to a memory leakage issue. It could occur 
while processing MegaRAID Firmware Interface(MFI) command in 
'megasas_handle_dcmd' routine.

A privileged user inside guest could use this flaw to leak host memory 
resulting DoS issue.

Upstream patch:
---------------
   -> http://git.qemu.org/?p=qemu.git;a=commit;h=765a707000e838c30b18d712fe6cb3dd8e0435f3

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1418342

This issue was reported by Mr Li Qiang of 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
