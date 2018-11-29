X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["631" "Thursday" "29" "November" "2018" "14:45:05" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1811291443100.21164@xnncv>" "20" "[oss-security] CVE-2018-19665 Qemu: bt: integer overflow in Bluetooth routines allows memory corruption" "^cc:" nil nil "11" "2018112909:15:05" "[oss-security] CVE-2018-19665 Qemu: bt: integer overflow in Bluetooth routines allows memory corruption" (number mark "        ppandit@redh Nov 29   20/631   " thread-indent "\"[oss-security] CVE-2018-19665 Qemu: bt: integer overflow in Bluetooth routines allows memory corruption\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15550 invoked by uid 550); 29 Nov 2018 09:15:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15526 invoked from network); 29 Nov 2018 09:15:21 -0000
X-X-Sender: pjp@kaapi
Message-ID: <nycvar.YSQ.7.76.1811291443100.21164@xnncv>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.44]); Thu, 29 Nov 2018 09:15:09 +0000 (UTC)
cc: Arash TC <tohidi.arash@gmail.com>
Date: Thu, 29 Nov 2018 14:45:05 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2018-19665 Qemu: bt: integer overflow in Bluetooth routines
 allows memory corruption
To: oss security list <oss-security@lists.openwall.com>

   Hello,

An integer overflow resulting in memory corruption issue was found in various 
Bluetooth functions. It could occur in routines wherein 'len' parameter is a 
'signed int' which subsequently converts to an unsigned integer resulting in 
memcpy() copying large amounts of memory.

A user inside guest could use this flaw to crash the Qemu process resulting in 
DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2018-11/msg03570.html

This issue was reported by Arash TC

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
