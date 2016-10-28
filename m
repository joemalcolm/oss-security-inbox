X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["672" "Friday" "28" "October" "2016" "15:25:02" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1610281523450.17516@wniryva>" "23" "[oss-security] CVE request Qemu: 9pfs: memory leakage in v9fs_write" nil nil nil "10" "2016102809:55:02" "[oss-security] CVE request Qemu: 9pfs: memory leakage in v9fs_write" (number mark "U       ppandit@redh Oct 28   23/672   " thread-indent "\"[oss-security] CVE request Qemu: 9pfs: memory leakage in v9fs_write\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21901 invoked by uid 550); 28 Oct 2016 09:55:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21880 invoked from network); 28 Oct 2016 09:55:19 -0000
Date: Fri, 28 Oct 2016 15:25:02 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1610281523450.17516@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]); Fri, 28 Oct 2016 09:55:08 +0000 (UTC)
Subject: [oss-security] CVE request Qemu: 9pfs: memory leakage in v9fs_write

   Hello,

Quick Emulator(Qemu) built with the VirtFS, host directory sharing via Plan 9 
File System(9pfs) support, is vulnerable to a memory leakage issue. It could 
occur when calling v9fs_write call.

A privileged user inside guest could use this flaw to leak the host memory 
bytes resulting in DoS for other services.

Upstream patches:
-----------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-10/msg02623.html

Reference:
----------
   -> http://wiki.qemu.org/Documentation/9psetup

This issue was reported by Li Qiang of 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
