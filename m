X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/08/21/4
Message-ID: <alpine.GSO.2.20.1808210951110.18862@scrappy.simplesystems.org>
Date: Tue, 21 Aug 2018 10:00:26 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@...ple.dallas.tx.us>
To: oss-security@...ts.openwall.com
Subject: Re: Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?
Content-Type: text/plain; charset=utf-8

On Tue, 21 Aug 2018, Tavis Ormandy wrote:
>
> I think those thumbnails should be disabled, but you've probably noticed I
> think everything related to untrusted ghostscript should be disabled :-)

I have posted to the GraphicsMagick Announcements mailing list 
regarding your findings (with a link to this list) and suggested that 
a fool-proof solution is that Ghostscript should be uninstalled.

Uninstalling Ghostscript entirely might cause software using libgs to 
not execute at all unless a stub library is put in its place.

Dependencies on Ghostscript are much larger than one would initially 
think due to Postscript being the traditional output from Unix 
software for "printing" and thus it is used as an intermediate format 
in order to convert between formats.  EPS content is also embedded in 
some other formats.

Bob
-- 
Bob Friesenhahn
bfriesen@...ple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
