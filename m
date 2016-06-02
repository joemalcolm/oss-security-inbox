X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["774" "Thursday" "2" "June" "2016" "10:56:53" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1606021054530.24989@wniryva>" "25" "[oss-security] CVE Request Qemu: scsi: esp: OOB write when using non-DMA mode in get_cmd" nil nil nil "6" "2016060205:26:53" "[oss-security] CVE Request Qemu: scsi: esp: OOB write when using non-DMA mode in get_cmd" (number mark "U       ppandit@redh Jun  2   25/774   " thread-indent "\"[oss-security] CVE Request Qemu: scsi: esp: OOB write when using non-DMA mode in get_cmd\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21518 invoked by uid 550); 2 Jun 2016 05:27:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20474 invoked from network); 2 Jun 2016 05:27:13 -0000
Date: Thu, 2 Jun 2016 10:56:53 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1606021054530.24989@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Thu, 02 Jun 2016 05:27:01 +0000 (UTC)
Subject: [oss-security] CVE Request Qemu: scsi: esp: OOB write when using non-DMA mode in
 get_cmd

   Hello,

Quick Emulator(Qemu) built with the ESP/NCR53C9x controller emulation support 
is vulnerable to an OOB write access issue. The controller uses 16-byte FIFO 
buffer for command and information transfer. The OOB write occurs while 
reading from information transfer buffer via non-DMA mode in routine 
get_cmd().

A privileged user inside guest could use this flaw to crash the Qemu process 
resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-06/msg00150.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1341931

This issue was discovered by Li Qiang of 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
