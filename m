X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2036" "Tuesday" "29" "September" "2020" "14:35:01" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.78.906.2009291216520.10832@xnncv>" "55" "[oss-security] QEMU: NULL pointer derefrence issues" nil nil nil "9" "2020092909:05:01" "[oss-security] QEMU: NULL pointer derefrence issues" (number mark "U       ppandit@redh Sep 29   55/2036  " thread-indent "\"[oss-security] QEMU: NULL pointer derefrence issues\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] QEMU: NULL pointer derefrence issues" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16240 invoked by uid 550); 29 Sep 2020 09:05:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16222 invoked from network); 29 Sep 2020 09:05:23 -0000
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601370311;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=Ny6rPqet5431ir0vN/vB2GQVoUIwRhcL8osqeThqvUE=;
	b=HxrrfGy8lj5nl0LGSgkHxjM4onUiQdRZucuW+yifElX809IzFhvOWkblM1fXBIdMzVCy92
	SclhVi9WxT+FokM+x7Ve4twV58DS2/qmQUgNgxGWQwZ6WWaYRen2CMRfoacL8sUV5xTwKJ
	ngIHBk7dMvnoaz5QrIQ72VmZwTWyT5s=
X-MC-Unique: KpsBRGjKPXmWDZuiN7O2bQ-1
Date: Tue, 29 Sep 2020 14:35:01 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
cc: bugs-syssec@rub.de
Message-ID: <nycvar.YSQ.7.78.906.2009291216520.10832@xnncv>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=ppandit@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] QEMU: NULL pointer derefrence issues

   Hello,

1. CVE-2020-25741 QEMU: fdc: null pointer dereference during r/w data transfer

A null pointer dereference issue was found in the Floppy disk emulator of 
QEMU. It could occur while transferring data via fdctrl_read_data(), 
fdctrl_write_data() routines, if current drive has a null block pointer. A 
guest may use this flaw to crash the QEMU process on the host resulting in DoS 
scenario.

References:
-----------
   -> https://lists.nongnu.org/archive/html/qemu-devel/2020-09/msg07779.html
   -> https://ruhr-uni-bochum.sciebo.de/s/NNWP2GfwzYKeKwE?path=%2Ffdc_nullptr1
===

2. CVE-2020-25742 QEMU: scsi: lsi: null pointer dereference during memory move

A null pointer dereference issue was found in the LSI53C895A SCSI Host Bus 
Adapter emulator of QEMU. It could occur while processing 'Memory Move' 
instructions to move data between dma memory and i/o address space via 
lsi_memcpy(). A guest user/process may use this flaw to crash the QEMU process 
resulting in DoS scenario.

References:
-----------
   -> https://lists.nongnu.org/archive/html/qemu-devel/2020-09/msg05294.html
   -> https://ruhr-uni-bochum.sciebo.de/s/NNWP2GfwzYKeKwE?path=%2Flsi_nullptr1
===


3. CVE-2020-25743 QEMU: ide: null pointer dereference while cancelling i/o operation

A null pointer dereference issue was found in the IDE disk emulator of QEMU. 
It could occur while cancelling an i/o operation via ide_cancel_dma_sync() 
routine, if a block drive pointer is null. A guest may use this flaw to crash 
the QEMU process on the host resulting in DoS scenario.

References:
-----------
   -> https://lists.nongnu.org/archive/html/qemu-devel/2020-09/msg01568.html
   -> https://ruhr-uni-bochum.sciebo.de/s/NNWP2GfwzYKeKwE?path=%2Fide_nullptr1b


* These issues were reported by Sergej Schumilo, Cornelius Aschermann, Simon
   Wrner of Ruhr-University Bochum.

* CVE-2020-2574[123]? assigned via -> https://cveform.mitre.org/


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

