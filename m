X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/05/22/4
Message-Id: <6EA79945-4BDE-4B71-B3A5-07E1B50A056E@alchemistowl.org>
Date: Fri, 22 May 2020 19:01:10 +0200
From: Arrigo Triulzi <arrigo@...hemistowl.org>
To: oss-security@...ts.openwall.com
Subject: Re: Short notes on qmail security guarantee
Content-Type: text/plain; charset=utf-8

On 22 May 2020, at 17:45, Georgi Guninski <gguninski@...il.com> wrote:
> I am not professional admin, but does postfix require limits?
> Do many widely used daemons need limits?

Well, normally these limits are enforced at the OS level. Depending on your OS of choice there are different ways in which this is done. On BSD-derived systems it is most often in /etc/login.conf via login classes, e.g.:

daemon:\
        :ignorenologin:\
        :datasize=infinity:\
        :maxproc=infinity:\
        :openfiles-max=2048:\
        :openfiles-cur=1024:\
        :stacksize-cur=8M:\
        :localcipher=blowfish,a:\
        :tc=default:

whereby the user under which Postfix runs would be assigned to the daemon class (or, of course, a class which you define with suitable restrictions) and have the limits above (“tc=default” means “inherit what is not explicitly defined above from the “default” class, rest is self-evident, I hope).

Arrigo

