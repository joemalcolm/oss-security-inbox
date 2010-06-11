X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/06/11/3
Message-ID: <AANLkTimHpj8mnxmzRTDizz1B3BMTPpuuveSRu76s48Hv@mail.gmail.com>
Date: Fri, 11 Jun 2010 16:32:41 -0400
From: Dan Rosenberg <dan.j.rosenberg@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE request - kernel: btrfs: prevent users from setting ACLs on files  they do not own
Content-Type: text/plain; charset=utf-8

Shi Weihua discovered that btrfs did not check ownership of files
before setting ACLs, allowing any user to set ACLs for any file,
completely bypassing all file permissions.  This wasn't reported as a
security issue, but it seems pretty serious to me (for those who use
btrfs).  See http://lkml.org/lkml/2010/5/17/544 for his original post.

-Dan
