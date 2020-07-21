X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["695" "Tuesday" "21" "July" "2020" "17:23:52" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.78.906.2007211710040.4380@xnncv>" "23" "[oss-security] CVE-2020-15859 QEMU: net: e1000e: use-after-free while sending packets" "^cc:" nil nil "7" "2020072111:53:52" "[oss-security] CVE-2020-15859 QEMU: net: e1000e: use-after-free while sending packets" (number mark "U       ppandit@redh Jul 21   23/695   " thread-indent "\"[oss-security] CVE-2020-15859 QEMU: net: e1000e: use-after-free while sending packets\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-15859 QEMU: net: e1000e: use-after-free while sending packets" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3752 invoked by uid 550); 21 Jul 2020 11:54:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3731 invoked from network); 21 Jul 2020 11:54:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1595332443;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=WyoaxqOomReAYS254QAv0qMMQkUUfCwHQjVHMsrTnU8=;
	b=DN4RTCnHmJ8MZ2qZF1hEbFvqRATH4h2Jfh+vpcd1s2M1wGlcwplMtRBTw9hF70K2OUt1qx
	E9gvVX8oKSYU2y1jIQ3tzh5ujwTJ2xL08M91IT3BX/lY+fO+Zn6XObF8oUxuayfDcyY6Jp
	0GWX6hQ48czh36Uq+hBRnAyVgZ8qrGc=
X-MC-Unique: R22MOd7TPSCGvkeokJbWnA-1
X-X-Sender: pjp@kaapi
Message-ID: <nycvar.YSQ.7.78.906.2007211710040.4380@xnncv>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; format=flowed; charset=US-ASCII
cc: alxndr@bu.edu
Date: Tue, 21 Jul 2020 17:23:52 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2020-15859 QEMU: net: e1000e: use-after-free while sending
 packets
To: oss security list <oss-security@lists.openwall.com>

   Hello,

A use-after-free issue was found in the INTEL 82574 NIC (e1000e) emulator of 
the QEMU. It could occur while sending packets if the guest user set the 
packet data address to e1000e's MMIO address. A guest user/process could use 
this flaw to crash the QEMU process on the host resulting in DoS scenario.

Upstream patch:
----------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2020-07/msg05895.html

Reference:
----------
   -> https://bugs.launchpad.net/qemu/+bug/1886362

This issue was reported by Alexander Bulekov. CVE-2020-15859 assigned via 
Mitre.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

