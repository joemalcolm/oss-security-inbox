X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["613" "Monday" "10" "October" "2016" "17:00:15" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1610101656300.27939@wniryva>" "20" "[oss-security] CVE request Qemu: 9pfs: potential NULL dereferencein 9pfs routines" nil nil nil "10" "2016101011:30:15" "[oss-security] CVE request Qemu: 9pfs: potential NULL dereferencein 9pfs routines" (number mark "U       ppandit@redh Oct 10   20/613   " thread-indent "\"[oss-security] CVE request Qemu: 9pfs: potential NULL dereferencein 9pfs routines\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1655 invoked by uid 550); 10 Oct 2016 11:30:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1637 invoked from network); 10 Oct 2016 11:30:31 -0000
Date: Mon, 10 Oct 2016 17:00:15 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1610101656300.27939@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Mon, 10 Oct 2016 11:30:20 +0000 (UTC)
Subject: [oss-security] CVE request Qemu: 9pfs: potential NULL dereferencein 9pfs routines

   Hello,

Quick Emulator(Qemu) built with the virtio-9p back-end support is vulnerable 
to a null pointer dereference issue. It could occur while doing an I/O vector 
unmarshalling operation in v9fs_iov_vunmarshal() routine.

A privileged user/process inside guest could use this flaw to crash the Qemu 
process instance resulting in Dos.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-09/msg07143.html

This issue was reported by Li Qiang of 360.cn Inc.


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
