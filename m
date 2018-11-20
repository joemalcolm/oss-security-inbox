X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["705" "Tuesday" "20" "November" "2018" "16:51:28" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1811201647270.17923@xnncv>" "21" "[oss-security] CVE-2018-19364 Qemu: 9pfs: Use-after-free due to race condition while updating fid path" "^cc:" nil nil "11" "2018112011:21:28" "[oss-security] CVE-2018-19364 Qemu: 9pfs: Use-after-free due to race condition while updating fid path" (number mark "        ppandit@redh Nov 20   21/705   " thread-indent "\"[oss-security] CVE-2018-19364 Qemu: 9pfs: Use-after-free due to race condition while updating fid path\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3294 invoked by uid 550); 20 Nov 2018 11:21:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3269 invoked from network); 20 Nov 2018 11:21:44 -0000
X-X-Sender: pjp@kaapi
Message-ID: <nycvar.YSQ.7.76.1811201647270.17923@xnncv>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]); Tue, 20 Nov 2018 11:21:33 +0000 (UTC)
cc: Greg Kurz <groug@kaod.org>, zhibin hu <noirfate@gmail.com>
Date: Tue, 20 Nov 2018 16:51:28 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2018-19364 Qemu: 9pfs: Use-after-free due to race condition
 while updating fid path
To: oss security list <oss-security@lists.openwall.com>

   Hello,

A use-after-free flaw was found in the VirtFS, host directory sharing via Plan 
9 File System(9pfs) support in QEMU. It could occur due to a race condition in 
updating fid path in worker threads via v9fs_path_copy(), while accessing 
files on a shared host directory.

A user inside guest could use this flaw to crash the QEMU process resulting in 
DoS issue.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2018-11/msg01139.html
   -> https://lists.gnu.org/archive/html/qemu-devel/2018-11/msg02795.html

This issue was reported by Zhibin hu.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
