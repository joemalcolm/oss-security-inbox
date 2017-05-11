X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["765" "Thursday" "11" "May" "2017" "12:21:53" "-0400" "Vladis Dronov" "vdronov@redhat.com" "<1731133438.6882472.1494519713367.JavaMail.zimbra@redhat.com>" "27" "[oss-security] CVE-2017-7472 Linux kernel: KEYS: fix keyctl_set_reqkey_keyring() to not leak thread keyrings" nil nil nil "5" "2017051116:21:53" "[oss-security] CVE-2017-7472 Linux kernel: KEYS: fix keyctl_set_reqkey_keyring() to not leak thread keyrings" (number mark "U       vdronov@redh May 11   27/765   " thread-indent "\"[oss-security] CVE-2017-7472 Linux kernel: KEYS: fix keyctl_set_reqkey_keyring() to not leak thread keyrings\"\n") "<2045504338.6880508.1494519270013.JavaMail.zimbra@redhat.com>" ("<2045504338.6880508.1494519270013.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7976 invoked by uid 550); 11 May 2017 16:22:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7953 invoked from network); 11 May 2017 16:22:05 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 85EAAC057FA8
Authentication-Results: ext-mx08.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx08.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=vdronov@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com 85EAAC057FA8
Date: Thu, 11 May 2017 12:21:53 -0400 (EDT)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <1731133438.6882472.1494519713367.JavaMail.zimbra@redhat.com>
In-Reply-To: <2045504338.6880508.1494519270013.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.1.12, 10.4.195.3]
Thread-Topic: CVE-2017-7472 Linux kernel: KEYS: fix keyctl_set_reqkey_keyring() to not leak thread keyrings
Thread-Index: 0cmp5i6vtxZ/c2BCxksViljVZTngJw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Thu, 11 May 2017 16:21:53 +0000 (UTC)
Subject: [oss-security] CVE-2017-7472 Linux kernel: KEYS: fix keyctl_set_reqkey_keyring()
 to not leak thread keyrings

Hello,

A vulnerability was found in the Linux kernel from v2.6.29-rc1 (since
commit d84f4f992cbd) upto v4.11-rc8 (commit c9f838d104). It was found
that keyctl_set_reqkey_keyring() function leaks thread keyring which
allows unprivileged local user to exhaust kernel memory and thus to
cause DoS.

cvss3=5.5/CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:H
cwe=CWE-400

References:

https://lkml.org/lkml/2017/4/1/235

https://lkml.org/lkml/2017/4/3/724

https://bugzilla.redhat.com/show_bug.cgi?id=1442086

https://bugzilla.novell.com/show_bug.cgi?id=1034862

Upstream patch:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=c9f838d104fed6f2f61d68164712e3204bf5271b

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
