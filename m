X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/12/18/18
Message-ID: <1418936361.5935.54.camel@juliet.mcarpenter.org>
Date: Thu, 18 Dec 2014 21:59:21 +0100
From: Martin Carpenter <mcarpenter@...e.fr>
To: oss-security@...ts.openwall.com
Subject: Re: Running Java across a privilege boundry
Content-Type: text/plain; charset=utf-8

On Thu, 2014-12-18 at 21:43 +0300, Alexander Cherepanov wrote:
> Relative paths is not the only problem. /tmp is even worse:
> 
> https://bugs.debian.org/759868

Nice, thanks. Revised:

8.7 RUNPATH and RPATH
Libraries that define RPATH or RUNPATH should ensure that this does not
contain relative paths or paths that traverse insecure directories
(eg /tmp or /var/tmp). This is to prevent an executable from loading a
library from an untrusted location. (This should include the corner
cases whereby the path list starts or ends with a colon, or includes two
consecutive colons).


("insecure directories" is intentionally broad (not just "world
writable"). Clarify?).

I'll file a bug against debian-policy in ~24h unless there are further
edits/additions/objections.


