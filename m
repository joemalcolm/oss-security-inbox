X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["804" "Wednesday" "26" "April" "2017" "12:52:02" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1704261248200.8206@wniryva>" "26" "[oss-security] CVE-2017-8112 Qemu: scsi: vmw_pvscsi: infinite loop in pvscsi_log2" nil nil nil "4" "2017042607:22:02" "[oss-security] CVE-2017-8112 Qemu: scsi: vmw_pvscsi: infinite loop in pvscsi_log2" (number mark "U       ppandit@redh Apr 26   26/804   " thread-indent "\"[oss-security] CVE-2017-8112 Qemu: scsi: vmw_pvscsi: infinite loop in pvscsi_log2\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21850 invoked by uid 550); 26 Apr 2017 07:22:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21829 invoked from network); 26 Apr 2017 07:22:22 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com BA778C057FA9
Authentication-Results: ext-mx08.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx08.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=ppandit@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com BA778C057FA9
Date: Wed, 26 Apr 2017 12:52:02 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: YY Z <bigbird475958471@gmail.com>, Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1704261248200.8206@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Wed, 26 Apr 2017 07:22:10 +0000 (UTC)
Subject: [oss-security] CVE-2017-8112 Qemu: scsi: vmw_pvscsi: infinite loop in pvscsi_log2

   Hello,

Quick Emulator(Qemu) built with the VMWARE PVSCSI paravirtual SCSI bus 
emulation support is vulnerable to an infinite loop issue. It could occur 
while initialising SCSI message ring buffer in pvscsi_ring_init_msg().

A privileged user inside guest could use this flaw to consume host cpu cycles 
or crash the Qemu process resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2017-04/msg04578.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1445621

This issue was independently reported by Li Qiang of Qihoo 360 Gear 
Team and YY Z(CC'd).

'CVE-2017-8112' assigned via -> http://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
