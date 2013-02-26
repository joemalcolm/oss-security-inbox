X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/02/26/18
Message-ID: <20330483.qpQBG611Ln@devil>
Date: Wed, 27 Feb 2013 00:38:22 +0100
From: Agostino Sarubbo <ago@...too.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: psi+ stores the cache file as world-readable
Content-Type: text/plain; charset=utf-8

On Tuesday 26 February 2013 14:27:23 Seth Arnold wrote:
> Are there environments where ~/.cache isn't 0700 by default?
I don't know

You are completely right, but in case the .cache dir is not 0700, if these 
files are not world-readable the problem never exist.
-- 
Agostino Sarubbo
Gentoo Linux Developer
