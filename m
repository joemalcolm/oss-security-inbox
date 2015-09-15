X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["482" "Tuesday" "15" "September" "2015" "18:50:11" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1509151827540.14460@wniryva>" "17" "[oss-security] CVE-2015-5278 Qemu: net: avoid infinite loop when receiving packets" nil nil nil "9" "2015091513:20:11" "[oss-security] CVE-2015-5278 Qemu: net: avoid infinite loop when receiving packets" (number mark "        ppandit@redh Sep 15   17/482   " thread-indent "\"[oss-security] CVE-2015-5278 Qemu: net: avoid infinite loop when receiving packets\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3204 invoked by uid 550); 15 Sep 2015 13:20:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3172 invoked from network); 15 Sep 2015 13:20:32 -0000
X-X-Sender: pjp@javelin
Message-ID: <alpine.LFD.2.20.1509151827540.14460@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
cc: Qinghao Tang <luodalongde@gmail.com>
Date: Tue, 15 Sep 2015 18:50:11 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-5278 Qemu: net: avoid infinite loop when receiving
 packets
To: oss security list <oss-security@lists.openwall.com>

   Hello,

Qemu emulator built with the NE2000 NIC emulation support is vulnerable to an 
infinite loop issue. It could occur when receiving packets over the network.

A privileged user inside guest could use this flaw to crash the Qemu instance 
resulting in DoS.

Upstream fix:
-------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2015-09/msg03985.html


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
