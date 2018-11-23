X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["985" "Friday" "23" "November" "2018" "10:20:49" "-0500" "Vladis Dronov" "vdronov@redhat.com" "<2136822182.35841294.1542986449992.JavaMail.zimbra@redhat.com>" "28" "[oss-security] CVE-2018-16862: Linux kernel: cleancache: deleted files infoleak" nil nil nil "11" "2018112315:20:49" "[oss-security] CVE-2018-16862: Linux kernel: cleancache: deleted files infoleak" (number mark "U       vdronov@redh Nov 23   28/985   " thread-indent "\"[oss-security] CVE-2018-16862: Linux kernel: cleancache: deleted files infoleak\"\n") "<1044589746.35839697.1542986026378.JavaMail.zimbra@redhat.com>" ("<1044589746.35839697.1542986026378.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22043 invoked by uid 550); 23 Nov 2018 15:21:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22023 invoked from network); 23 Nov 2018 15:21:02 -0000
Date: Fri, 23 Nov 2018 10:20:49 -0500 (EST)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <2136822182.35841294.1542986449992.JavaMail.zimbra@redhat.com>
In-Reply-To: <1044589746.35839697.1542986026378.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.67.112.12, 10.4.195.1]
Thread-Topic: CVE-2018-16862: Linux kernel: cleancache: deleted files infoleak
Thread-Index: VCYKKmZDzc59ku6lg9obm9LRXRN/JQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Fri, 23 Nov 2018 15:20:50 +0000 (UTC)
Subject: [oss-security] CVE-2018-16862: Linux kernel: cleancache: deleted files infoleak

Heololo,

Vasily Averin and Pavel Tikhomirov from Virtuozzo Kernel Team
found way for an unprivileged user to access a content of a deleted file
of any other users on a file systems with enabled cleancache.

Under certain conditions it may not drop a content of a deleted
file on its last iput(). When a newly created file gets an inode number
of the previously deleted file its read can get the content of the deleted
file saved in cleancache.

For now only Xen's tmem driver registers itself as a backend for cleancache:

$ git grep cleancache_register_ops
...
drivers/xen/tmem.c:             err = cleancache_register_ops(&tmem_cleancache_ops);
mm/cleancache.c:int cleancache_register_ops(const struct cleancache_ops *ops)

This means only Xen's guests with tmem driver active are vulnerable.

References:

https://lore.kernel.org/patchwork/patch/1011367/

https://bugzilla.redhat.com/show_bug.cgi?id=1649017

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
