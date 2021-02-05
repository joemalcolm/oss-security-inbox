X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["847" "Friday" "5" "February" "2021" "12:41:59" "+0530" "P J P" "ppandit@redhat.com" "<9rr66n72-o743-5psr-7797-or63q8758n42@erqung.pbz>" "23" "[oss-security] CVE-2021-20221 QEMU: aarch64: GIC: out-of-bound heap buffer access via an interrupt ID field" nil nil nil "2" "2021020507:11:59" "[oss-security] CVE-2021-20221 QEMU: aarch64: GIC: out-of-bound heap buffer access via an interrupt ID field" (number mark "U       ppandit@redh Feb  5   23/847   " thread-indent "\"[oss-security] CVE-2021-20221 QEMU: aarch64: GIC: out-of-bound heap buffer access via an interrupt ID field\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-20221 QEMU: aarch64: GIC: out-of-bound heap buffer access via an interrupt ID field" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29901 invoked by uid 550); 5 Feb 2021 07:12:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29883 invoked from network); 5 Feb 2021 07:12:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1612509128;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=LRjcLT8QZrifFfFAva+We5FDSLouNjL8xZtVSh2nS+I=;
	b=FSWc57MsLsFah0ER63EEwrgNy/NSe5MSGI+Bw9jylp8VFv2bGo9NoLT7EgrjZSoTeiGv4g
	6ZIoR29aOaEJAhdp4NwaTp9nTpq3ZBdHbtBn/X2ESx4DuAsMlpEaICh8ok9LMuAf5IOess
	0FAQBaxDJqP6bTzYQ1CtYc0tYohF6zM=
X-MC-Unique: JTh1Ls6COgmlyTh8y1XGww-1
Date: Fri, 5 Feb 2021 12:41:59 +0530 (IST)
From: P J P <ppandit@redhat.com>
To: oss security list <oss-security@lists.openwall.com>
Message-ID: <9rr66n72-o743-5psr-7797-or63q8758n42@erqung.pbz>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=ppandit@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] CVE-2021-20221 QEMU: aarch64: GIC: out-of-bound heap buffer access
 via an interrupt ID field

   Hello,

An out-of-bounds heap buffer access issue was found in the ARM Generic 
Interrupt Controller emulator of QEMU on aarch64 platform. The issue occurs 
because while writing an interrupt ID to the controller memory area, it is not 
masked to be 4 bits wide. It may lead to the said issue while updating 
controller state fields and their subsequent processing. A privileged guest 
user may use this flaw to crash the QEMU process on the host resulting in DoS 
scenario.

It requires unusual kernel start-up with 'kernel-irqchip=off'.

It does not affect default configuration ie. kernel-irqchip=on.

Upstream patch:
---------------
   -> https://gitlab.com/qemu-project/qemu/-/commit/edfe2eb4360cde4ed5d95bda7777edcb3510f76a

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

