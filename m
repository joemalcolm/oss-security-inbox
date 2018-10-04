X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["881" "Thursday" "4" "October" "2018" "05:14:42" "-0400" "Vladis Dronov" "vdronov@redhat.com" "<1528769066.17980286.1538644482689.JavaMail.zimbra@redhat.com>" "25" "[oss-security] CVE-2018-14656: Linux kernel: arbitrary kernel memory dump into the dmesg log" "^Date:" nil nil "10" "2018100409:14:42" "[oss-security] CVE-2018-14656: Linux kernel: arbitrary kernel memory dump into the dmesg log" (number mark "        vdronov@redh Oct  4   25/881   " thread-indent "\"[oss-security] CVE-2018-14656: Linux kernel: arbitrary kernel memory dump into the dmesg log\"\n") "<1887125410.17978048.1538644159759.JavaMail.zimbra@redhat.com>" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9340 invoked by uid 550); 4 Oct 2018 09:14:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9320 invoked from network); 4 Oct 2018 09:14:54 -0000
Message-ID: <1528769066.17980286.1538644482689.JavaMail.zimbra@redhat.com>
In-Reply-To: <1887125410.17978048.1538644159759.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.200.25, 10.4.195.15]
Thread-Topic: CVE-2018-14656: Linux kernel: arbitrary kernel memory dump into the dmesg log
Thread-Index: 9O9yL8GuanqzdSrYeim+Sk4h2c/lTg==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.26
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]); Thu, 04 Oct 2018 09:14:43 +0000 (UTC)
Date: Thu, 4 Oct 2018 05:14:42 -0400 (EDT)
From: Vladis Dronov <vdronov@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2018-14656: Linux kernel: arbitrary kernel memory dump into the
 dmesg log
To: oss-security@lists.openwall.com

Heololo,

A missing address check in the callers of the show_opcodes() in the Linux kernel
allows an attacker to dump the kernel memory at an arbitrary kernel address into
the dmesg log. This affects the upstream Linux kernel as it was introduced by
ba54d856a9d8 and 7cccf0725cf7, both since v4.18-rc1 and fixed by 342db04ae712
since v4.19-rc2.

The CVE-2018-14656 was assigned to this flaw, I would suggest to use it in public
communications regarding this flaw.

References:

https://bugzilla.redhat.com/show_bug.cgi?id=1629940

https://bugs.chromium.org/p/project-zero/issues/detail?id=1650

https://lore.kernel.org/lkml/20180828154901.112726-1-jannh@google.com/T/

An upstream patch:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=342db04ae71273322f0011384a9ed414df8bdae4

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
