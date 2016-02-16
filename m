X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["702" "Tuesday" "16" "February" "2016" "17:06:13" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1602161702480.9762@wniryva>" "22" "[oss-security] CVE request Qemu: usb: multiple eof_timers in ohci leads to null pointer dereference" nil nil nil "2" "2016021611:36:13" "[oss-security] CVE request Qemu: usb: multiple eof_timers in ohci leads to null pointer dereference" (number mark "U       ppandit@redh Feb 16   22/702   " thread-indent "\"[oss-security] CVE request Qemu: usb: multiple eof_timers in ohci leads to null pointer dereference\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5146 invoked by uid 550); 16 Feb 2016 11:36:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 4095 invoked from network); 16 Feb 2016 11:36:32 -0000
Date: Tue, 16 Feb 2016 17:06:13 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Zuozhi Fzz <zuozhi.fzz@alibaba-inc.com>
Message-ID: <alpine.LFD.2.20.1602161702480.9762@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
Subject: [oss-security] CVE request Qemu: usb: multiple eof_timers in ohci leads to null
 pointer dereference

   Hello,

Qemu emulator built with the USB OHCI emulation support is vulnerable to a 
null pointer dereference issue. It could occur when OHCI transitions to a 
OHCI_USB_OPERATIONAL state, leading to creation of multiple eof timers. A 
privileged user inside guest could use this flaw to crash the Qemu process on 
the host, resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-02/msg03374.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1304794

This issue was discovered by Zuozhi Fzz of Alibaba Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
