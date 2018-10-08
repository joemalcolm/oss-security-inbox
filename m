X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1068" "Monday" "8" "October" "2018" "10:35:19" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1810081020570.6766@xnncv>" "35" "[oss-security] Qemu: integer overflow issues" nil nil nil "10" "2018100805:05:19" "[oss-security] Qemu: integer overflow issues" (number mark "U       ppandit@redh Oct  8   35/1068  " thread-indent "\"[oss-security] Qemu: integer overflow issues\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25884 invoked by uid 550); 8 Oct 2018 05:05:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25866 invoked from network); 8 Oct 2018 05:05:37 -0000
Date: Mon, 8 Oct 2018 10:35:19 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
cc: Arash TC <tohidi.arash@gmail.com>, Daniel Shapira <daniel@twistlock.com>
Message-ID: <nycvar.YSQ.7.76.1810081020570.6766@xnncv>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.25
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Mon, 08 Oct 2018 05:05:26 +0000 (UTC)
Subject: [oss-security] Qemu: integer overflow issues

   Hello,

Multiple integer overflow issues were found and reported in various NIC 
emulations in QEMU. These integer overflow could occur while receiving packets 
and could lead to OOB stack buffer access, resulting in DoS scenario.


* CVE-2018-10839 Qemu: ne2000: integer overflow leads to buffer overflow issue

Upstream fix:
   -> https://lists.gnu.org/archive/html/qemu-devel/2018-09/msg03273.html

* CVE-2018-17958 Qemu: rtl8139: integer overflow leads to buffer overflow

Upstream fix:
   -> https://lists.gnu.org/archive/html/qemu-devel/2018-09/msg03269.html

* CVE-2018-17962 Qemu: pcnet: integer overflow leads to buffer overflow

Upstream fix:
   -> https://lists.gnu.org/archive/html/qemu-devel/2018-09/msg03268.html

* CVE-2018-17963 Qemu: net: ignore packets with large size

Upstream fix:
   -> https://lists.gnu.org/archive/html/qemu-devel/2018-09/msg03267.html


These issues were independently reported by Arash TC and Daniel Shapira.


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
