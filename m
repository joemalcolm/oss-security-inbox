X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/04/20/2
Message-ID: <CAD1NwhgLEg0kx9cXNf6bx3cw8Phbkk--H_EeEBLFOYWTRkseHA@mail.gmail.com>
Date: Sat, 20 Apr 2013 19:36:06 +0200
From: Lukas Reschke <lukas@...cloud.org>
To: Mark Panaghiston <markp@...pyworm.com>
Cc: Kurt Seifried <kseifried@...hat.com>,  Open Source Security <oss-security@...ts.openwall.com>, hello@...pyworm.com,  "security@...cloud.com" <security@...cloud.com>
Subject: Re: CVE-2013-1942 jPlayer 2.2.19 XSS
Content-Type: text/plain; charset=utf-8

On Sat, Apr 20, 2013 at 7:19 PM, Mark Panaghiston <markp@...pyworm.com> wrote:
>
> [2.2.23] Security Fix: The Flash SWF had a minor security vulnerability that
> enabled XSS (Cross Site Scripting). Reported by Eugene Dokukin.
> https://github.com/happyworm/jPlayer/commit/c5fe17bb4459164bd59153b57248cf94b8867373

As far I can see from this commit this only affected "alert()" and
allowed the display of an alert box. Could you clarify that please?

If so this could be only abused for techniques like social engineering
and should IMHO not handled as a security issue.

@Kurt: What's your opinion on that?

--
ownCloud
Your Cloud, Your Data, Your Way!

GPG: 0xEB32B77BA406BE99
