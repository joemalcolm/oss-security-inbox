X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["669" "Tuesday" "6" "September" "2016" "17:18:50" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1609061716580.21893@wniryva>" "23" "[oss-security] CVE request: Qemu: scsi: pvscsi: infintie loop when building SG list" nil nil nil "9" "2016090611:48:50" "[oss-security] CVE request: Qemu: scsi: pvscsi: infintie loop when building SG list" (number mark "U       ppandit@redh Sep  6   23/669   " thread-indent "\"[oss-security] CVE request: Qemu: scsi: pvscsi: infintie loop when building SG list\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28024 invoked by uid 550); 6 Sep 2016 11:49:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28006 invoked from network); 6 Sep 2016 11:49:07 -0000
Date: Tue, 6 Sep 2016 17:18:50 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1609061716580.21893@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]); Tue, 06 Sep 2016 11:48:55 +0000 (UTC)
Subject: [oss-security] CVE request: Qemu: scsi: pvscsi: infintie loop when building SG
 list

   Hello,

Quick Emulator(Qemu) built with the VMWARE PVSCSI paravirtual SCSI bus 
emulation support is vulnerable to an infinite loop issue. It could occur 
while processing an IO request descriptor, building SG list.

A privileged user inside guest could use this flaw to crash the Qemu process 
resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-09/msg00772.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1373478

This issue was reported by Li Qiang of 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
