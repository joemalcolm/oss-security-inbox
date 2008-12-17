X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/12/17/18
Message-Id: <1229517011.10038.5.camel@iankko.englab.brq.redhat.com>
Date: Wed, 17 Dec 2008 13:30:11 +0100
From: Jan Lieskovsky <jlieskov@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley@...re.org
Subject: Re:  Re: CVE Request - roundcubemail
Content-Type: text/plain; charset=utf-8

On Tue, 2008-12-16 at 20:31 -0500, Steven M. Christey wrote:
> On Sat, 13 Dec 2008, Florian Weimer wrote:
> 
> > * Ingrid wrote:
> >
> > > Therefore, I agree with Raphael that the issue has not been found yet.
> 
> The general issue of /e in preg_replace is covered by CWE-624 Executable
> Regular Expression Error (http://cwe.mitre.org/data/definitions/624.html)
> which has a couple other CVE examples.
> 
> I bet there's a chunk of these in various applications.  I believe Perl
> has similar functionality.


> Use CVE-2008-5619 for the issue.
> 
> Note there's a separate DoS issue, CVE-2008-5620.

Steve, thanks for pointing this out!

Regards, Jan.
--
Jan iankko Lieskovsky / Red Hat Security Response Team



