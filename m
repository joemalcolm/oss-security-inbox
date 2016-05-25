X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["679" "Wednesday" "25" "May" "2016" "18:01:36" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1605251800090.15974@wniryva>" "20" "[oss-security] CVE Request Qemu: scsi: megasas: out-of-bounds write while setting controller properties" nil nil nil "5" "2016052512:31:36" "[oss-security] CVE Request Qemu: scsi: megasas: out-of-bounds write while setting controller properties" (number mark "U       ppandit@redh May 25   20/679   " thread-indent "\"[oss-security] CVE Request Qemu: scsi: megasas: out-of-bounds write while setting controller properties\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1579 invoked by uid 550); 25 May 2016 12:31:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1561 invoked from network); 25 May 2016 12:31:58 -0000
Date: Wed, 25 May 2016 18:01:36 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1605251800090.15974@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]); Wed, 25 May 2016 12:31:47 +0000 (UTC)
Subject: [oss-security] CVE Request Qemu: scsi: megasas: out-of-bounds write while setting
 controller properties

   Hello,

Quick Emulator(Qemu) built with the MegaRAID SAS 8708EM2 Host Bus Adapter 
emulation support is vulnerable to an out-of-bounds write access issue. It 
could occur while processing MegaRAID Firmware Interface(MFI) command to set 
controller properties in 'megasas_dcmd_set_properties'.

A privileged user inside guest could use this flaw to crash the Qemu process 
on the host resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-05/msg04340.html

This issue was discovered by Li Qiang of 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
