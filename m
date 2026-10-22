X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/22/16
Message-ID: <CACC_My_Wa+93bv65Fj1G45M-8ad6iE-wnMVbKra==xxfEUf1Jw@mail.gmail.com>
Date: Thu, 22 Oct 2026 10:11:56 +0200
From: Lukas Tribus <lukas@...i.eu>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2026-109619: PHP 8.2–8.5 RCE via stale global state
Content-Type: text/plain; charset=utf-8

Hello,

On Thu, 22 Oct 2026 at 08:45, Christian Fischer
<christian.fischer@...enbone.net> wrote:
>
> it might worth to mention that the subject as well as the text here
> could imply / be interpreted that only PHP 8.2-8.5 are affected (and
> older versions not).
>
> But at least https://www.php.net/archive/2026.php#2026-10-21-5 mentions
> the availability for backports down to PHP 7.4 which implies that at
> least versions down to 7.4 are affected as well:

It's pubblically document in the writeup that everything from PHP 5.4
is affected:

https://www.wiz.io/blog/php2shell-php-rce


Lukas
