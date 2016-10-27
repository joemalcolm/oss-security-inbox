X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["812" "Friday" "28" "October" "2016" "02:34:22" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1610280232200.6132@wniryva>" "25" "[oss-security] CVE request Qemu: 9pfs: memory leakage when creating extended attribute" nil nil nil "10" "2016102721:04:22" "[oss-security] CVE request Qemu: 9pfs: memory leakage when creating extended attribute" (number mark "U       ppandit@redh Oct 28   25/812   " thread-indent "\"[oss-security] CVE request Qemu: 9pfs: memory leakage when creating extended attribute\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28087 invoked by uid 550); 27 Oct 2016 21:04:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28066 invoked from network); 27 Oct 2016 21:04:39 -0000
Date: Fri, 28 Oct 2016 02:34:22 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1610280232200.6132@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Thu, 27 Oct 2016 21:04:27 +0000 (UTC)
Subject: [oss-security] CVE request Qemu: 9pfs: memory leakage when creating extended
 attribute

   Hello,

Quick Emulator(Qemu) built with the VirtFS, host directory sharing via Plan 9 
File System(9pfs) support, is vulnerable to memory leakage issue. It could 
occur while creating extended attribute via 'Txattrcreate' message.

A privileged user inside guest could use this flaw to leak host memory, thus 
affecting other services on the host and/or potentially crash the Qemu process 
on the host.

Upstream patches:
-----------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-10/msg01861.html

Reference:
----------
   -> http://wiki.qemu.org/Documentation/9psetup
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1389550

This issue was reported by Li Qiang of 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
