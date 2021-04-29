X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/04/29/4
Message-ID: <c2f4a07b-45e-0b1-a7eb-22db2e584460@dereferenced.org>
Date: Thu, 29 Apr 2021 08:15:10 -0600 (MDT)
From: Ariadne Conill <ariadne@...eferenced.org>
To: oss-security@...ts.openwall.com
cc: Ariadne Conill <ariadne@...eferenced.org>,  "security-officer@....org" <security-officer@....org>
Subject: Re: ISC discloses three BIND vulnerabilities (CVE-2021-25214, CVE-2021-25215, and CVE-2021-25216)
Content-Type: text/plain; charset=utf-8

Hello,

On Thu, 29 Apr 2021, Ondřej Surý wrote:

> Hi Ariande,
>
> BIND 9.17.x was using the system SPNEGO since 9.17.2 (I think).
>
> Also for older versions, it should be enough to use --disable-isc-spnego if you can’t patch it (that’s what I am doing for Debian buster).  It just won’t work with Heimdal krb5, but it compiles just fine with MIT krb5.

Yeah, we've always built with --disable-isc-spnego, so no problem there.

I wound up just upgrading every branch still supportd to 9.16.15.  Seemed 
like the easiest way.

Ariadne
