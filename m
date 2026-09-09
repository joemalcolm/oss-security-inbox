X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/09/3
Message-ID: <aqEoQWqA3pzV_0E5@definition.pseudorandom.co.uk>
Date: Wed, 9 Sep 2026 10:34:57 +0100
From: Simon McVittie <smcv@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: bubblewrap 0.12.0 fixes writes outside sandbox
Content-Type: text/plain; charset=utf-8

On Thu, 27 Aug 2026 at 23:04:23 +0100, Simon McVittie wrote:
>bubblewrap 0.12.0 fixes a security vulnerability
>involving symlink traversal during container setup:
><https://github.com/containers/bubblewrap/security/advisories/GHSA-pxhw-h44j-8pfx>.

CVE-2026-87766 has now been allocated for this vulnerability (thanks to 
Red Hat Product Security). I've updated the advisory accordingly.

     smcv
