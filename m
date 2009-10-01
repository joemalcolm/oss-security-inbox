X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/10/01/2
Message-ID: <856310338.1352081254423016480.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Thu, 1 Oct 2009 14:50:16 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: coley <coley@...re.org>
Cc: oss-security <oss-security@...ts.openwall.com>
Subject: CVE Request (kernel)
Content-Type: text/plain; charset=utf-8

Hi Steve,

There is an information leak issue in the Linux Kernel:
http://lkml.org/lkml/2009/10/1/164

It seems that an ia32 process running on an ia64 machine could see register
contents from a previous process.

Thanks.

-- 
    JB
