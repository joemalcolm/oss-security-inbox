X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["623" "Monday" "23" "May" "2016" "16:40:22" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1605231637460.27295@wniryva>" "21" "[oss-security] CVE request: Qemu: scsi: pvscsi: out-of-bounds access issue in pvsci_ring_init_msg/data routines" nil nil nil "5" "2016052311:10:22" "[oss-security] CVE request: Qemu: scsi: pvscsi: out-of-bounds access issue in pvsci_ring_init_msg/data routines" (number mark "U       ppandit@redh May 23   21/623   " thread-indent "\"[oss-security] CVE request: Qemu: scsi: pvscsi: out-of-bounds access issue in pvsci_ring_init_msg/data routines\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11693 invoked by uid 550); 23 May 2016 11:10:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11672 invoked from network); 23 May 2016 11:10:42 -0000
Date: Mon, 23 May 2016 16:40:22 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1605231637460.27295@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]); Mon, 23 May 2016 11:10:30 +0000 (UTC)
Subject: [oss-security] CVE request: Qemu: scsi: pvscsi: out-of-bounds access issue in
 pvsci_ring_init_msg/data routines

   Hello,

Quick Emulator(Qemu) built with the VMWARE PVSCSI paravirtual SCSI bus 
emulation support is vulnerable to an OOB r/w access issue. It could occur 
while processing SCSI commands 'PVSCSI_CMD_SETUP_RINGS' or 
'PVSCSI_CMD_SETUP_MSG_RING'.

A privileged user inside guest could use this flaw to crash the Qemu process 
resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-05/msg03774.html


This issue was discovered by Mr Li Qiang of 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
