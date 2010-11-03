X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/11/03/3
Message-ID: <AANLkTint0ZwP96gquAc-ozmXyARBHEW9_RiFkWDo90s+@mail.gmail.com>
Date: Wed, 3 Nov 2010 18:19:56 -0400
From: Dan Rosenberg <dan.j.rosenberg@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: kernel: CAN information leak
Content-Type: text/plain; charset=utf-8

The CAN protocol uses the address of a kernel heap object as a proc
filename, revealing information that could be useful during
exploitation.

The below post also mentions a heap overflow.  While there is a
semantic overflow (17 bytes being copied into a 9-byte buffer), in
reality, the object whose member is being overflowed resides in a
kernel heap slab cache that includes enough padding that there is no
possible corruption.  So, it's a bug but not a vulnerability.

Reference:
http://marc.info/?l=linux-netdev&m=128872251418192&w=2

-Dan
