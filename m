X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["510" "Saturday" "5" "September" "2015" "01:30:35" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1509050128380.647@wniryva>" "17" "[oss-security] CVE Request Qemu: net: e1000 infinite loop issue" nil nil nil "9" "2015090420:00:35" "[oss-security] CVE Request Qemu: net: e1000 infinite loop issue" (number mark "        ppandit@redh Sep  5   17/510   " thread-indent "\"[oss-security] CVE Request Qemu: net: e1000 infinite loop issue\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7888 invoked by uid 550); 4 Sep 2015 20:00:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7864 invoked from network); 4 Sep 2015 20:00:52 -0000
X-X-Sender: pjp@javelin
Message-ID: <alpine.LFD.2.20.1509050128380.647@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
cc: Qinghao Tang <luodalongde@gmail.com>
Date: Sat, 5 Sep 2015 01:30:35 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request Qemu: net: e1000 infinite loop issue
To: oss security list <oss-security@lists.openwall.com>

   Hello,

Qemu emulator built with the e1000 NIC emulation support is vulnerable to an
infinite loop issue. It could occur while processing transmit descriptor data
when sending a network packet.

A privileged user inside guest could use this flaw to crash the Qemu instance
resulting in DoS.

Upstream fix:
-------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2015-09/msg01199.html

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
