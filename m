X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["912" "Tuesday" "19" "December" "2017" "17:03:36" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1712191700510.32077@wniryva>" "26" "[oss-security] CVE-2017-15124 Qemu: memory exhaustion through framebuffer update request message in VNC server" "^cc:" nil nil "12" "2017121911:33:36" "[oss-security] CVE-2017-15124 Qemu: memory exhaustion through framebuffer update request message in VNC server" (number mark "U       ppandit@redh Dec 19   26/912   " thread-indent "\"[oss-security] CVE-2017-15124 Qemu: memory exhaustion through framebuffer update request message in VNC server\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11774 invoked by uid 550); 19 Dec 2017 11:33:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11753 invoked from network); 19 Dec 2017 11:33:54 -0000
X-X-Sender: pjp@javelin
Message-ID: <nycvar.YSQ.7.76.1712191700510.32077@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]); Tue, 19 Dec 2017 11:33:42 +0000 (UTC)
cc: Daniel Berrange <berrange@redhat.com>
Date: Tue, 19 Dec 2017 17:03:36 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2017-15124 Qemu: memory exhaustion through framebuffer update
 request message in VNC server
To: oss security list <oss-security@lists.openwall.com>

   Hello,

VNC server implementation in Quick Emulator(QEMU) was found to be vulnerable 
to an unbounded memory allocation issue, as it did not throttle the 
framebuffer updates sent to its client. If the client did not consume these 
updates, VNC server allocates growing memory to hold onto this data.

A malicious VNC client could use this flaw to cause DoS on the remote server 
host.

Upstream fix(es):
-----------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2017-12/msg03715.html
   -> https://lists.gnu.org/archive/html/qemu-devel/2017-12/msg03713.html
   -> https://lists.gnu.org/archive/html/qemu-devel/2017-12/msg03711.html

Thread:
-------
   -> https://lists.gnu.org/archive/html/qemu-devel/2017-12/msg03705.html

'CVE-2017-15124' is assigned to this issue by Red Hat Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
