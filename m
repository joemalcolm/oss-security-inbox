X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["919" "Tuesday" "7" "June" "2016" "12:50:04" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1606071247030.8126@wniryva>" "27" "[oss-security] CVE Request Qemu: scsi: esp: OOB r/w access while processing ESP_FIFO" nil nil nil "6" "2016060707:20:04" "[oss-security] CVE Request Qemu: scsi: esp: OOB r/w access while processing ESP_FIFO" (number mark "U       ppandit@redh Jun  7   27/919   " thread-indent "\"[oss-security] CVE Request Qemu: scsi: esp: OOB r/w access while processing ESP_FIFO\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20225 invoked by uid 550); 7 Jun 2016 07:20:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20204 invoked from network); 7 Jun 2016 07:20:20 -0000
Date: Tue, 7 Jun 2016 12:50:04 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Huawei PSIRT <psirt@huawei.com>, Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1606071247030.8126@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]); Tue, 07 Jun 2016 07:20:08 +0000 (UTC)
Subject: [oss-security] CVE Request Qemu: scsi: esp: OOB r/w access while processing
 ESP_FIFO

   Hello,

Quick Emulator(Qemu) built with the ESP/NCR53C9x controller emulation support 
is vulnerable to an OOB r/w access issue. The controller uses 16-byte FIFO 
buffer the information transfer. The OOB r/w occurs while reading/writing to 
this buffer in esp_reg_read() and esp_reg_write() routines.

A privileged user inside guest could use this flaw to crash the Qemu process 
resulting in DoS OR potentially leverage it to execute arbitrary code with 
privileges of the Qemu process on the host.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-06/msg01507.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1343323

This issue was independently discovered and reported by Li Qiang of 360.cn Inc 
and Security Team at Huawei Inc.


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
