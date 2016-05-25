X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["752" "Wednesday" "25" "May" "2016" "18:04:14" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1605251802140.15974@wniryva>" "24" "[oss-security] CVE Request Qemu: scsi: megasas: out-of-bounds read in megasas_lookup_frame() function" nil nil nil "5" "2016052512:34:14" "[oss-security] CVE Request Qemu: scsi: megasas: out-of-bounds read in megasas_lookup_frame() function" (number mark "U       ppandit@redh May 25   24/752   " thread-indent "\"[oss-security] CVE Request Qemu: scsi: megasas: out-of-bounds read in megasas_lookup_frame() function\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12145 invoked by uid 550); 25 May 2016 12:34:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12127 invoked from network); 25 May 2016 12:34:34 -0000
Date: Wed, 25 May 2016 18:04:14 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1605251802140.15974@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Wed, 25 May 2016 12:34:22 +0000 (UTC)
Subject: [oss-security] CVE Request Qemu: scsi: megasas: out-of-bounds read in megasas_lookup_frame()
 function

   Hello,

Quick Emulator(Qemu) built with the MegaRAID SAS 8708EM2 Host Bus Adapter 
emulation support is vulnerable to an out-of-bounds read access issue. It 
could occur while looking up MegaRAID Firmware Interface(MFI) command frames 
in 'megasas_lookup_frame' routine.

A privileged user inside guest could use this flaw to read invalid memory 
leading to crash the Qemu process on the host.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-05/msg04424.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1336461

This issue was discovered by Li Qiang of 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
