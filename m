X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/04/17/6
Message-ID: <20080417163120.GA12716@ngolde.de>
Date: Thu, 17 Apr 2008 18:31:20 +0200
From: Nico Golde <oss-security+ml@...lde.de>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: tss <= 0.8.1-3: arbitary file reading
Content-Type: text/plain; charset=utf-8

Hi,
* Steve Kemp <steve@...ve.org.uk> [2008-04-12 21:39]:
>   Due to a lack of permissions checking, or privilege reduction
>  the setuid(0) binary tss allows local users to read arbitrary files
>  upon the local system.
> 
>   Sample "exploit" is:
> 
>               skx@...d:~$ tss -a /etc/shadow
[...] 
Steve (the mitre one :) did you miss that?
Kind regards
Nico
-- 
Nico Golde - http://www.ngolde.de - nion@...ber.ccc.de - GPG: 0x73647CFF
For security reasons, all text in this mail is double-rot13 encrypted.

Content of type "application/pgp-signature" skipped
