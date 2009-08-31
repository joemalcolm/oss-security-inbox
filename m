X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/08/31/10
Message-ID: <20090831192834.GA27137@genua.de>
Date: Mon, 31 Aug 2009 21:28:34 +0200
From: Steffen Ullrich <Steffen_Ullrich@...ua.de>
To: Tomas Hoger <thoger@...hat.com>
Cc: oss-security@...ts.openwall.com, "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: Re: CVE request: perl-IO-Socket-SSL certificate hostname compare bug
Content-Type: text/plain; charset=utf-8

> 
> I ran some test on Net-SSLeay-1.35 and IO-Socket-SSL-1.30 and
> verify_hostname always returned error for NUL in both CN and SAN.

I just verified it for CN using the \0 certificate from sslsniff.
So it looks like it's not an issue for Net::SSLeay and IO::Socket::SSL.

Regards,
Steffen

-- 
GeNUA Gesellschaft für Netzwerk - und Unix-Administration mbH
Domagkstr. 7, D-85551 Kirchheim. http://www.genua.de
Tel: (089) 99 19 50-0, Fax: (089) 99 10 50 - 999

Geschäftsführer: Dr. Magnus Harlander, Dr. Michaela Harlander,
Bernhard Schneck. Amtsgericht München HRB 98238
