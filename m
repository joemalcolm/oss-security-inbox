X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["902" "Monday" "18" "April" "2016" "17:44:21" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1604181740160.24870@wniryva>" "27" "[oss-security] Qemu: usb: Infinite loop vulnerability in usb_ehci using siTD process" nil nil nil "4" "2016041812:14:21" "[oss-security] Qemu: usb: Infinite loop vulnerability in usb_ehci using siTD process" (number mark "U       ppandit@redh Apr 18   27/902   " thread-indent "\"[oss-security] Qemu: usb: Infinite loop vulnerability in usb_ehci using siTD process\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9897 invoked by uid 550); 18 Apr 2016 12:14:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9879 invoked from network); 18 Apr 2016 12:14:39 -0000
Date: Mon, 18 Apr 2016 17:44:21 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: dushaobo@360.cn
Message-ID: <alpine.LFD.2.20.1604181740160.24870@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Subject: [oss-security] Qemu: usb: Infinite loop vulnerability in usb_ehci using siTD
 process

   Hello,

Qemu emulator built with the USB EHCI emulation support is vulnerable to an 
infinite loop issue. It occurs during communication between host controller 
interface(EHCI) and a respective device driver. These two communicate via a 
split isochronous transfer descriptor list(siTD) and an infinite loop unfolds 
if there is a closed loop in this list.

A privileges used inside guest could use this flaw to consume excessive CPU 
cycles & resources on the host.

This issue is similar to CVE-2015-8558, but using siTD instead of iTD.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-04/msg02691.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1325129

This issue are discovered by Du Shaobo of Qihoo 360 Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
