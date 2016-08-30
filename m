X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["675" "Tuesday" "30" "August" "2016" "12:45:44" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1608301244260.2278@wniryva>" "23" "[oss-security] CVE request: Qemu: 9p: directory traversal flaw in 9p virtio backend" "^cc:" nil nil "8" "2016083007:15:44" "[oss-security] CVE request: Qemu: 9p: directory traversal flaw in 9p virtio backend" (number mark "        ppandit@redh Aug 30   23/675   " thread-indent "\"[oss-security] CVE request: Qemu: 9p: directory traversal flaw in 9p virtio backend\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15737 invoked by uid 550); 30 Aug 2016 07:16:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15717 invoked from network); 30 Aug 2016 07:16:01 -0000
X-X-Sender: pjp@javelin
Message-ID: <alpine.LFD.2.20.1608301244260.2278@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]); Tue, 30 Aug 2016 07:15:49 +0000 (UTC)
cc: Felix Wilhelm <fwilhelm@ernw.de>
Date: Tue, 30 Aug 2016 12:45:44 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: Qemu: 9p: directory traversal flaw in 9p virtio
 backend
To: oss security list <oss-security@lists.openwall.com>

   Hello,

Quick Emulator(Qemu) built with the VirtFS, host directory sharing via Plan 9 
File System(9pfs) support, is vulnerable to a directory/path traversal issue. 
It could occur while creating or accessing files on a shared host directory.

A privileged user inside guest could use this flaw to access undue files on 
the host.

Upstream patches:
-----------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-08/msg03917.html

Reference:
----------
   -> http://wiki.qemu.org/Documentation/9psetup

This flaw was reported by Mr Felix Wilhelm.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
