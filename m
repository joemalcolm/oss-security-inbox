X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/01/09/1
Message-ID: <1893206460.1156981231526184017.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Fri, 9 Jan 2009 13:36:24 -0500 (EST)
From: Josh Bressers <bressers@...hat.com>
To: oss-security <oss-security@...ts.openwall.com>
Subject: libpng non issue
Content-Type: text/plain; charset=utf-8

I figured I'd put this out in the open before it gets picked up and causes
confusion.

The libpng main page (http://libpng.sourceforge.net/index.html) currently contains
this:

UPDATE 18 December 2008: The latest released versions are libpng-1.0.42 and
libpng-1.2.34. They fix a vulnerability to a possible double-free in
png_check_keyword() while writing various chunk types.

This isn't a double free, nor would I consider it a security bug.  Our libpng
maintainer Tom Lane helped out with this analysis.

As best as I can tell, this is the bug in question:
http://sourceforge.net/mailarchive/forum.php?thread_name=4B6F0239C13D0245820603C036D180BC79FBAA%40CABOTUKEXCH01.cabot.local&forum_name=png-mng-implement

which results in writing a NULL byte to an arbitrary location in memory.

Here is what Tom Lane said about this:

    Some poking around shows that png_check_keyword is called in subroutines
    that *write* PNG chunks, not ones that read them. So the problem could
    only manifest in programs that were creating new PNG files and trying
    to put illegal-per-spec content in them. Also, in typical usage the
    keywords being checked would be constant strings in the app, thus even
    less likely to trigger the overlength error. (It seems likely that this
    code has actually never been executed anywhere, explaining why the bug
    went undetected.)

So unless someone sees a flaw in this analysis, Red Hat has no plans to consider this a security flaw.

Thanks.

-- 
    JB
