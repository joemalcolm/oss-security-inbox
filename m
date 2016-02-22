X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["796" "Monday" "22" "February" "2016" "21:20:28" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1602222116400.26144@wniryva>" "24" "[oss-security] CVE request Qemu: usb: integer overflow in remote NDIS control message handling" "^cc:" nil nil "2" "2016022215:50:28" "[oss-security] CVE request Qemu: usb: integer overflow in remote NDIS control message handling" (number mark "U       ppandit@redh Feb 22   24/796   " thread-indent "\"[oss-security] CVE request Qemu: usb: integer overflow in remote NDIS control message handling\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29808 invoked by uid 550); 22 Feb 2016 15:50:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29790 invoked from network); 22 Feb 2016 15:50:51 -0000
X-X-Sender: pjp@javelin
Message-ID: <alpine.LFD.2.20.1602222116400.26144@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
cc: Qinghao Tang <luodalongde@gmail.com>
Date: Mon, 22 Feb 2016 21:20:28 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request Qemu: usb: integer overflow in remote NDIS control
 message handling
To: oss security list <oss-security@lists.openwall.com>

   Hello,

Qemu emulator built with the USB Net device emulation support is vulnerable to 
an integer overflow issue. It could occur while processing remote NDIS control 
message packets. As the incoming informationBufferOffset & Length combination 
could cross the integer range.

A privileged user inside guest could use this flaw to leak host memory bytes 
to guest or crash the Qemu process instance resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-02/msg03658.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1303120

This issue was discovered by Qinghao Tang of 360.cn Marvel Team, China.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
