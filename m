X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["569" "Tuesday" "3" "November" "2020" "16:25:31" "+0530" "P J P" "ppandit@redhat.com" "<p6n9p43q-n5s1-q123-43q2-35nn86n0oo1q@erqung.pbz>" "18" "[oss-security] CVE-2020-27152 Kernel: KVM: host stack overflow via loop due to lazy update IOAPIC" nil nil nil "11" "2020110310:55:31" "[oss-security] CVE-2020-27152 Kernel: KVM: host stack overflow via loop due to lazy update IOAPIC" (number mark "U       ppandit@redh Nov  3   18/569   " thread-indent "\"[oss-security] CVE-2020-27152 Kernel: KVM: host stack overflow via loop due to lazy update IOAPIC\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-27152 Kernel: KVM: host stack overflow via loop due to lazy update IOAPIC" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1145 invoked by uid 550); 3 Nov 2020 10:55:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1127 invoked from network); 3 Nov 2020 10:55:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1604400939;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=Es6dP8TcYaKOtDrUnQ0eEDlVhesDdfX5zzLaKH3NIAw=;
	b=GOzPKgH02A/kXmtjPVTX8ebIPRgHwDKIXBzMDmbXT4ljdxDeIryceZ9wogihaty+wc4AwN
	idOKaChX7cz2k6BUdWr/hsRTPmLgHWposiIXSxLuwy5UBBp6cb/h5HbRJ5VPf5rm/GSMqe
	TWpI2FJkE74d+nqbk1vXVr7REj5W5tU=
X-MC-Unique: UqygRvGhOPSwP5QB_Od4cQ-1
Date: Tue, 3 Nov 2020 16:25:31 +0530 (IST)
From: P J P <ppandit@redhat.com>
To: oss security list <oss-security@lists.openwall.com>
Message-ID: <p6n9p43q-n5s1-q123-43q2-35nn86n0oo1q@erqung.pbz>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=ppandit@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] CVE-2020-27152 Kernel: KVM: host stack overflow via loop due to lazy
 update IOAPIC

   Hello,

A stack overflow via an infinite loop condition issue was found in the KVM 
hypervisor of the Linux kernel. It could occur while processing interrupts 
because irq state is erroneously set. A guest user may use this flaw to crash 
the host kernel resulting in DoS scenario.

Upstream patch:
---------------
   -> https://git.kernel.org/linus/77377064c3a94911339f13ce113b3abf265e06da

'CVE-2020-27152' assigned via -> https://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

