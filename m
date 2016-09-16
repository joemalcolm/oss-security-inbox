X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["643" "Friday" "16" "September" "2016" "15:05:36" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1609161502430.28695@wniryva>" "23" "[oss-security] CVE Request: Qemu: scsi: pvscsi: infinite loop when processing IO requests" nil nil nil "9" "2016091609:35:36" "[oss-security] CVE Request: Qemu: scsi: pvscsi: infinite loop when processing IO requests" (number mark "U       ppandit@redh Sep 16   23/643   " thread-indent "\"[oss-security] CVE Request: Qemu: scsi: pvscsi: infinite loop when processing IO requests\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19996 invoked by uid 550); 16 Sep 2016 09:35:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19975 invoked from network); 16 Sep 2016 09:35:56 -0000
Date: Fri, 16 Sep 2016 15:05:36 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: liqiang6-s@360.cn
Message-ID: <alpine.LFD.2.20.1609161502430.28695@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Fri, 16 Sep 2016 09:35:45 +0000 (UTC)
Subject: [oss-security] CVE Request: Qemu: scsi: pvscsi: infinite loop when processing IO
 requests

   Hello,

Quick Emulator(Qemu) built with the VMWARE PVSCSI paravirtual SCSI bus 
emulation support is vulnerable to an infinite loop issue. It could occur 
while processing SCSI IO requests.

A privileged user inside guest could use this flaw to crash the Qemu process 
resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-09/msg03609.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1376731

This issue was reported by Li Qiang of 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
