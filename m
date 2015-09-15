X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["522" "Tuesday" "15" "September" "2015" "18:52:12" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1509151850350.14460@wniryva>" "18" "[oss-security] CVE-2015-5279 Qemu: net: add checks to validate ring buffer pointers" nil nil nil "9" "2015091513:22:12" "[oss-security] CVE-2015-5279 Qemu: net: add checks to validate ring buffer pointers" (number mark "        ppandit@redh Sep 15   18/522   " thread-indent "\"[oss-security] CVE-2015-5279 Qemu: net: add checks to validate ring buffer pointers\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11872 invoked by uid 550); 15 Sep 2015 13:22:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11850 invoked from network); 15 Sep 2015 13:22:31 -0000
X-X-Sender: pjp@javelin
Message-ID: <alpine.LFD.2.20.1509151850350.14460@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
cc: Qinghao Tang <luodalongde@gmail.com>
Date: Tue, 15 Sep 2015 18:52:12 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-5279 Qemu: net: add checks to validate ring buffer
 pointers
To: oss security list <oss-security@lists.openwall.com>

   Hello,

Qemu emulator built with the NE2000 NIC emulation support is vulnerable to a 
heap buffer overflow issue. It could occur when receiving packets over the 
network.

A privileged user inside guest could use this flaw to crash the Qemu instance 
or potentially execute arbitrary code on the host.

Upstream fix:
-------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2015-09/msg03984.html


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
