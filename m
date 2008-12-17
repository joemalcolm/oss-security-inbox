X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/12/17/9
Message-ID: <28fa9c5e0812161814s21509f03r1e48bde59c8ca031@mail.gmail.com>
Date: Wed, 17 Dec 2008 10:14:27 +0800
From: "Eugene Teo" <eugeneteo@...nel.sg>
To: oss-security@...ts.openwall.com
Cc: "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE request: kernel: watchdog: ib700wdt.c - buffer_underflow bug
Content-Type: text/plain; charset=utf-8

On Wed, Dec 17, 2008 at 10:00 AM, Steven M. Christey
<coley@...us.mitre.org> wrote:
>
> On Wed, 10 Dec 2008, Eugene Teo wrote:
>
>> Steve, here's another one that needs a CVE name. Thanks!
>>
>> http://bugzilla.kernel.org/show_bug.cgi?id=11399
>
> Similar to the other issue, is this IOCTL reachable by anyone malicious?

>From what I can see in ibwdt_ioctl(), it does not restrict access to
unprivileged users.

Thanks, Eugene
