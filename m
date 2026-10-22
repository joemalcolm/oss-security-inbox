X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/22/31
Message-ID: <atp4q8xisOfItlLM@donburi.himad.notcom.org>
Date: Fri, 23 Oct 2026 00:07:04 +0300
From: Valtteri Vuorikoski <vuori@...com.org>
To: oss-security@...ts.openwall.com
Subject: Re: Information for Python users regarding eMudhra / emSign CA certificate security incident
Content-Type: text/plain; charset=utf-8

Having spent the day whacking this particular molehill, my strong opinion is
that these packages (minus certifi) should stop vendoring roots immediately.

Users should install their distro's ca-certificates package or similar. If that
is completely impossible for whatever reason, offer an option to use certifi
(which should be a dependency, not vendored) - but the system trust store should
be the default source of truth.

This sort of easter egg hiding to serve users with broken installations reduces
the security of everyone else.

(Missing from the quoted list: botocore also includes a vendored copy. I haven't
checked how it's used.)

 -valtteri


On Thu, Oct 22, 2026 at 01:43:08PM -0700, Alan Coopersmith wrote:
> https://discuss.python.org/t/information-for-python-users-regarding-emudhra-emsign-ca-certificate-security-incident/109576
> has this statement from Seth Michael Larson:
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
