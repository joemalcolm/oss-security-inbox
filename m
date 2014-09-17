X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/09/17/2
Message-ID: <CAA7hUgGu1ZiqD3ncQTYJrGgK0m40awMP6oSA9yS2dLL0A3aqnw@mail.gmail.com>
Date: Wed, 17 Sep 2014 12:02:03 +0200
From: Raphael Geissert <geissert@...ian.org>
To: Open Source Security <oss-security@...ts.openwall.com>
Cc: Steve French <sfrench@...ba.org>
Subject: CVE request: [CIFS] Possible null ptr deref in SMB2_tcon
Content-Type: text/plain; charset=utf-8

Hi,

Commit 18f39e7b[1] of the linux kernel repository fixes a remote null
pointer dereference on the client when it resolves DFS referrals but
the server deletes the IPC$ share. The commit has already been merged
for the 3.16, 3.14, and 3.10 branches.

Could a CVE id be assigned please?

Thanks in advance.

[1]https://github.com/torvalds/linux/commit/18f39e7be0121317550d03e267e3ebd4dbfbb3ce

Cheers,
-- 
Raphael Geissert - Debian Developer
www.debian.org - get.debian.net
