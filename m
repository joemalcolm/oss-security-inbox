X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1323" "Friday" "13" "November" "2015" "06:43:19" "-0500" "Vladis Dronov" "vdronov@redhat.com" "<1105840871.12262760.1447414999303.JavaMail.zimbra@redhat.com>" "33" "[oss-security] Re: CVE request -- [media] usbvision: usbvision_probe() can trigger a kernel NULL pointer dereference" nil nil nil "11" "2015111311:43:19" "[oss-security] Re: CVE request -- [media] usbvision: usbvision_probe() can trigger a kernel NULL pointer dereference" (number mark "U       vdronov@redh Nov 13   33/1323  " thread-indent "\"[oss-security] Re: CVE request -- [media] usbvision: usbvision_probe() can trigger a kernel NULL pointer dereference\"\n") "<280559012.12238637.1447413530171.JavaMail.zimbra@redhat.com>" ("<280559012.12238637.1447413530171.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20453 invoked by uid 550); 13 Nov 2015 11:43:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20434 invoked from network); 13 Nov 2015 11:43:33 -0000
Date: Fri, 13 Nov 2015 06:43:19 -0500 (EST)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-ID: <1105840871.12262760.1447414999303.JavaMail.zimbra@redhat.com>
In-Reply-To: <280559012.12238637.1447413530171.JavaMail.zimbra@redhat.com>
References: <280559012.12238637.1447413530171.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.204.127]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - FF41 (Linux)/8.0.6_GA_5922)
Thread-Topic: CVE request -- [media] usbvision: usbvision_probe() can trigger a kernel NULL pointer dereference
Thread-Index: hCmaV1ji8jDXJ5Lh3zK81gkiTJsnTII20tVB
Subject: [oss-security] Re: CVE request -- [media] usbvision: usbvision_probe() can trigger
 a kernel NULL pointer dereference

Greatest apologies, this issue already has CVE-2015-7833 assigned.
Please, disregard previous request.

Vladis Dronov | Red Hat, Inc.
| Product Security Engineer |

----- Original Message -----
From: "Vladis Dronov" <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Sent: Friday, November 13, 2015 12:18:50 PM
Subject: CVE request -- [media] usbvision: usbvision_probe() can trigger a kernel NULL pointer dereference

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
