X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/10/02/23
Message-ID: <20141002074304.0d2e65f4@hboeck.de>
Date: Thu, 2 Oct 2014 07:43:04 +0200
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: Re: More parser odities
Content-Type: text/plain; charset=utf-8

Am Wed, 1 Oct 2014 19:44:38 -0700
schrieb Michal Zalewski <lcamtuf@...edump.cx>:

> Anyway, I think that the confusion stemmed mostly from fairly
> inaccurate "vanity" pages, news articles, and "vulnerability checkers"
> that pulled off stuff like this
> (https://shellshocker.net/shellshock_test.sh):

I feel somewhat guilty here because I wrote one of the more popular
scripts out there [1]. It has been referenced in a number of somewhat
incorrect reportings about the apple update.

I'll add some clarification to the docs and will change the script in a
way that the output is less scary if the prefix-patch is installed.

[1] https://github.com/hannob/bashcheck

-- 
Hanno Böck
http://hboeck.de/

mail/jabber: hanno@...eck.de
GPG: BBB51E42

Download attachment "signature.asc" of type "application/pgp-signature" (820 bytes)
