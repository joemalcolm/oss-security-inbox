X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["969" "Tuesday" "19" "May" "2020" "17:04:57" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.77.849.2005191700340.62159@xnncv>" "23" "[oss-security] CVE-2020-12888 Kernel: vfio: access to disabled MMIO space of some devices may lead to DoS scenario" nil nil nil "5" "2020051911:34:57" "[oss-security] CVE-2020-12888 Kernel: vfio: access to disabled MMIO space of some devices may lead to DoS scenario" (number mark "U       ppandit@redh May 19   23/969   " thread-indent "\"[oss-security] CVE-2020-12888 Kernel: vfio: access to disabled MMIO space of some devices may lead to DoS scenario\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-12888 Kernel: vfio: access to disabled MMIO space of some devices may lead to DoS scenario" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1217 invoked by uid 550); 19 May 2020 11:35:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1198 invoked from network); 19 May 2020 11:35:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589888109;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=V9jLGFGK8nKAFMpayGU7VGdcAJb5yVeD0SmMrGZrEZs=;
	b=Z/fuvAJ2Yr0HEMzgQyPo/SrdPwzemV2fZppYwa5C+9AIAc/dSItcSVBdhdjTryu2CIWgfw
	9VjUNBHFKdxzn9fqmq1FNkiOnvIRz3VHq87nMI09mIoZmOK5T5bFgO1ClXFYPuDRfsjDHI
	VarHFG3PgC6aCanTzJkkCst5krOacdo=
X-MC-Unique: yoKkKE-QP-CpkzoEggK5tQ-1
Date: Tue, 19 May 2020 17:04:57 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
Message-ID: <nycvar.YSQ.7.77.849.2005191700340.62159@xnncv>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] CVE-2020-12888 Kernel: vfio: access to disabled MMIO space of some
 devices may lead to DoS scenario

   Hello,

A flaw was found in the Linux kernel, where it allows userspace processes, for 
example, a guest VM, to directly access h/w devices via its VFIO driver 
modules. The VFIO modules allow users to enable or disable access to the 
devices' MMIO memory address spaces. If a user attempts to access (read/write) 
the devices' MMIO address space when it is disabled, some h/w devices issue an 
interrupt to the CPU to indicate a fatal error condition, crashing the system. 
This flaw allows a guest user or process to crash the host system resulting in 
a denial of service.

Upstream patch:
---------------
   -> https://lore.kernel.org/kvm/158871570274.15589.10563806532874116326.stgit@gimli.home/
   -> https://lore.kernel.org/kvm/158871401328.15589.17598154478222071285.stgit@gimli.home/

'CVE-2020-12888' requested via https://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

