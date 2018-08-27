X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["916" "Monday" "27" "August" "2018" "05:25:15" "-0400" "Vladis Dronov" "vdronov@redhat.com" "<1461055985.6797445.1535361915875.JavaMail.zimbra@redhat.com>" "26" "[oss-security] CVE-2018-10938: Linux kernel: net: infinite loop in net/ipv4/cipso_ipv4.c:cipso_v4_optptr() allows a remote DoS" "^Date:" nil nil "8" "2018082709:25:15" "[oss-security] CVE-2018-10938: Linux kernel: net: infinite loop in net/ipv4/cipso_ipv4.c:cipso_v4_optptr() allows a remote DoS" (number mark "        vdronov@redh Aug 27   26/916   " thread-indent "\"[oss-security] CVE-2018-10938: Linux kernel: net: infinite loop in net/ipv4/cipso_ipv4.c:cipso_v4_optptr() allows a remote DoS\"\n") "<1314155599.6796744.1535361538888.JavaMail.zimbra@redhat.com>" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12005 invoked by uid 550); 27 Aug 2018 09:25:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11986 invoked from network); 27 Aug 2018 09:25:29 -0000
Message-ID: <1461055985.6797445.1535361915875.JavaMail.zimbra@redhat.com>
In-Reply-To: <1314155599.6796744.1535361538888.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.5.28, 10.4.195.3]
Thread-Topic: CVE-2018-10938: Linux kernel: net: infinite loop in net/ipv4/cipso_ipv4.c:cipso_v4_optptr() allows a remote DoS
Thread-Index: Sh/9Ncp68iGSWLaYkACrdnEyaLkwdA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.44]); Mon, 27 Aug 2018 09:25:18 +0000 (UTC)
Date: Mon, 27 Aug 2018 05:25:15 -0400 (EDT)
From: Vladis Dronov <vdronov@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2018-10938: Linux kernel: net: infinite loop in
 net/ipv4/cipso_ipv4.c:cipso_v4_optptr() allows a remote DoS
To: oss-security@lists.openwall.com

Heololo,

A flaw was found in the Linux kernel present since v4.0-rc1 and through v4.13-rc4.
A crafted network packet sent remotely by an attacker may force the kernel to enter
an infinite loop in the cipso_v4_optptr() function in net/ipv4/cipso_ipv4.c leading
to a denial-of-service.

All the kernels with the cipso_v4_optptr() function which have not backported
the upstream commit 40413955ee26 are vulnerable.

Thanks to Yves Younan from Cisco for mentioning this.

References:

https://bugzilla.redhat.com/show_bug.cgi?id=1622404

Upstream Patch introduced the flaw:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=04f81f0154e4bf002be6f4d85668ce1257efa4d9

Upstream Patch fixed the flaw:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=40413955ee265a5e42f710940ec78f5450d49149

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
