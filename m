X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["896" "Thursday" "19" "May" "2016" "16:44:42" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1605191642030.11606@wniryva>" "27" "[oss-security] CVE-2016-4439 Qemu: scsi: esp: OOB write while writing to 's->cmdbuf' in esp_reg_write" nil nil nil "5" "2016051911:14:42" "[oss-security] CVE-2016-4439 Qemu: scsi: esp: OOB write while writing to 's->cmdbuf' in esp_reg_write" (number mark "U       ppandit@redh May 19   27/896   " thread-indent "\"[oss-security] CVE-2016-4439 Qemu: scsi: esp: OOB write while writing to 's->cmdbuf' in esp_reg_write\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7864 invoked by uid 550); 19 May 2016 11:15:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7846 invoked from network); 19 May 2016 11:15:03 -0000
Date: Thu, 19 May 2016 16:44:42 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1605191642030.11606@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Thu, 19 May 2016 11:14:51 +0000 (UTC)
Subject: [oss-security] CVE-2016-4439 Qemu: scsi: esp: OOB write while writing to 's->cmdbuf'
 in esp_reg_write

   Hello,

Quick Emulator(Qemu) built with the ESP/NCR53C9x controller emulation support 
is vulnerable to an OOB write access issue. The controller uses 16-byte FIFO 
buffer for command and data transfer. The OOB write occurs while writing to 
this command buffer in esp_reg_write().

A privileged user inside guest could use this flaw to crash the Qemu process 
resulting in DoS OR potentially leverage it to execute arbitrary code with 
privileges of the Qemu process on the host.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-05/msg03273.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1337502

This issue was discovered by Li Qiang of 360.cn Inc.

'CVE-2016-4439' has been assigned to it by Red Hat Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
