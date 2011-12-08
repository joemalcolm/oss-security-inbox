X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/12/08/3
Message-ID: <20111208191547.GQ12087@dhcp-25-225.brq.redhat.com>
Date: Thu, 8 Dec 2011 20:15:48 +0100
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE Request -- kernel: send(m)msg: user pointer dereferences
Content-Type: text/plain; charset=utf-8

Dereferencing a user pointer directly from kernel-space without going
through the copy_from_user family of functions is a bad idea. Two of
such usages can be found in the sendmsg code path called from
sendmmsg, added by upstream commit
c71d8ebe7a4496fb7231151cb70a6baa0cb56f9a. Usages are performed through
memcmp() and memcpy() directly. 

Upstream commit:
bc909d9ddbf7778371e36a651d6e4194b1cc7d4c

References:
https://bugzilla.redhat.com/show_bug.cgi?id=761646

Thanks,
-- 
Petr Matousek / Red Hat Security Response Team
