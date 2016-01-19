X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/01/19/14
Message-ID: <CACn5sdSaCfkaGyHKG3NkTMRg3bRzu2Zd5NVH8i15xG_skthTkQ@mail.gmail.com>
Date: Tue, 19 Jan 2016 15:33:09 -0300
From: Gustavo Grieco <gustavo.grieco@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: out-of-bounds write with cpio 2.11
Content-Type: text/plain; charset=utf-8

2016-01-19 15:24 GMT-03:00 Hanno Böck <hanno@...eck.de>:

> On Tue, 19 Jan 2016 13:45:05 -0300
> Gustavo Grieco <gustavo.grieco@...il.com> wrote:
>
> > An out-of-bounds write in cpio 2.11 was found in the parsing of cpio
> > files (other version are probably affected).  Find attached a test
> > case to reproduce it. The ASAN report is here:
>
> Is this a duplicate of CVE-2014-9112?
> https://lists.gnu.org/archive/html/bug-cpio/2014-11/msg00007.html


I think it is not. I'm testing in Ubuntu 14.04 and CVE-2014-9112 seems to
be fixed:

http://people.canonical.com/~ubuntu-security/cve/2014/CVE-2014-9112.html


>
>
> cpio is esentially unmaintained upstream.
>

I agree.


>
> --
> Hanno Böck
> http://hboeck.de/
>
> mail/jabber: hanno@...eck.de
> GPG: BBB51E42
>

