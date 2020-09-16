X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["926" "Thursday" "17" "September" "2020" "00:25:27" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.78.906.2009170022480.10832@xnncv>" "25" "[oss-security] CVE-2020-25085 QEMU: sdhci: out-of-bounds access issue while doing multi block SDMA" nil nil nil "9" "2020091618:55:27" "[oss-security] CVE-2020-25085 QEMU: sdhci: out-of-bounds access issue while doing multi block SDMA" (number mark "U       ppandit@redh Sep 17   25/926   " thread-indent "\"[oss-security] CVE-2020-25085 QEMU: sdhci: out-of-bounds access issue while doing multi block SDMA\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-25085 QEMU: sdhci: out-of-bounds access issue while doing multi block SDMA" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15448 invoked by uid 550); 16 Sep 2020 18:55:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15430 invoked from network); 16 Sep 2020 18:55:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1600282537;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=Q11k9oXXfVKew1pcCX/+/2Wfi74wqJ0ldjNyWNNZONo=;
	b=FEdMcNgRWn4nRh63MM4hQCiCOBjaoSSGEUP8QpHRuPGuydpb/A++ikNqQEXCp+2Rp3CtIh
	cDlLelftBHQOgt9KdWhbXASCECHQ2HbG5cKx1VJDzvitu/IAf0IbNGs+eu0BO/yWro27YD
	WC3KJ95Nma9RljjKnTpzccR1lpAOp5Q=
X-MC-Unique: o73lpVn_MJKoIodKicGbew-1
Date: Thu, 17 Sep 2020 00:25:27 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
cc: bugs-syssec@rub.de
Message-ID: <nycvar.YSQ.7.78.906.2009170022480.10832@xnncv>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=ppandit@redhat.com
X-Mimecast-Spam-Score: 0.001
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] CVE-2020-25085 QEMU: sdhci: out-of-bounds access issue while doing
 multi block SDMA

   Hello,

An out-of-bounds r/w access issue was found in the SDHCI Controller emulator 
of QEMU. It may occur while doing multi block SDMA, if transfer block size 
exceeds the 's->fifo_buffer[s->buf_maxsz]' size. It'd leave the current 
element pointer 's->data_count' pointing out of bounds. Leading the subsequent 
DMA r/w operation to OOB access issue. A guest user/process may use this flaw 
to crash the QEMU process resulting in DoS scenario.

Upstream patches:
-----------------
   -> https://lists.nongnu.org/archive/html/qemu-devel/2020-09/msg00733.html
   -> https://lists.nongnu.org/archive/html/qemu-devel/2020-09/msg01439.html

* This issue was reported by Sergej Schumilo, Cornelius Aschermann, Simon
   Wrner of Ruhr-University Bochum.

* 'CVE-2020-25085' assigned via https://cveform.mitre.org


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

