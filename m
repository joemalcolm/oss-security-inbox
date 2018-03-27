X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["602" "Tuesday" "27" "March" "2018" "13:37:39" "-0400" "Vladis Dronov" "vdronov@redhat.com" "<1140246180.13859318.1522172259182.JavaMail.zimbra@redhat.com>" "19" "[oss-security] CVE-2018-1091: Linux kernel: a KVM guest kernel crash during core dump on POWER9 host" nil nil nil "3" "2018032717:37:39" "[oss-security] CVE-2018-1091: Linux kernel: a KVM guest kernel crash during core dump on POWER9 host" (number mark "U       vdronov@redh Mar 27   19/602   " thread-indent "\"[oss-security] CVE-2018-1091: Linux kernel: a KVM guest kernel crash during core dump on POWER9 host\"\n") "<1045568984.13856875.1522171877900.JavaMail.zimbra@redhat.com>" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9586 invoked by uid 550); 27 Mar 2018 17:37:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9559 invoked from network); 27 Mar 2018 17:37:50 -0000
Date: Tue, 27 Mar 2018 13:37:39 -0400 (EDT)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <1140246180.13859318.1522172259182.JavaMail.zimbra@redhat.com>
In-Reply-To: <1045568984.13856875.1522171877900.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.67.112.14, 10.4.195.9]
Thread-Topic: CVE-2018-1091: Linux kernel: a KVM guest kernel crash during core dump on POWER9 host
Thread-Index: lXEBFn8Xt8wLb9jM+eduyAuOxFj1NQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]); Tue, 27 Mar 2018 17:37:39 +0000 (UTC)
Subject: [oss-security] CVE-2018-1091: Linux kernel: a KVM guest kernel crash during core
 dump on POWER9 host

Hello,

A guest kernel crash can be triggered from unprivileged userspace during core
dump on POWER host due to a missing processor feature check and an erroneous
use of transactional memory (TM) instructions in the core dump path leading to
a denial of service.

References:

https://marc.info/?l=linuxppc-embedded&m=150535531910494&w=2

https://bugzilla.redhat.com/show_bug.cgi?id=1558149

An upstream fix:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=c1fa0768a8713b135848f78fd43ffc208d8ded70

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
