X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["716" "Wednesday" "25" "May" "2016" "17:59:16" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1605251756250.15974@wniryva>" "24" "[oss-security] CVE Request Qemu: scsi: megasas: stack information leakage while reading configuration" nil nil nil "5" "2016052512:29:16" "[oss-security] CVE Request Qemu: scsi: megasas: stack information leakage while reading configuration" (number mark "U       ppandit@redh May 25   24/716   " thread-indent "\"[oss-security] CVE Request Qemu: scsi: megasas: stack information leakage while reading configuration\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23797 invoked by uid 550); 25 May 2016 12:29:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23776 invoked from network); 25 May 2016 12:29:36 -0000
Date: Wed, 25 May 2016 17:59:16 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1605251756250.15974@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Wed, 25 May 2016 12:29:24 +0000 (UTC)
Subject: [oss-security] CVE Request Qemu: scsi: megasas: stack information leakage while
 reading configuration

   Hello,

Quick Emulator(Qemu) built with the MegaRAID SAS 8708EM2 Host Bus Adapter 
emulation support is vulnerable to an information leakage issue. It could 
occur while processing MegaRAID Firmware Interface(MFI) command to read device 
configuration in 'megasas_dcmd_cfg_read'.

A privileged user inside guest could use this flaw to leak host memory bytes.

Upstream patch
--------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-05/msg04419.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1339583


This issue was discovered by Li Qiang of 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
