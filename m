X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/10/09/9
Message-ID: <alpine.GSO.2.20.1810091703270.29158@scrappy.simplesystems.org>
Date: Tue, 9 Oct 2018 17:14:45 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@...ple.dallas.tx.us>
To: oss-security@...ts.openwall.com
Subject: Re: ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)
Content-Type: text/plain; charset=utf-8

On Tue, 9 Oct 2018, Tavis Ormandy wrote:
>
> I think we should encourage switching to other document formats that we
> have a better handle on securing. If you do need untrusted ps, I think
> treating it the same as shell script file you downloaded from the internet.

Due to its valuable current usages (e.g. printing and format 
conversion) and its long legacy, Postscript is still a vital format to 
support in open source software.

How can software consuming Postscript be aware of its origin unless it 
is known to be produced directly by another application?

Edge applications such as web browsers may be able to help by adding 
warning dialogs when knowingly downloading Postscript content.

Bob
-- 
Bob Friesenhahn
bfriesen@...ple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
