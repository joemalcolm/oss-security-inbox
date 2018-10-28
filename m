X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/10/29/1
Message-ID: <c90cd62c-7f5a-89dd-073b-200f93e97af7@treenet.co.nz>
Date: Mon, 29 Oct 2018 07:43:50 +1300
From: Amos Jeffries <squid3@...enet.co.nz>
To: oss-security@...ts.openwall.com
Subject: Re: Squid Proxy multiple vulnerabilities
Content-Type: text/plain; charset=utf-8

On 29/10/18 6:21 AM, Hanno Böck wrote:
> On Mon, 29 Oct 2018 05:13:40 +1300
> Amos Jeffries wrote:
> 
>> <http://www.squid-cache.org/Advisories/SQUID-2018_4.txt>
> 
> That gives a 404.

YMMV as third-party mirrors are still updating in some parts.

> 
> Also there's another yet unfixed vulnerability: The webpage and the
> downloads are not using HTTPS, which makes them vulnerable to
> man-in-the-middle attacks ;-)
> 

This is intentional. We do not restrict to those able to access HTTPS.

Also, notice that issue is most relevant to installations routinely
MITM'ing the HTTPS protocol.


AYJ



Download attachment "signature.asc" of type "application/pgp-signature" (834 bytes)
