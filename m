X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/22/1
Message-ID: <amASeYjj8RXx9Glx@netmeister.org>
Date: Tue, 21 Jul 2026 20:44:41 -0400
From: Jan Schaumann <jschauma@...meister.org>
To: oss-security@...ts.openwall.com
Subject: Re: 432 Linux kernel CVEs
Content-Type: text/plain; charset=utf-8

Steffen Nurpmeso <steffen@...oden.eu> wrote:
> I wonder a bit what your desire is.

I'm looking to take the temperature on how people are
responding to a significant influx of reported CVE
fixes.  I believe it ought to change how organizations
handle linux kernel security updates.

I currently see the following possible approaches:

1) I don't care: I always run the latest kernel
everywhere and update at least once per
$toleranceTimeWindow across all systems I manage.

2) I do care: I review every single CVE and decide
which changes I need to address / backport in my
environment.

3) I update selectively whenever a single
vulnerability makes big enough waves that somebody
bothers me.  This usually happens in panic mode.


(1) is great, but I haven't seen that be a realistic
option in large environments.

(2) hasn't been a scalable approach for a while, and
perhaps the recent volume changes are leading to
people to stop deceiving themselves.

(3) is what I see most people do.  It kind of "worked"
if you got a small number of events per year, not per
week.


I can see the arguments for "every kernel bug is a
potential security vulnerability" and that thus
assigning CVE IDs here is meaningless.

But I'd like to understand how others are handling
linux kernel vulnerabilities.

> Well, i saw the last perl thing which i liked.

> Fwiw i like the cURL reports, they are really meaningful and give
> pointers i can follow.

Right, so for these two cases, it sounds like you want
to have the ability to individually review and assess
vulnerabilities.

>  Of course if there would be hundreds...

Ay, there's the rub.

-Jan
