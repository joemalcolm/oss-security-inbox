X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["739" "Thursday" "24" "January" "2019" "23:36:44" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1901242331410.6343@xnncv>" "22" "[oss-security] CVE-2019-6778 QEMU: slirp: heap buffer overflow in tcp_emu()" nil nil nil "1" "2019012418:06:44" "[oss-security] CVE-2019-6778 QEMU: slirp: heap buffer overflow in tcp_emu()" (number mark "U       ppandit@redh Jan 24   22/739   " thread-indent "\"[oss-security] CVE-2019-6778 QEMU: slirp: heap buffer overflow in tcp_emu()\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27656 invoked by uid 550); 24 Jan 2019 18:07:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26611 invoked from network); 24 Jan 2019 18:07:00 -0000
Date: Thu, 24 Jan 2019 23:36:44 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
cc: Kira <864786842@qq.com>
Message-ID: <nycvar.YSQ.7.76.1901242331410.6343@xnncv>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]); Thu, 24 Jan 2019 18:06:49 +0000 (UTC)
Subject: [oss-security] CVE-2019-6778 QEMU: slirp: heap buffer overflow in tcp_emu()

   Hello,

A heap buffer overflow issue was found in the SLiRP networking implementation 
of the QEMU emulator. It occurs in tcp_emu() routine while emulating 
Identification protocol and copying message data to a socket buffer.

A user/process could use this flaw to crash the Qemu process on the host 
resulting in DoS or potentially execute arbitrary code with privileges of the 
QEMU process.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2019-01/msg03132.html

This issue was reported by Kira from Tencent Keen Security Lab.

CVE-2019-6778 assigned via -> http://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
