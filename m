X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["658" "Friday" "28" "October" "2016" "11:24:17" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1610281122370.12679@wniryva>" "23" "[oss-security] CVE request  Qemu: 9pfs: information leakage via xattribute" nil nil nil "10" "2016102805:54:17" "[oss-security] CVE request Qemu: 9pfs: information leakage via xattribute" (number mark "U       ppandit@redh Oct 28   23/658   " thread-indent "\"[oss-security] CVE request  Qemu: 9pfs: information leakage via xattribute\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19500 invoked by uid 550); 28 Oct 2016 05:54:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19474 invoked from network); 28 Oct 2016 05:54:35 -0000
Date: Fri, 28 Oct 2016 11:24:17 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1610281122370.12679@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Fri, 28 Oct 2016 05:54:23 +0000 (UTC)
Subject: [oss-security] CVE request  Qemu: 9pfs: information leakage via xattribute

   Hello,

Quick Emulator(Qemu) built with the VirtFS, host directory sharing via Plan 9 
File System(9pfs) support, is vulnerable to an information leakage issue. It 
could occur by accessing xattribute value before it's written to.

A privileged user inside guest could use this flaw to leak host memory bytes.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-10/msg01790.html

Reference:
----------
   -> http://wiki.qemu.org/Documentation/9psetup


This issue was reported by Li Qiang of 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
