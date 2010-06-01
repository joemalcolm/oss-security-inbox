X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/06/01/10
Message-Id: <20100601145556.429586c0.michael.s.gilbert@gmail.com>
Date: Tue, 1 Jun 2010 14:55:56 -0400
From: Michael Gilbert <michael.s.gilbert@...il.com>
To: oss-security@...ts.openwall.com
Cc: Josh Bressers <bressers@...hat.com>, "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE request: ghostscript and gv
Content-Type: text/plain; charset=utf-8

On Tue, 1 Jun 2010 14:41:41 -0400 (EDT), Josh Bressers wrote:
> Please use CVE-2010-2055 for this.
> 
[...]
> > In the Debian bug report Paul also mentiones that gv creates a
> > temporary file in an insecure way:
> > http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=583316#10

should the insecure temp file get its own id since it is rather
different than the original problem?

| I slightly wonder about the writing of the tmp file
|  open("/tmp/gv_random_some.pdf.tmp", O_WRONLY|O_CREAT|O_TRUNC, 0666)
| from within gs (no O_EXCL so would follow a symlink allowing clobber).

mike
