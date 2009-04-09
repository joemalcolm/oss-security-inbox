X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/04/09/2
Message-ID: <20090409121554.4ddabaf2@redhat.com>
Date: Thu, 9 Apr 2009 12:15:54 +0200
From: Tomas Hoger <thoger@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: clamav clamd and clamscan DoS and bypass by malformated archive
Content-Type: text/plain; charset=utf-8

On Tue, 7 Apr 2009 14:08:15 +0200 Thomas Biege <thomas@...e.de> wrote:

> These two bugs possibly need a CVE-ID.

Upstream 0.95.1 seems to fix at least 2 other issues that may be of
interest:

https://wwws.clamav.net/bugzilla/show_bug.cgi?id=1552
https://wwws.clamav.net/bugzilla/show_bug.cgi?id=1553

svn diff -c 5032 http://svn.clamav.net/svn/clamav-devel/

-- 
Tomas Hoger / Red Hat Security Response Team
