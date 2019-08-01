X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["751" "Thursday" "1" "August" "2019" "13:46:44" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1908011343470.30404@xnncv>" "22" "[oss-security] CVE-2019-14378 QEMU: slirp: heap buffer overflow during packet reassembly" nil nil nil "8" "2019080108:16:44" "[oss-security] CVE-2019-14378 QEMU: slirp: heap buffer overflow during packet reassembly" (number mark "U       ppandit@redh Aug  1   22/751   " thread-indent "\"[oss-security] CVE-2019-14378 QEMU: slirp: heap buffer overflow during packet reassembly\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-14378 QEMU: slirp: heap buffer overflow during packet reassembly" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28010 invoked by uid 550); 1 Aug 2019 08:17:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27992 invoked from network); 1 Aug 2019 08:17:01 -0000
Date: Thu, 1 Aug 2019 13:46:44 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
cc: Vishnu Dev <vishnudevtj@gmail.com>
Message-ID: <nycvar.YSQ.7.76.1908011343470.30404@xnncv>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Thu, 01 Aug 2019 08:16:49 +0000 (UTC)
Subject: [oss-security] CVE-2019-14378 QEMU: slirp: heap buffer overflow during packet
 reassembly

   Hello,

A heap buffer overflow issue was found in the SLiRP networking implementation 
of the QEMU emulator. It occurs in ip_reass() routine while reassembling 
incoming packets, if the first fragment is bigger than the m->m_dat[] buffer.

A user/process could use this flaw to crash the Qemu process on the host 
resulting in DoS or potentially execute arbitrary code with privileges of the 
QEMU process.

Upstream patch:
---------------
   -> https://gitlab.freedesktop.org/slirp/libslirp/commit/126c04acbabd7ad32c2b018fe10dfac2a3bc1210

This issue was reported by Vishnu Dev(CC'd).

CVE requested via -> https://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
