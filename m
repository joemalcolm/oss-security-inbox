X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["581" "Tuesday" "8" "December" "2015" "18:01:03" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1512081741500.9091@wniryva>" "19" "[oss-security] CVE request: Qemu: ui: vnc: avoid floating point exception" nil nil nil "12" "2015120812:31:03" "[oss-security] CVE request: Qemu: ui: vnc: avoid floating point exception" (number mark "U       ppandit@redh Dec  8   19/581   " thread-indent "\"[oss-security] CVE request: Qemu: ui: vnc: avoid floating point exception\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5707 invoked by uid 550); 8 Dec 2015 12:31:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5685 invoked from network); 8 Dec 2015 12:31:26 -0000
Date: Tue, 8 Dec 2015 18:01:03 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Lian Yihan <lianyihan@360.cn>
Message-ID: <alpine.LFD.2.20.1512081741500.9091@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Subject: [oss-security] CVE request: Qemu: ui: vnc: avoid floating point exception

   Hello,

Qemu emulator built with the VNC display driver support is vulnerable to an 
arithmetic exception flaw. It occurs on the VNC server side while processing 
the 'SetPixleFormat' messages from a client.

A privileged remote client could use this flaw to crash the guest resulting in 
DoS.

Upstream patch:
---------------
   -> http://git.qemu.org/?p=qemu.git;a=commitdiff;h=4c65fed8bdf96780735dbdb92a8b

This issue was discovered by Mr Lian Yihan of 360 Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
