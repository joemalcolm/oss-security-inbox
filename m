X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/12/18/10
Message-ID: <1418910816.5935.15.camel@juliet.mcarpenter.org>
Date: Thu, 18 Dec 2014 14:53:36 +0100
From: Martin Carpenter <mcarpenter@...e.fr>
To: oss-security@...ts.openwall.com
Subject: Re: Running Java across a privilege boundry
Content-Type: text/plain; charset=utf-8

On Thu, 2014-12-18 at 10:45 +0100, Jakub Wilk wrote:

> https://bugs.debian.org/754278

Could this have been caught in package QA with an automated check on
R(UN)PATH? 

(If that exists, how did it get missed? If not, could it be added?
Where? https://wiki.debian.org/qa.debian.org).


Alternatively: is there ever a good argument for truly relative (ie not
"relative to $ORIGIN") R(UN)PATH? What would break if runtime linkers
did not accept relative R(UN)PATHs?


