X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["669" "Friday" "26" "February" "2021" "20:16:15" "+0530" "P J P" "ppandit@redhat.com" nil "20" "[oss-security] CVE-2021-3416 QEMU: net: infinite loop in loopback mode may lead tostack overflow" nil nil nil "2" nil nil (number mark "U       ppandit@redh Feb 26   20/669   " thread-indent "\"[oss-security] CVE-2021-3416 QEMU: net: infinite loop in loopback mode may lead tostack overflow\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-3416 QEMU: net: infinite loop in loopback mode may lead tostack overflow" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19494 invoked by uid 550); 26 Feb 2021 14:46:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19467 invoked from network); 26 Feb 2021 14:46:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614350783;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=520XNm4qgPpz8ekuQ8nY0pL7n95Lb3gsoX73Nc3daKg=;
	b=etTDtJheU3kxV6aZ+ORKSSLLQc/oukQMS1FLaao3OaxjQZtLWg3XD8IINjXVVe5EsT4dfm
	Df+VlFy4WLp+Soe/vjj68Reaoc/C8JBj3qrNwHX5H7klRqJysq96bXek0Nhuav74CsgL5I
	xk3rF7FelA3do/r3Nah9AspmkblCuSU=
X-MC-Unique: -6UJ6SfKNTyx4Y0gAfz4Dw-1
Date: Fri, 26 Feb 2021 20:16:15 +0530 (IST)
From: P J P <ppandit@redhat.com>
To: oss security list <oss-security@lists.openwall.com>
Message-ID: <5s13663-1p72-s775-1762-6sp1qr114s39@erqung.pbz>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=ppandit@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] CVE-2021-3416 QEMU: net: infinite loop in loopback mode may lead
 tostack overflow

   Hello,

A potential stack overflow via infinite loop issue was found in various NIC 
emulators of QEMU. The said issue occurs in loopback mode of a NIC wherein 
reentrant DMA checks may get bypassed. A guest user/process may use this flaw 
to consume cpu cycles or crash the QEMU process on the host resulting in DoS 
scenario.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2021-02/msg07431.html
   -> https://lists.gnu.org/archive/html/qemu-devel/2021-02/msg07484.html

'CVE-2021-3416' assigned via Red Hat Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

