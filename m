X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["625" "Tuesday" "7" "November" "2017" "15:14:56" "-0500" "Vladis Dronov" "vdronov@redhat.com" "<1539240847.28577626.1510085696543.JavaMail.zimbra@redhat.com>" "18" "[oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due to a race condition in [legousbtower] driver" nil nil nil "11" "2017110720:14:56" "[oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due to a race condition in [legousbtower] driver" (number mark "U       vdronov@redh Nov  7   18/625   " thread-indent "\"[oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due to a race condition in [legousbtower] driver\"\n") "<906136424.28576814.1510085319128.JavaMail.zimbra@redhat.com>" ("<906136424.28576814.1510085319128.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3572 invoked by uid 550); 7 Nov 2017 20:15:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3539 invoked from network); 7 Nov 2017 20:15:08 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 9E9B481DFB
Authentication-Results: ext-mx01.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx01.extmail.prod.ext.phx2.redhat.com; spf=fail smtp.mailfrom=vdronov@redhat.com
Date: Tue, 7 Nov 2017 15:14:56 -0500 (EST)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <1539240847.28577626.1510085696543.JavaMail.zimbra@redhat.com>
In-Reply-To: <906136424.28576814.1510085319128.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.67.112.17, 10.4.195.12]
Thread-Topic: CVE-2017-15102: Linux kernel: usb: NULL-deref due to a race condition in [legousbtower] driver
Thread-Index: cuUjS/h9kZMSbIbCPC09nV7keM+VYA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Tue, 07 Nov 2017 20:14:56 +0000 (UTC)
Subject: [oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due to a race
 condition in [legousbtower] driver

Heololo,

A race condition exists in Linux kernel since year 2003 through version 4.9-rc1
in [legousbtower] driver which allows a null pointer dereference caused by
not removing a device file interface on an error when the probe function is called.
This can cause a write-what-where condition by remapping dev->interrupt_out_buffer
in tower_write(), leading to privilege escalation.

References:

https://bugzilla.redhat.com/show_bug.cgi?id=1505905

An upstream patch:

https://github.com/torvalds/linux/commit/2fae9e5a7babada041e2e161699ade2447a01989

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
