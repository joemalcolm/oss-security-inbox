X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/09/21/1
Message-ID: <AANLkTik=KVOQQm5WMgY0PROt9hFBGr9V_1h1a9Csmw2-@mail.gmail.com>
Date: Tue, 21 Sep 2010 00:25:33 -0400
From: Dan Rosenberg <dan.j.rosenberg@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: kernel: Heap corruption in ROSE
Content-Type: text/plain; charset=utf-8

When binding a ROSE socket, the "srose_ndigis" field of the
user-provided sockaddr_rose struct is intended to be restricted to
less than ROSE_MAX_DIGIS.  However, since this field is a signed
integer, this check will pass when provided with a negative value,
allowing the "source_ndigis" field of the rose_sock struct (which is
an unsigned char) to be set to arbitrary values.  Then, by calling a
function such as rose_getname(), heap corruption results, since this
field is used as a maximum index to read from and write into an array
of ROSE_MAX_DIGIS size.  This can only be triggered by unprivileged
users when a ROSE device (e.g. rose0) exists.

Reference (and fix):
http://marc.info/?l=linux-netdev&m=128502238927086&w=2

-Dan
