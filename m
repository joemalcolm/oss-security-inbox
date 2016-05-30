X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["705" "Monday" "30" "May" "2016" "23:13:15" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1605302310440.13154@wniryva>" "22" "[oss-security] CVE Request Qemu: block: iscsi: buffer overflow in iscsi_aio_ioctl" nil nil nil "5" "2016053017:43:15" "[oss-security] CVE Request Qemu: block: iscsi: buffer overflow in iscsi_aio_ioctl" (number mark "U       ppandit@redh May 30   22/705   " thread-indent "\"[oss-security] CVE Request Qemu: block: iscsi: buffer overflow in iscsi_aio_ioctl\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21675 invoked by uid 550); 30 May 2016 17:43:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21646 invoked from network); 30 May 2016 17:43:35 -0000
Date: Mon, 30 May 2016 23:13:15 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
Message-ID: <alpine.LFD.2.20.1605302310440.13154@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]); Mon, 30 May 2016 17:43:23 +0000 (UTC)
Subject: [oss-security] CVE Request Qemu: block: iscsi: buffer overflow in iscsi_aio_ioctl

   Hello,

Quick Emulator(Qemu) built with the Block driver for iSCSI images(virtio-blk) 
support is vulnerable to a heap buffer overflow flaw. It could occur while 
processing iSCSI asynchronous I/O ioctl(2) calls.

A user inside guest could use this flaw to crash the Qemu process resulting in 
DoS OR potentially leverage it to execute arbitrary code with privileges of 
the Qemu process on the host.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-block/2016-05/msg00779.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1340924

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
