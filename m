X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/10/09/8
Message-ID: <20181009221050.44c7ca99@computer>
Date: Tue, 9 Oct 2018 22:10:50 +0200
From: Hanno Böck <hanno@...eck.de>
To: Leonid Isaev <leonid.isaev@...a.colorado.edu>
Cc: oss-security@...ts.openwall.com
Subject: Re: ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)
Content-Type: text/plain; charset=utf-8

Hi,

On Tue, 9 Oct 2018 09:30:06 -0600
Leonid Isaev <leonid.isaev@...a.colorado.edu> wrote:

> Which means any postscript file downloaded from the internet... Then
> how should people read arXiv.org, for example?

Surprised by this claim I did a quick check on arxiv. I don't see any
papers that are only available as postscript. All papers seem to be
available as PDF, some additionally as PS.

Which also makes sense: Many browsers support direct PDF display. While
PDF is also a complex format with pitfalls I'd still trust the
in-browser PDF readers much more than something like ghostscript.

If there are sites that rely on PS documents they should probably be
encouraged to do a server-side sandboxed auto-conversion of them and
offer PDF also.

-- 
Hanno Böck
https://hboeck.de/

mail/jabber: hanno@...eck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
