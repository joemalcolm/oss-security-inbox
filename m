X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/05/28/5
Message-ID: <CALCETrXndwyN0K+Zigdu3Gx+YvUy4x1WN_=eKO5Q5fN+w0ETcw@mail.gmail.com>
Date: Wed, 28 May 2014 14:45:59 -0700
From: Andy Lutomirski <luto@...capital.net>
To: oss-security@...ts.openwall.com
Subject: CVE request: Linux kernel DoS with syscall auditing
Content-Type: text/plain; charset=utf-8

Issuing a system call with a random large number will OOPS, depending
on configuration.  A configuration that will enable this bug is:

# auditctl -a exit,always -S open

No privilege whatsoever is required to trigger the OOPS.

It's possible that this can be extended to more than just a DoS --
with some care and willingness to exploit timing attacks, this is a
read of arbitrary single bits in kernel memory.

--Andy
