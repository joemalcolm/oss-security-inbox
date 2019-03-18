X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["709" "Monday" "18" "March" "2019" "12:44:20" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1903181240570.16639@xnncv>" "20" "[oss-security] CVE-2019-9824 QEMU: Slirp: information leakage in tcp_emu() due to uninitialized stack variables" "^cc:" nil nil "3" "2019031807:14:20" "[oss-security] CVE-2019-9824 QEMU: Slirp: information leakage in tcp_emu() due to uninitialized stack variables" (number mark "U       ppandit@redh Mar 18   20/709   " thread-indent "\"[oss-security] CVE-2019-9824 QEMU: Slirp: information leakage in tcp_emu() due to uninitialized stack variables\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-9824 QEMU: Slirp: information leakage in tcp_emu() due to uninitialized stack variables" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28007 invoked by uid 550); 18 Mar 2019 07:14:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27986 invoked from network); 18 Mar 2019 07:14:39 -0000
X-X-Sender: pjp@kaapi
Message-ID: <nycvar.YSQ.7.76.1903181240570.16639@xnncv>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.26]); Mon, 18 Mar 2019 07:14:27 +0000 (UTC)
cc: William Bowling <will@wbowling.info>
Date: Mon, 18 Mar 2019 12:44:20 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2019-9824 QEMU: Slirp: information leakage in tcp_emu() due to
 uninitialized stack variables
To: oss security list <oss-security@lists.openwall.com>

     Hello,

An information leakage issue was found in the SLiRP networking implementation 
of the QEMU emulator. It occurs in tcp_emu() routine while emulating 
Identification protocol, when crafted messages are sent to make it return 
uninitialized variables.

A user/process could use this flaw to read uninitialised stack memory contents 
from the QEMU process resulting in information leakage.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2019-03/msg01871.html

This issue was reported by William Bowling. CVE requested via https://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
