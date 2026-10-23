X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/23/2
Message-ID: <atsIyOfO0lHiWMMy@symphytum.spacehopper.org>
Date: Fri, 23 Oct 2026 08:12:08 +0100
From: Stuart Henderson <stu@...cehopper.org>
To: oss-security@...ts.openwall.com
Subject: Re: Information for Python users regarding eMudhra / emSign CA certificate security incident
Content-Type: text/plain; charset=utf-8

On 2026/10/22 13:43, Alan Coopersmith wrote:
> > A security incident affecting eMudhra intermediate certificates has
> > required removing the emSign root CA certificate from CA bundles such
> > as “certifi”. It’s important to immediately upgrade the software
> > packages below to at least the versions specified and rebuild
> > container images with layer caching disabled to fetch the latest
> > system certificates. Failure to do so could result in
> > monster-in-the-middle (MITM) attacks against TLS clients, including
> > python.org and pypi.org .
> > 
> >     certifi 2026.10.19 (1)
> >     pip 26.2.2
> >     uv 0.13.4
> >     sigstore 4.5.1
> >     conda 26.9.4
> >     pixi 0.82.1

virtualenv 21.14.11 (has vendored pip) - note that this requires
python-discovery >= 1.6.1.

