X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["672" "Thursday" "2" "July" "2020" "11:28:46" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.77.849.2007021123400.6260@xnncv>" "20" "[oss-security] CVE-2020-15469 QEMU: MMIO ops null pointer dereference may lead to DoS" nil nil nil "7" "2020070205:58:46" "[oss-security] CVE-2020-15469 QEMU: MMIO ops null pointer dereference may lead to DoS" (number mark "U       ppandit@redh Jul  2   20/672   " thread-indent "\"[oss-security] CVE-2020-15469 QEMU: MMIO ops null pointer dereference may lead to DoS\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-15469 QEMU: MMIO ops null pointer dereference may lead to DoS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1711 invoked by uid 550); 2 Jul 2020 05:59:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1686 invoked from network); 2 Jul 2020 05:59:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593669536;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=Md4V/68vnTzk+DNdqv7Hqk83+fjjBVNF7t3ORxYcyiM=;
	b=W8aVlcL+65oFeQt6kON5B+cJ+9AdWHLiICtd4r4hIXfE0eh9mnnehRJpi489kW0Ql56Hto
	eUfgoMv/qbYT5EBvNuAl1wm882dSiQhH3BTcwEHUZHePw3Grdxe0H6n+BuWib9i84C6CT1
	IOjr0eF12CHhFno1CAH23gBQHGFJKnc=
X-MC-Unique: k3xHii38Mpa7ghd0X9T_cg-1
Date: Thu, 2 Jul 2020 11:28:46 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
cc: Lei Sun <slei.casper@gmail.com>
Message-ID: <nycvar.YSQ.7.77.849.2007021123400.6260@xnncv>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=ppandit@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] CVE-2020-15469 QEMU: MMIO ops null pointer dereference may lead to
 DoS

   Hello,

A NULL pointer dereference issue was found in various system emulators of 
QEMU. It could occur while performing MMIO r/w operations, in case the 
respective handler function is not defined. A privileged guest user able to 
invoke MMIO operation may use this flaw to crash the QEMU process on the host 
resulting in DoS scenario.

Upstream patch(es):
-------------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2020-06/msg09961.html

This issue was reported by Lei Sun(CC'd); CVE-2020-15469 assigned via
-> https://cveform.mitre.org/.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

