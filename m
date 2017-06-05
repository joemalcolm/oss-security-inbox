X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["709" "Monday" "5" "June" "2017" "17:06:51" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1706051704190.26243@wniryva>" "23" "[oss-security] CVE-2017-9375 Qemu: usb: xhci infinite recursive call via xhci_kick_ep" nil nil nil "6" "2017060511:36:51" "[oss-security] CVE-2017-9375 Qemu: usb: xhci infinite recursive call via xhci_kick_ep" (number mark "U       ppandit@redh Jun  5   23/709   " thread-indent "\"[oss-security] CVE-2017-9375 Qemu: usb: xhci infinite recursive call via xhci_kick_ep\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28251 invoked by uid 550); 5 Jun 2017 11:37:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28227 invoked from network); 5 Jun 2017 11:37:10 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 43512C0587CF
Authentication-Results: ext-mx08.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx08.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=ppandit@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com 43512C0587CF
Date: Mon, 5 Jun 2017 17:06:51 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Li Qiang <liqiang6-s@360.cn>
Message-ID: <alpine.LFD.2.20.1706051704190.26243@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Mon, 05 Jun 2017 11:36:58 +0000 (UTC)
Subject: [oss-security] CVE-2017-9375 Qemu: usb: xhci infinite recursive call via
 xhci_kick_ep

   Hello,

Quick emulator(Qemu) built with the USB xHCI controller emulator support is 
vulnerable to an infinite recursive call loop issue. It could occur while 
processing control transfer descriptors' sequence in xhci_kick_epctx.

A privileged user inside guest could use this flaw to crash the Qemu process 
resulting in DoS.

Upstream patch:
---------------
   -> http://git.qemu.org/?p=qemu.git;a=commitdiff;h=96d87bdda3919bb16f754b3d3fd1227e1f38f13c

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1458744

This issue was reported by Li Qiang Qihoo 360 Gear Team.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
