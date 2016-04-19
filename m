X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2294" "Tuesday" "19" "April" "2016" "10:06:43" "+0200" "Marcus Meissner" "meissner@suse.de" "<20160419080643.GA26432@suse.de>" "53" "[oss-security] CVE Request: Linux kernel: remote buffer overflow in usbip" "^Cc:" nil nil "4" "2016041908:06:43" "[oss-security] CVE Request: Linux kernel: remote buffer overflow in usbip" (number mark "        meissner@sus Apr 19   53/2294  " thread-indent "\"[oss-security] CVE Request: Linux kernel: remote buffer overflow in usbip\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17878 invoked by uid 550); 19 Apr 2016 08:06:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17857 invoked from network); 19 Apr 2016 08:06:55 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20160419080643.GA26432@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: security@kernel.org
Date: Tue, 19 Apr 2016 10:06:43 +0200
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: Linux kernel: remote buffer overflow in usbip
To: OSS Security List <oss-security@lists.openwall.com>

Hi,

https://github.com/torvalds/linux/commit/b348d7dddb6c4fbfc810b7a0626e8ec9e29f7cbb

commit b348d7dddb6c4fbfc810b7a0626e8ec9e29f7cbb
Author: Ignat Korchagin <ignat.korchagin@gmail.com>
Date:   Thu Mar 17 18:00:29 2016 +0000

    USB: usbip: fix potential out-of-bounds write

    Fix potential out-of-bounds write to urb->transfer_buffer
    usbip handles network communication directly in the kernel. When receiving a
    packet from its peer, usbip code parses headers according to protocol. As
    part of this parsing urb->actual_length is filled. Since the input for
    urb->actual_length comes from the network, it should be treated as untrusted.
    Any entity controlling the network may put any value in the input and the
    preallocated urb->transfer_buffer may not be large enough to hold the data.
    Thus, the malicious entity is able to write arbitrary data to kernel memory.

    Signed-off-by: Ignat Korchagin <ignat.korchagin@gmail.com>
    Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

diff --git a/drivers/usb/usbip/usbip_common.c b/drivers/usb/usbip/usbip_common.c
index facaaf0..e40da77 100644
--- a/drivers/usb/usbip/usbip_common.c
+++ b/drivers/usb/usbip/usbip_common.c
@@ -741,6 +741,17 @@ int usbip_recv_xbuff(struct usbip_device *ud, struct urb *urb)
        if (!(size > 0))
                return 0;

+       if (size > urb->transfer_buffer_length) {
+               /* should not happen, probably malicious packet */
+               if (ud->side == USBIP_STUB) {
+                       usbip_event_add(ud, SDEV_EVENT_ERROR_TCP);
+                       return 0;
+               } else {
+                       usbip_event_add(ud, VDEV_EVENT_ERROR_TCP);
+                       return -EPIPE;
+               }
+       }
+
        ret = usbip_recv(ud->tcp_socket, urb->transfer_buffer, size);
        if (ret != size) {
                dev_err(&urb->dev->dev, "recv xbuf, %d\n", ret);

Our USB developer confirms:
https://bugzilla.suse.com/show_bug.cgi?id=975945
|The vulnerability is true. If an attacker can get a malicious package
|into the connection the kernel will accept all of the data in that
|package whether it fits into the buffer or not.
|You can scribble about 1k into RAM, albeit at an unpredictable location.

Ciao, Marcus
