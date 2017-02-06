X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["679" "Tuesday" "7" "February" "2017" "01:02:31" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1702070101020.4225@wniryva>" "23" "[oss-security] CVE request Qemu: usb: integer overflow in emulated_apdu_from_guest" nil nil nil "2" "2017020619:32:31" "[oss-security] CVE request Qemu: usb: integer overflow in emulated_apdu_from_guest" (number mark "U       ppandit@redh Feb  7   23/679   " thread-indent "\"[oss-security] CVE request Qemu: usb: integer overflow in emulated_apdu_from_guest\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9718 invoked by uid 550); 6 Feb 2017 19:32:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9688 invoked from network); 6 Feb 2017 19:32:49 -0000
Date: Tue, 7 Feb 2017 01:02:31 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1702070101020.4225@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Mon, 06 Feb 2017 19:32:38 +0000 (UTC)
Subject: [oss-security] CVE request Qemu: usb: integer overflow in
 emulated_apdu_from_guest

   Hello,

Quick Emulator(Qemu) built with the CCID Card device emulator support is 
vulnerable to an integer overflow flaw. It could occur while passing message 
via command/responses packets to and from the host.

A privileged user inside guest could use this flaw to crash the Qemu process 
on host resulting in DoS.

Upstream patch:
---------------
   -> https://lists.nongnu.org/archive/html/qemu-devel/2017-02/msg01075.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1419699

This issue was reported by Mr Li Qiang of 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
