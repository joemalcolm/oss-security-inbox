X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["535" "Thursday" "6" "August" "2015" "15:55:50" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1508061545270.10066@wniryva>" "17" "[oss-security] CVE request: Qemu: buffer overflow in virtio-serial" nil nil nil "8" "2015080610:25:50" "[oss-security] CVE request: Qemu: buffer overflow in virtio-serial" (number mark "        ppandit@redh Aug  6   17/535   " thread-indent "\"[oss-security] CVE request: Qemu: buffer overflow in virtio-serial\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16058 invoked by uid 550); 6 Aug 2015 10:26:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16023 invoked from network); 6 Aug 2015 10:26:08 -0000
X-X-Sender: pjp@javelin
Message-ID: <alpine.LFD.2.20.1508061545270.10066@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
Date: Thu, 6 Aug 2015 15:55:50 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: Qemu: buffer overflow in virtio-serial
To: oss security list <oss-security@lists.openwall.com>

   Hello,

Qemu emulator built with the virtio-serial vmchannel support is vulnerable to 
a buffer overflow issue. It could occur while exchanging virtio control 
messages between guest & the host.

A malicious guest could use this flaw to corrupt few bytes of Qemu memory 
area, potentially crashing the Qemu process.

Upstream fix:
-------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2015-07/msg05458.html

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
