X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["873" "Friday" "13" "November" "2015" "06:18:50" "-0500" "Vladis Dronov" "vdronov@redhat.com" "<280559012.12238637.1447413530171.JavaMail.zimbra@redhat.com>" "20" "[oss-security] CVE request -- [media] usbvision: usbvision_probe() can trigger a kernel NULL pointer dereference" nil nil nil "11" "2015111311:18:50" "[oss-security] CVE request -- [media] usbvision: usbvision_probe() can trigger a kernel NULL pointer dereference" (number mark "U       vdronov@redh Nov 13   20/873   " thread-indent "\"[oss-security] CVE request -- [media] usbvision: usbvision_probe() can trigger a kernel NULL pointer dereference\"\n") "<1986702170.12223760.1447412422089.JavaMail.zimbra@redhat.com>" ("<1986702170.12223760.1447412422089.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28567 invoked by uid 550); 13 Nov 2015 11:20:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28543 invoked from network); 13 Nov 2015 11:20:46 -0000
Date: Fri, 13 Nov 2015 06:18:50 -0500 (EST)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-ID: <280559012.12238637.1447413530171.JavaMail.zimbra@redhat.com>
In-Reply-To: <1986702170.12223760.1447412422089.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.204.127]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - FF41 (Linux)/8.0.6_GA_5922)
Thread-Topic: CVE request -- [media] usbvision: usbvision_probe() can trigger a kernel NULL pointer dereference
Thread-Index: hCmaV1ji8jDXJ5Lh3zK81gkiTJsnTA==
Subject: [oss-security] CVE request -- [media] usbvision: usbvision_probe() can trigger a
 kernel NULL pointer dereference

Hello,
If possible, we would like to obtain a CVE-ID for the following security issue.

An out-of-bounds memory access flaw was found in USBVision USB Camera Driver in
usbvision_probe() function in drivers/media/usb/usbvision/usbvision-video.c.
The driver assumes that the interfaces numbers of the USB device are always in
0,1,2,3... order. By using a specially crafted USB device which advertises
out-of-order number on one of its interfaces an unprivileged user with a physical
access can trigger a kernel NULL pointer dereference causing the system to freeze.

Currently there is an effort to create an upstream patch for this driver fixing
this issue.

References:
http://seclists.org/bugtraq/2015/Oct/35
http://bugzilla.redhat.com/show_bug.cgi?id=1201858
http://bugzilla.redhat.com/show_bug.cgi?id=1270158

Vladis Dronov | Red Hat, Inc.
| Product Security Engineer |
