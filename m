X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/06/26/18
Message-ID: <53AC5DEA.5080207@securityvulns.ru>
Date: Thu, 26 Jun 2014 21:53:01 +0400
From: Vladimir '3APA3A' Dubrovin <vlad@...urityvulns.ru>
To: oss-security@...ts.openwall.com, vdanen@...hat.com
CC: cve-assign@...re.org
Subject: Re: Re: Question regarding CVE applicability of missing HttpOnly flag
Content-Type: text/plain; charset=utf-8



At least sharing session with Flash application may require Javascript 
access to session cookies. It can be worked out in most cases, but it's 
not so simple as
"just make all session cookies HTTPOnly".

Kurt Seifried пишет:
> So with widespread XSS in mind, I think it's safe to say that
> virtually every web site (even sites that care deeply and spend
> time/money and have bug bounties) have lurking XSS flaws, which if
> HTTPOnly is not used can result in cookie theft. So in my mind
> HTTPOnly isn't an option any more, but a requirement, ergo in most
> situations no HTTPOnly = win a CVE.
>
>

