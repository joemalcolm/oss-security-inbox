X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/01/06/14
Message-ID: <872510506.193295.1294339837872.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Thu, 6 Jan 2011 13:50:37 -0500 (EST)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley <coley@...re.org>
Subject: Re: CVE request: hastymail before 1.01 XSS
Content-Type: text/plain; charset=utf-8

Please use CVE-2010-4646 for this.

Thanks.

-- 
     JB

----- Original Message -----
> See
> http://www.hastymail.org/security/
> 
> "Many thanks to Julien CAYSSOL who discovered and reported the issue.
> The
> specific problem is an XSS attack vector in HTML formatted messages
> that takes
> advantage of background attributes used with table cell elements. Due
> to an
> incorrect implementation of the new htmLawed HTML filter this
> attribute value
> was not properly sanitized and could be used to inject executable
> JavaScript.
> This was NOT a flaw in the htmLawed filter code itself, but a problem
> with
> it's specific use in Hastymail2. The Hastymail2 1.01 release was
> pacakages
> specifically to address this one issue. "
> 
> --
> Hanno Böck Blog: http://www.hboeck.de/
> GPG: 3DBD3B20 Jabber/Mail: hanno@...eck.de
> 
> http://schokokeks.org - professional webhosting
