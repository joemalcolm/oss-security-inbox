X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["684" "Friday" "29" "January" "2016" "12:06:55" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1601291203340.22140@wniryva>" "24" "[oss-security] CVE request Qemu: ide: ahci null pointer dereference when using FIS CLB engines" "^cc:" nil nil "1" "2016012906:36:55" "[oss-security] CVE request Qemu: ide: ahci null pointer dereference when using FIS CLB engines" (number mark "        ppandit@redh Jan 29   24/684   " thread-indent "\"[oss-security] CVE request Qemu: ide: ahci null pointer dereference when using FIS CLB engines\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1414 invoked by uid 550); 29 Jan 2016 06:37:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1388 invoked from network); 29 Jan 2016 06:37:13 -0000
X-X-Sender: pjp@javelin
Message-ID: <alpine.LFD.2.20.1601291203340.22140@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
cc: zuozhi.fzz@alibaba-inc.com
Date: Fri, 29 Jan 2016 12:06:55 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request Qemu: ide: ahci null pointer dereference when using FIS
 CLB engines
To: oss security list <oss-security@lists.openwall.com>

   Hello,

Qemu emulator built with an IDE AHCI emulation support is vulnerable to a null 
pointer dereference flaw. It occurs while unmapping the Frame Information 
Structure(FIS) & Command List Block(CLB) entries.

A privileged user inside guest could use this flaw to crash the Qemu process 
instance resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-01/msg05742.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1302057

This issue was discovered by Mr Zuozhi Fzz of Alibaba Inc.


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
