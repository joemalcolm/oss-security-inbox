X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/06/06/3
Message-ID: <CAEmQOhBO3z-d+FPffzX3af5tf0i8wbzRB1xRZ8mG1N75DtyrgA@mail.gmail.com>
Date: Thu, 6 Jun 2013 10:19:22 +0200
From: Jonathan Salwan <jonathan.salwan@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE Request: Linux Kernel - Leak information in cdrom driver.
Content-Type: text/plain; charset=utf-8

Hi,

When we read a block from the disk it normally fills a buffer but if
the drive is malfunctioning there is a chance that it would only be
partially filled. The result is an leak information to userspace.

Patch applied and committed in the next-line :

http://git.kernel.org/cgit/linux/kernel/git/next/linux-next.git/commit/drivers/cdrom/cdrom.c?id=050e4b8fb7cdd7096c987a9cd556029c622c7fe2


Could you allocate a CVE id for this?

Thanks,

-- Jonathan
