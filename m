X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["723" "Tuesday" "16" "February" "2016" "22:14:14" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1602162208400.13313@wniryva>" "24" "[oss-security] CVE request Qemu: usb: null pointer dereference in remote NDIS control message handling" nil nil nil "2" "2016021616:44:14" "[oss-security] CVE request Qemu: usb: null pointer dereference in remote NDIS control message handling" (number mark "U       ppandit@redh Feb 16   24/723   " thread-indent "\"[oss-security] CVE request Qemu: usb: null pointer dereference in remote NDIS control message handling\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9442 invoked by uid 550); 16 Feb 2016 16:44:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9424 invoked from network); 16 Feb 2016 16:44:31 -0000
Date: Tue, 16 Feb 2016 22:14:14 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Qinghao Tang <luodalongde@gmail.com>
Message-ID: <alpine.LFD.2.20.1602162208400.13313@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Subject: [oss-security] CVE request Qemu: usb: null pointer dereference in remote NDIS
 control message handling

   Hello,

Qemu emulator built with the USB Net device emulation support is vulnerable to 
a NULL pointer dereference issue. It could occur while processing remote NDIS 
control message packets, when the USB configuration descriptor object is null.

A privileged user inside guest could use this flaw to crash the Qemu process 
instance resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-02/msg02553.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1302299

This issue was discovered by Qinghao Tang of 360.cn Marvel Team.


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
