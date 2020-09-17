X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["782" "Thursday" "17" "September" "2020" "15:43:46" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.78.906.2009171539530.10832@xnncv>" "22" "[oss-security] CVE-2020-25625 QEMU: usb: hcd-ohci: infinite loop issue while processing transfer descriptors" "^Date:" nil nil "9" "2020091710:13:46" "[oss-security] CVE-2020-25625 QEMU: usb: hcd-ohci: infinite loop issue while processing transfer descriptors" (number mark "U       ppandit@redh Sep 17   22/782   " thread-indent "\"[oss-security] CVE-2020-25625 QEMU: usb: hcd-ohci: infinite loop issue while processing transfer descriptors\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-25625 QEMU: usb: hcd-ohci: infinite loop issue while processing transfer descriptors" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30312 invoked by uid 550); 17 Sep 2020 10:14:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30291 invoked from network); 17 Sep 2020 10:14:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1600337636;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=DRj7A11yxW9yRgB6YVMLADkCoLwivZDSF0Fj6yGaPik=;
	b=Ee/XdQAE+ylUGpv/rW0vC8dE6ZZLf5E2k0OJYCU9I4McLpctZcXDF299RYRW8p+pzJb9uk
	x0W+bMkxbD2YOowhrct5YitSH+jIFWJ1h5i3kvGaoZSiLE+wpdmg8dA6/a+S00OVuxTqS4
	XI3W4Sx588Qzh2Jrod6TzLlL4078zMk=
X-MC-Unique: mE6egO2jPpelbNqdUwr9Wg-1
X-X-Sender: pjp@kaapi
Message-ID: <nycvar.YSQ.7.78.906.2009171539530.10832@xnncv>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=ppandit@redhat.com
X-Mimecast-Spam-Score: 0.001
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; format=flowed; charset=US-ASCII
Date: Thu, 17 Sep 2020 15:43:46 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2020-25625 QEMU: usb: hcd-ohci: infinite loop issue while
 processing transfer descriptors
To: oss security list <oss-security@lists.openwall.com>

   Hello,

An infinite loop issue was found in the USB OHCI controller emulator of QEMU. 
It could occur while servicing OHCI isochronous transfer descriptors (TD) in 
ohci_service_iso_td routine, as it retires a TD if it has passed its time 
frame. While doing so it does not check if the TD was already processed ones 
and holds an error code in TD_CC. It may happen if the TD list has a loop.

A guest user/process may use this flaw to consume cpu cycles on the host 
resulting in a DoS scenario.

Upstream patch:
---------------
   -> https://lists.nongnu.org/archive/html/qemu-devel/2020-09/msg05905.html

'CVE-2020-25625' assigned via https://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

