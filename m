X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/10/20/3
Message-ID: <CABoG-=WFe8UUEBsC6cOXwMmWGWoi3ZpyyVifn1afRgdPKo9YZw@mail.gmail.com>
Date: Mon, 20 Oct 2014 09:17:20 +0000
From: Stephen Röttger <stephen.roettger@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: attacking hsts through ntp
Content-Type: text/plain; charset=utf-8

>What about RFC 5906 and the current authentication schemes
> (http://www.eecis.udel.edu/~mills/ntp/html/authentic.html) ?

The protocol from RFC 5906 is completely broken:
  http://www.eecis.udel.edu/~mills/security.html
  http://zero-entropy.de/autokey_analysis.pdf

The symmetric schemes are probably fine but hard to set up. But it looks
like the NIST provides authenticated NTP:
http://www.nist.gov/pml/div688/grp40/auth-ntp.cfm

