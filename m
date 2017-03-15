X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/03/16/3
Message-Id: <C54D7B3D-17DE-46FA-8E8E-382C4312B8A0@securitymouse.com>
Date: Wed, 15 Mar 2017 17:03:18 -0600
From: "Don A. Bailey" <donb@...uritymouse.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request for unchecked size argument in malloc() in CHICKEN Scheme
Content-Type: text/plain; charset=utf-8

I find this extremely amusing. 

https://www.securitymouse.com/lms-2014-06-23-7

D

> On Mar 15, 2017, at 4:47 PM, Peter Bex <peter@...e-magic.net> wrote:
> 
> Hello all,
> 
> I'd like to request a CVE for an unchecked malloc() argument in
> CHICKEN Scheme's SRFI-4 vector constructors, when allocating the
> vector in unmanaged memory.  Due to the missing range check, this
> could result in negative or too small size allocations, which would
> result in a crash or a buffer overrun, depending on the size.
> 
> This issue affects all current releases of CHICKEN Scheme, including
> the latest release, 4.12.0.
> 
> The official announcement was made here:
> http://lists.gnu.org/archive/html/chicken-announce/2017-03/msg00000.html
> 
> Cheers,
> Peter Bex

