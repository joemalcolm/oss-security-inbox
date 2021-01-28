X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["652" "Thursday" "28" "January" "2021" "12:29:04" "+0530" "P J P" "ppandit@redhat.com" "<75q7866n-1r8s-1np8-sro1-o6268nn87n6@erqung.pbz>" "20" "[oss-security] CVE-2021-20196 QEMU: block: fdc: null pointer dereference may lead to guest crash" nil nil nil "1" "2021012806:59:04" "[oss-security] CVE-2021-20196 QEMU: block: fdc: null pointer dereference may lead to guest crash" (number mark "U       ppandit@redh Jan 28   20/652   " thread-indent "\"[oss-security] CVE-2021-20196 QEMU: block: fdc: null pointer dereference may lead to guest crash\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-20196 QEMU: block: fdc: null pointer dereference may lead to guest crash" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17709 invoked by uid 550); 28 Jan 2021 06:59:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17685 invoked from network); 28 Jan 2021 06:59:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1611817182;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=HPyB44g/XpaliY/Y1RNNUXpMoVjRd+iTdNy8NatL+BU=;
	b=cASczI5Ddv7UUmL9ehaFOeYHQ31nLS9g9YHJHZV5Pqk1QjixTSgM3MA33v9kbc6VCTAwcS
	tMw8ReFTRndsskIJDGZWW8Tcc+N0eqtzmfSjJb8huFOjwfiP3bOey/VBge1al+fznjKVZ5
	Hso2+hsuqSLY7RUbiy62XmigXlOgk4o=
X-MC-Unique: yLzo3uR-NDqk-5FSn78crw-1
Date: Thu, 28 Jan 2021 12:29:04 +0530 (IST)
From: P J P <ppandit@redhat.com>
To: oss security list <oss-security@lists.openwall.com>
cc: Gaoning Pan <pgn@zju.edu.cn>
Message-ID: <75q7866n-1r8s-1np8-sro1-o6268nn87n6@erqung.pbz>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=ppandit@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] CVE-2021-20196 QEMU: block: fdc: null pointer dereference may lead
 to guest crash

   Hello,

A NULL pointer dereference issue was found in the Floopy disk emulator of 
QEMU. It could occur while processing read/write ioport commands, if the 
selected Floopy drive is not initialised with a block device. A privileged 
guest user could use this flaw to crash the QEMU process on the host resulting 
in DoS scenario.

Upstream patch:
---------------
   -> https://lists.nongnu.org/archive/html/qemu-devel/2021-01/msg05986.html

This issue was reported by Gaoning Pan of Zhejiang University & Ant Security 
Light-Year Lab.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

