X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/01/19/13
Message-ID: <20160119192412.1a96c226@pc1>
Date: Tue, 19 Jan 2016 19:24:12 +0100
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: out-of-bounds write with cpio 2.11
Content-Type: text/plain; charset=utf-8

On Tue, 19 Jan 2016 13:45:05 -0300
Gustavo Grieco <gustavo.grieco@...il.com> wrote:

> An out-of-bounds write in cpio 2.11 was found in the parsing of cpio
> files (other version are probably affected).  Find attached a test
> case to reproduce it. The ASAN report is here:

Is this a duplicate of CVE-2014-9112?
https://lists.gnu.org/archive/html/bug-cpio/2014-11/msg00007.html

cpio is esentially unmaintained upstream.

-- 
Hanno Böck
http://hboeck.de/

mail/jabber: hanno@...eck.de
GPG: BBB51E42

Content of type "application/pgp-signature" skipped
