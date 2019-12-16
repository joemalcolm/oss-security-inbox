X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["593" "Monday" "16" "December" "2019" "11:33:02" "+0530" "P J P" "ppandit@redhat.com" nil "20" nil nil nil nil "12" nil nil (number mark "U       ppandit@redh Dec 16   20/593   " thread-indent "\"[oss-security] CVE-2019-19332 Kernel: kvm: OOB memory write via kvm_dev_ioctl_get_cpuid\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-19332 Kernel: kvm: OOB memory write via kvm_dev_ioctl_get_cpuid" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30120 invoked by uid 550); 16 Dec 2019 06:03:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30102 invoked from network); 16 Dec 2019 06:03:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1576476191;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=8imKFiXD8O5tcpl8okoCnOyr53X7lcWGQkPTn7Rrotc=;
	b=Woe2aQ6B1KYKEtfQHmT575Okwln9ZZTCGLJb4vSoB1vbd3VLtEwscxK4RxN4TcDjFhWVYs
	y3/nXLJiGTJ77ZooZALWOy5qakIhpk/gGx6iPBazZwH6y4jASb/dcy5ttleyUQaXHJHDXL
	rYG5Okf14RVCeNRbtY4SnOpH0d8MPzE=
Date: Mon, 16 Dec 2019 11:33:02 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
Message-ID: <nycvar.YSQ.7.76.1912161126040.314293@xnncv>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: 4xeuraWAMeK0qrb1SNl09g-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE-2019-19332 Kernel: kvm: OOB memory write via
 kvm_dev_ioctl_get_cpuid

   Hello,

An out-of-bounds memory write issue was found in the way Linux kernel's KVM=
=20
hypervisor handled 'KVM_GET_EMULATED_CPUID' ioctl(2) request to get cpuid=20
features emulated by the KVM hypervisor. A user/process able to access=20
'/dev/kvm' device could use this flaw to crash the system resulting in DoS=
=20
issue.

It was found by Syzkaller
   -> https://lore.kernel.org/kvm/000000000000ea5ec20598d90e50@google.com/

'CVE-2019-19332' was assigned by Red Hat Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

