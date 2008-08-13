X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/08/13/2
Message-ID: <Pine.GSO.4.51.0808122019150.26550@faron.mitre.org>
Date: Tue, 12 Aug 2008 20:23:33 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: phpmyadmin < 2.11.8
Content-Type: text/plain; charset=utf-8


On Fri, 8 Aug 2008, Nico Golde wrote:

> > Name: CVE-2008-3457
> > ...
>
> Hmm where is the issue here? Sure the application is
> vulnerable if an attacker can edit a file that is included
> all over the place. I think you have way more problems than
> an XSS in setup.php in such a case.

I agree that it doesn't sound like much of an issue (and setup.php being
left around sounds suspicious in itself), but we take the approach that if
a vendor thinks it's important enough to issue a security advisory, we'll
tag it on the assumption that vendors don't have any motivation to
over-inflate the importance of a bug without some consideration of
security risk.

- Steve
