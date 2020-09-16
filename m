X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["877" "Wednesday" "16" "September" "2020" "23:57:52" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.78.906.2009162354330.10832@xnncv>" "27" "[oss-security] CVE-2020-25084 QEMU: usb: use-after-free issue while setting up packet" nil nil nil "9" "2020091618:27:52" "[oss-security] CVE-2020-25084 QEMU: usb: use-after-free issue while setting up packet" (number mark "U       ppandit@redh Sep 16   27/877   " thread-indent "\"[oss-security] CVE-2020-25084 QEMU: usb: use-after-free issue while setting up packet\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-25084 QEMU: usb: use-after-free issue while setting up packet" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19617 invoked by uid 550); 16 Sep 2020 18:28:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19598 invoked from network); 16 Sep 2020 18:28:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1600280883;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=BDaGJespaJqQaLhBWuSS5/nsmTb2d2ECCjiTNUX+/ac=;
	b=cKK+Q5H0sv/MNf4crPW602pfY6v3S/p1gxdMS+/5SiXo0+EOpahncv9nSZrEQamSdvlM1B
	cOolPNW7rQWDxu1XryUEmxqoDYV/3K45mM0KaM9IcOFAUXYJkJ/Z4NA2kA2X0eH5nlBgEX
	r+xVwxhVdPxS/ZCshxXYqxVeC6Izbsg=
X-MC-Unique: 5fQuZFZaOqu91DE3FOhxBA-1
Date: Wed, 16 Sep 2020 23:57:52 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
cc: bugs-syssec@rub.de
Message-ID: <nycvar.YSQ.7.78.906.2009162354330.10832@xnncv>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=ppandit@redhat.com
X-Mimecast-Spam-Score: 0.001
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] CVE-2020-25084 QEMU: usb: use-after-free issue while setting up
 packet

   Hello,

An use-after-free issue was found in USB(xHCI/eHCI) controller emulators of 
QEMU. It occurs while setting up USB packet, as usb_packet_map() routine may 
return an error, which was not checked. A guest user/process may use this flaw 
to crash the QEMU process resulting in DoS scenario.

Upstream patches:
-----------------
   -> https://lists.nongnu.org/archive/html/qemu-devel/2020-08/msg08050.html
   -> https://lists.nongnu.org/archive/html/qemu-devel/2020-08/msg08043.html

References:
-----------
   -> https://ruhr-uni-bochum.sciebo.de/s/NNWP2GfwzYKeKwE?path=%2Fxhci_uaf_2

* This issue was reported by Sergej Schumilo, Cornelius Aschermann, Simon
   Wrner of Ruhr-University Bochum.

* 'CVE-2020-25084' assigned via https://cveform.mitre.org


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

