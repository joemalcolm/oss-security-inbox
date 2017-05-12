X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["601" "Friday" "12" "May" "2017" "09:24:56" "-0400" "Vladis Dronov" "vdronov@redhat.com" "<138470974.7338270.1494595496637.JavaMail.zimbra@redhat.com>" "21" "[oss-security] CVE-2017-7487: Linux kernel: ipx: call ipxitf_put() in ioctl error path" nil nil nil "5" "2017051213:24:56" "[oss-security] CVE-2017-7487: Linux kernel: ipx: call ipxitf_put() in ioctl error path" (number mark "U       vdronov@redh May 12   21/601   " thread-indent "\"[oss-security] CVE-2017-7487: Linux kernel: ipx: call ipxitf_put() in ioctl error path\"\n") "<1731133438.6882472.1494519713367.JavaMail.zimbra@redhat.com>" ("<1731133438.6882472.1494519713367.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30709 invoked by uid 550); 12 May 2017 13:25:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30691 invoked from network); 12 May 2017 13:25:09 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 250AD804E0
Authentication-Results: ext-mx03.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx03.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=vdronov@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com 250AD804E0
Date: Fri, 12 May 2017 09:24:56 -0400 (EDT)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <138470974.7338270.1494595496637.JavaMail.zimbra@redhat.com>
In-Reply-To: <1731133438.6882472.1494519713367.JavaMail.zimbra@redhat.com>
References: <1731133438.6882472.1494519713367.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.1.12, 10.4.195.2]
Thread-Topic: CVE-2017-7472 Linux kernel: KEYS: fix keyctl_set_reqkey_keyring() to not leak thread keyrings
Thread-Index: 0cmp5i6vtxZ/c2BCxksViljVZTngJyPN3Gy0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]); Fri, 12 May 2017 13:24:57 +0000 (UTC)
Subject: [oss-security] CVE-2017-7487: Linux kernel: ipx: call ipxitf_put() in ioctl error
 path

Hello,

A reference counter leak in Linux kernel in ipxitf_ioctl function was found
which results into use after free vulnerability that's triggerable from
unprivileged userspace when IPX interface is configured.

cvss3=5.6/CVSS:3.0/AV:L/AC:L/PR:L/UI:R/S:U/C:N/I:L/A:H
cwe=CWE-416

References:

https://patchwork.ozlabs.org/patch/757549/

https://bugzilla.redhat.com/show_bug.cgi?id=1447734

Upstream patch:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=ee0d8d8482345ff97a75a7d747efc309f13b0d80

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
