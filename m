X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/11/11/6
Message-ID: <2af0cd5a-cd88-6373-6101-a4eab6bce65d@orlitzky.com>
Date: Wed, 11 Nov 2020 09:12:39 -0500
From: Michael Orlitzky <michael@...itzky.com>
To: oss-security@...ts.openwall.com
Subject: Re: Dash executes code when noexec ("-n") is specified
Content-Type: text/plain; charset=utf-8

On 11/11/20 4:40 AM, Jakub Wilk wrote:
> * Eric Pruitt <eric.pruitt@...il.com>, 2020-11-10, 20:48:
>>     $ dash -n -c 'echo this should not be executed'
>>     this should not be executed
> 
> This was reported in 2017:
> https://bugs.debian.org/858288
> 

I forwarded this to Herbert, who maintains Dash and supplied the patch 
on the Debian bug.
