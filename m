X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/06/13/8
Message-ID: <4ef3c586-e897-98fd-28b9-f0ad7ffe9866@redhat.com>
Date: Tue, 13 Jun 2017 18:35:45 +0200
From: Florian Weimer <fweimer@...hat.com>
To: oss-security@...ts.openwall.com, Fiedler Roman <Roman.Fiedler@....ac.at>
Subject: Re: Vixie/ISC Cron group crontab to root escalation
Content-Type: text/plain; charset=utf-8

On 06/13/2017 02:32 PM, Fiedler Roman wrote:
> Well, partially: what O_PATH can do, you could also do before O_PATH using 
> repeated single-level open(NO_FOLLOW)/fstat-checks. So you had to do all the 
> verification by yourself.

That's not completely accurate because open/close on device nodes can
have side effects (the classic example is a rewinding tape device).
O_PATH gives you an opportunity to perform these policy checks before
the side effect happens.

Florian
