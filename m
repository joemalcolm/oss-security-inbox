X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["667" "Monday" "18" "January" "2021" "19:48:07" "+0530" "P J P" "ppandit@redhat.com" "<p5o8qpsn-412o-3935-r5ss-n11o348op8s@erqung.pbz>" "19" "[oss-security] CVE-2020-29443 QEMU: ide: atapi: OOB access while processing read commands" nil nil nil "1" "2021011814:18:07" "[oss-security] CVE-2020-29443 QEMU: ide: atapi: OOB access while processing read commands" (number mark "U       ppandit@redh Jan 18   19/667   " thread-indent "\"[oss-security] CVE-2020-29443 QEMU: ide: atapi: OOB access while processing read commands\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-29443 QEMU: ide: atapi: OOB access while processing read commands" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19977 invoked by uid 550); 18 Jan 2021 14:18:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19954 invoked from network); 18 Jan 2021 14:18:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1610979498;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=E1cIC7JGcims823Cpv6DXC3aQ/1B4j/F9EvrpCp3mtQ=;
	b=cbtwRYNLoa06TczpZmxaOqjKanw7jp6m7VVzEVNd5m9lLD8kvVDDtA5UVQZPx9vOaidetA
	wNJW53w4kpyT6BURbk2A3Nx14ltHLwLPt8aFQHoaPREKUndX+pnzZbbFtbwUd3UawJ06m+
	zHvrJ6NOSJHwlfDKb5mg3s2ajDU3XX4=
X-MC-Unique: Kq48r2bTOc2dG9yX-GzZjA-1
Date: Mon, 18 Jan 2021 19:48:07 +0530 (IST)
From: P J P <ppandit@redhat.com>
To: oss security list <oss-security@lists.openwall.com>
cc: Wenxiang Qian <leonwxqian@gmail.com>
Message-ID: <p5o8qpsn-412o-3935-r5ss-n11o348op8s@erqung.pbz>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=ppandit@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] CVE-2020-29443 QEMU: ide: atapi: OOB access while processing read
 commands

   Hello,

An out-of-bounds read access issue was found in the ATAPI Emulator of QEMU. It 
occurs while processing ATAPI read command if logical block address(LBA) is 
set to an invalid value. A guest user may use this flaw to crash the QEMU 
process on the host resulting in DoS scenario.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2021-01/msg04255.html
   -> https://git.qemu.org/?p=qemu.git;a=commit;h=813212288970c39b1800f63e83ac6e96588095c6

This issue was reported by Wenxiang Qian of Tencent Blade Team.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

