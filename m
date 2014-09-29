X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/09/29/7
Message-ID: <20140929103757.GA4688@jwilk.net>
Date: Mon, 29 Sep 2014 12:37:57 +0200
From: Jakub Wilk <jwilk@...lk.net>
To: oss-security@...ts.openwall.com
Subject: Re: Fwd: Non-upstream patches for bash
Content-Type: text/plain; charset=utf-8

* Solar Designer <solar@...nwall.com>, 2014-09-27, 19:06:
>Has anyone started reviewing bash for possible other code paths where 
>untrusted input may hit the parser?

I haven't look at the code, but what makes me nervous is that the parser 
is not locale-agnostic. Here's an example how it can be exploited:
http://bugs.python.org/issue22187

-- 
Jakub Wilk
