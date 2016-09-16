X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["691" "Friday" "16" "September" "2016" "17:10:41" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1609161709040.28695@wniryva>" "23" "[oss-security] CVE request Qemu: scsi: mptsas: OOB access when freeing MPTSASRequest object" nil nil nil "9" "2016091611:40:41" "[oss-security] CVE request Qemu: scsi: mptsas: OOB access when freeing MPTSASRequest object" (number mark "U       ppandit@redh Sep 16   23/691   " thread-indent "\"[oss-security] CVE request Qemu: scsi: mptsas: OOB access when freeing MPTSASRequest object\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13679 invoked by uid 550); 16 Sep 2016 11:40:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13661 invoked from network); 16 Sep 2016 11:40:57 -0000
Date: Fri, 16 Sep 2016 17:10:41 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1609161709040.28695@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Fri, 16 Sep 2016 11:40:46 +0000 (UTC)
Subject: [oss-security] CVE request Qemu: scsi: mptsas: OOB access when freeing MPTSASRequest
 object

   Hello,

Quick emulator(Qemu) built with the LSI SAS1068 Host Bus emulation support, is 
vulnerable to an invalid memory access issue. It could occur while processing 
scsi io requests in mptsas_process_scsi_io_request.

A privileged user inside guest could use this flaw to crash the Qemu process 
instance on the host resulting in DoS.

Upstream patch
--------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-09/msg03604.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1376776

This issue was reported by Li Qiang of 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
