X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["671" "Friday" "29" "January" "2016" "21:43:37" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1601292141150.18369@wniryva>" "23" "[oss-security] CVE request Qemu: usb: ehci null pointer dereference in ehci_caps_write" nil nil nil "1" "2016012916:13:37" "[oss-security] CVE request Qemu: usb: ehci null pointer dereference in ehci_caps_write" (number mark "U       ppandit@redh Jan 29   23/671   " thread-indent "\"[oss-security] CVE request Qemu: usb: ehci null pointer dereference in ehci_caps_write\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3272 invoked by uid 550); 29 Jan 2016 16:13:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3251 invoked from network); 29 Jan 2016 16:13:54 -0000
Date: Fri, 29 Jan 2016 21:43:37 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Zuozhi Fzz <zuozhi.fzz@alibaba-inc.com>
Message-ID: <alpine.LFD.2.20.1601292141150.18369@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Subject: [oss-security] CVE request Qemu: usb: ehci null pointer dereference in
 ehci_caps_write

   Hello,

Qemu emulator built with the USB EHCI emulation support is vulnerable to a 
null pointer dereference flaw. It could occur when an application attempts to 
write to EHCI capabilities registers.

A privileged user inside quest could use this flaw to crash the Qemu process 
instance resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-01/msg05899.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1301643

This issue was discovered by Mr Zuozhi Fzz of Alibaba Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
