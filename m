X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/05/07/8
Message-ID: <u2p4a6942471005070720x9fcbe9e7h3a8bc971531ccd8e@mail.gmail.com>
Date: Fri, 7 May 2010 10:20:55 -0400
From: Dan Rosenberg <dan.j.rosenberg@...il.com>
To: oss-security@...ts.openwall.com
Cc: coley <coley@...re.org>
Subject: Re: CVE Assignment (gnustep)
Content-Type: text/plain; charset=utf-8

Note that there's a second bug in there - a potentially exploitable
integer overflow leading to heap overflow when reading a file (or
socket) with a very large number of lines, causing several malloc()
calls to underallocate space.  This should probably receive a second
CVE.

http://article.gmane.org/gmane.comp.lib.gnustep.bugs/12379

-Dan

On Fri, May 7, 2010 at 9:04 AM, Josh Bressers <bressers@...hat.com> wrote:
> A file contents disclosure flaw was found when gdomap is suid root:
>
> https://bugs.launchpad.net/ubuntu/+source/gnustep-base/+bug/573108
> http://thread.gmane.org/gmane.comp.lib.gnustep.bugs/12336
>
> I assigned CVE-2010-1457 to this.
>
> Thanks.
>
> --
>    JB
>
