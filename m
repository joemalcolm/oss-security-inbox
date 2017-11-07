X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/11/07/7
Message-ID: <1539240847.28577626.1510085696543.JavaMail.zimbra@redhat.com>
Date: Tue, 7 Nov 2017 15:14:56 -0500 (EST)
From: Vladis Dronov <vdronov@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2017-15102: Linux kernel: usb: NULL-deref due to a race condition in [legousbtower] driver
Content-Type: text/plain; charset=utf-8

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
