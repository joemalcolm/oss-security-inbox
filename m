X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["701" "Tuesday" "6" "September" "2016" "16:32:34" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1609061630270.20681@wniryva>" "24" "[oss-security] CVE request: Qemu: scsi: pvscsi: OOB read and infinite loop while setting descriptor rings" nil nil nil "9" "2016090611:02:34" "[oss-security] CVE request: Qemu: scsi: pvscsi: OOB read and infinite loop while setting descriptor rings" (number mark "U       ppandit@redh Sep  6   24/701   " thread-indent "\"[oss-security] CVE request: Qemu: scsi: pvscsi: OOB read and infinite loop while setting descriptor rings\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31827 invoked by uid 550); 6 Sep 2016 11:02:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31809 invoked from network); 6 Sep 2016 11:02:52 -0000
Date: Tue, 6 Sep 2016 16:32:34 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>, Tom Victor <vv474172261@gmail.com>
Message-ID: <alpine.LFD.2.20.1609061630270.20681@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]); Tue, 06 Sep 2016 11:02:40 +0000 (UTC)
Subject: [oss-security] CVE request: Qemu: scsi: pvscsi: OOB read and infinite loop while
 setting descriptor rings

   Hello,

Quick Emulator(Qemu) built with the VMWARE PVSCSI paravirtual SCSI bus 
emulation support is vulnerable to an OOB access and/or infinite loop issue. 
It could occur while processing SCSI commands 'PVSCSI_CMD_SETUP_RINGS'.

A privileged user inside guest could use this flaw to crash the Qemu process 
resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-09/msg00050.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1373462


These issues were reported by Vivtor V and Li Quiang of 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
