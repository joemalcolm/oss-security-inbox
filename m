X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["550" "Monday" "24" "October" "2016" "16:10:24" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1610241606440.6422@wniryva>" "18" "[oss-security] CVE request Qemu: net: rtl8139: infinite loop while transmit in C+ mode" nil nil nil "10" "2016102410:40:24" "[oss-security] CVE request Qemu: net: rtl8139: infinite loop while transmit in C+ mode" (number mark "U       ppandit@redh Oct 24   18/550   " thread-indent "\"[oss-security] CVE request Qemu: net: rtl8139: infinite loop while transmit in C+ mode\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15534 invoked by uid 550); 24 Oct 2016 10:40:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15511 invoked from network); 24 Oct 2016 10:40:41 -0000
Date: Mon, 24 Oct 2016 16:10:24 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Andrew Henderson <hendersa@icculus.org>
Message-ID: <alpine.LFD.2.20.1610241606440.6422@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]); Mon, 24 Oct 2016 10:40:29 +0000 (UTC)
Subject: [oss-security] CVE request Qemu: net: rtl8139: infinite loop while transmit in C+
 mode

   Hello,

Quick Emulator(Qemu) built with the RTL8139 ethernet controller emulation 
support is vulnerable to an infinite loop issue. It could occur while 
transmitting packets in C+ mode of operation.

A privileged user inside guest could use this flaw to consume excessive CPU 
cycles on the host, resulting in DoS situation.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-10/msg05495.html


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
