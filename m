X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["822" "Wednesday" "19" "December" "2018" "05:08:07" "-0500" "Vladis Dronov" "vdronov@redhat.com" "<110923674.56846830.1545214087115.JavaMail.zimbra@redhat.com>" "23" "[oss-security] CVE-2018-16884: Linux kernel: nfs: use-after-free in svc_process_common()" nil nil nil "12" "2018121910:08:07" "[oss-security] CVE-2018-16884: Linux kernel: nfs: use-after-free in svc_process_common()" (number mark "U       vdronov@redh Dec 19   23/822   " thread-indent "\"[oss-security] CVE-2018-16884: Linux kernel: nfs: use-after-free in svc_process_common()\"\n") "<2133698682.56846374.1545213761527.JavaMail.zimbra@redhat.com>" ("<2133698682.56846374.1545213761527.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26245 invoked by uid 550); 19 Dec 2018 10:08:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26224 invoked from network); 19 Dec 2018 10:08:19 -0000
Date: Wed, 19 Dec 2018 05:08:07 -0500 (EST)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <110923674.56846830.1545214087115.JavaMail.zimbra@redhat.com>
In-Reply-To: <2133698682.56846374.1545213761527.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.67.112.35, 10.4.195.19]
Thread-Topic: CVE-2018-16884: Linux kernel: nfs: use-after-free in svc_process_common()
Thread-Index: wW0GGwkx7Lp7l67b9oMvUo/J70ko4w==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]); Wed, 19 Dec 2018 10:08:07 +0000 (UTC)
Subject: [oss-security] CVE-2018-16884: Linux kernel: nfs: use-after-free in
 svc_process_common()

Heololo,

A flaw was found in the Linux kernel in the NFS4 subsystem. NFS41+ shares mounted
in different network namespaces at the same time can make bc_svc_process() use wrong
back-channel id and cause a use-after-free. Thus a malicious container user can cause
a host kernel memory corruption and a system panic. Due to the nature of the flaw,
privilege escalation cannot be fully ruled out.

The CVE-2018-16884 id was assigned to this flaw and proposed to MITRE. We would like
to suggest to use this id in public communications regarding this flaw.

A proposed patchset and a discussion:

https://patchwork.kernel.org/cover/10733767/

https://patchwork.kernel.org/patch/10733769/

References:

https://bugzilla.redhat.com/show_bug.cgi?id=1660375

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
