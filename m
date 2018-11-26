X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["568" "Monday" "26" "November" "2018" "11:19:29" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1811261113490.30027@xnncv>" "19" "[oss-security] CVE-2018-19489 QEMU: 9pfs: crash due to race condition in renaming files" "^cc:" nil nil "11" "2018112605:49:29" "[oss-security] CVE-2018-19489 QEMU: 9pfs: crash due to race condition in renaming files" (number mark "U       ppandit@redh Nov 26   19/568   " thread-indent "\"[oss-security] CVE-2018-19489 QEMU: 9pfs: crash due to race condition in renaming files\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30599 invoked by uid 550); 26 Nov 2018 05:49:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30578 invoked from network); 26 Nov 2018 05:49:46 -0000
X-X-Sender: pjp@kaapi
Message-ID: <nycvar.YSQ.7.76.1811261113490.30027@xnncv>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.26]); Mon, 26 Nov 2018 05:49:34 +0000 (UTC)
cc: Greg Kurz <groug@kaod.org>, zhibin hu <noirfate@gmail.com>
Date: Mon, 26 Nov 2018 11:19:29 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2018-19489 QEMU: 9pfs: crash due to race condition in renaming
 files
To: oss security list <oss-security@lists.openwall.com>

   Hello,

A use-after-free flaw was found in the VirtFS, host directory sharing via Plan 
9 File System(9pfs) support in QEMU. It could occur due to a race condition 
while renaming files on a shared host directory.

A user inside guest could use this flaw to crash the QEMU process resulting in 
DoS issue.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2018-11/msg04489.html

This issue was reported by Zhibin Hu.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
