X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/01/9
Message-ID: <b49b3928-656b-461b-b3fb-a7b543d0f53d@oracle.com>
Date: Wed, 1 Jul 2026 11:07:34 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Vinyl Cache / Varnish Cache HTTP/2 parsing deficiency [CVE-2026-50052]
Content-Type: text/plain; charset=utf-8

https://vinyl-cache.org/security/VSV00019.html says:
> Originally published 2026-05-18, last updated 2026-06-28
> 
> CVE-2026-50052
> 
> A deficiency in HTTP/2 request parsing can be exploited to launch a backend
> request desync attack (request smuggling), which in turn can be used for cache
> poisoning, authentication bypass or possibly even information disclosure and
> manipulation.
> 
> The attack vector only exists if HTTP/2 support is enabled by setting the
> feature parameter to contain +http2. HTTP/2 support is disabled by default.
> 
> We recommend to upgrade to a version which is not affected, to disable
> HTTP/2 support or to mitigate the issue in VCL, as detailed below.
> 
> Versions affected
> 
>   - Vinyl Cache 9.0.0
> 
>   - Varnish Cache by Varnish Software up to and including 9.0.2
> 
>   - All Varnish Cache Releases from 7.6.0 up to and including 8.0.1
> 
>   - Varnish Cache 6.0 LTS series from 6.0.14 up to and including 6.0.17.
> 
> Versions not affected
> 
>   - Vinyl Cache 9.0.1 (released 2026-05-18)
> 
>   - Vinyl Cache main branch at commit dfc27fb4e7bf110945f5c145ce95b8de14ead77f
>     or later
> 
>   - Varnish Cache by Varnish Software 9.0.3 (released 2026-05-18)
> 
>   - Varnish Cache 8.0.2 (released 2026-05-18)
> 
>   - Varnish Cache 6.0 LTS version 6.0.18 (2026-05-18)
> 
>   - Varnish Enterprise by Varnish Software
> 
> Mitigation Options
> 
> Several options to mitigate this issue exist. The safest is disabling HTTP/2.

[See https://vinyl-cache.org/security/VSV00019.html for full details.]

> Acknowledgements and credits
> 
> We thank Lam Jun Rong of Calif.io, who used Anthropic Research’s tool “Claude”,
> for reporting this issue.
> 
> For the Vinyl Cache project, the issue has been handled by Nils Goroll of UPLEX.
> The merged fix is a slight variation of the proposed fix by Lam Jun Rong,
> which had already been found independently by Dridi Boukelmoune.

https://blog.calif.io/p/mad-bugs-my-cousin-vinyl-cve-2026 provides the story of
how it was found by the researcher.
