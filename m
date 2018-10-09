X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/10/09/5
Message-ID: <20181009153006.GF21509@takahe.colorado.edu>
Date: Tue, 9 Oct 2018 09:30:06 -0600
From: Leonid Isaev <leonid.isaev@...a.colorado.edu>
To: oss-security@...ts.openwall.com
Subject: Re: ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)
Content-Type: text/plain; charset=utf-8

On Tue, Oct 09, 2018 at 06:58:39AM -0700, Tavis Ormandy wrote:
> Full working exploit that works in the last few versions is attached,
> viewing it in evince, imagemagick, gimp, okular, etc should add a line to
> ~/.bashrc.

Add zathura to the above list :)

> p.s. plz can we deprecate untrusted postscript :(

Which means any postscript file downloaded from the internet... Then how should
people read arXiv.org, for example?

Thanks,
L.

-- 
Leonid Isaev
