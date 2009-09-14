X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/09/14/3
Message-ID: <20090914204006.13200df6@redhat.com>
Date: Mon, 14 Sep 2009 20:40:06 +0200
From: Tomas Hoger <thoger@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE for recent cyrus-imap issue
Content-Type: text/plain; charset=utf-8

On Tue, 8 Sep 2009 18:07:33 +0200 Nico Golde
<oss-security+ml@...lde.de> wrote:

> CVE-2009-2632

Looks like few more overflows were spotted and fixed by Dovecot
upstream while fixing this issue in their copy of CMU sieve code:

http://dovecot.org/list/dovecot-news/2009-September/000135.html

These seem to deserve separate CVE.

-- 
Tomas Hoger / Red Hat Security Response Team
