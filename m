X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/06/21/9
Message-ID: <CAKghNw0_qr10=pAkKbn1hhnVxiPuHGEo2rBscNqnh59E9qXzcw@mail.gmail.com>
Date: Thu, 21 Jun 2018 08:11:42 -0700
From: Gordon Tetlow <gordon@...lows.org>
To: oss-security@...ts.openwall.com
Subject: Re: Intel hyper-threading security issues
Content-Type: text/plain; charset=utf-8

On Thu, Jun 21, 2018 at 4:58 AM, Georgi Guninski <guninski@...inski.com> wrote:
> On Thu, Jun 21, 2018 at 07:56:42AM +0300, Georgi Guninski wrote:
>> V.   Solution
>>
>> Disable Hyper-Threading Technology on processors that support it.
>>
>
> Is Freebsd safe from this or requires patch?

FreeBSD allows disabling of HT processors if the user decides to do so.

Add to /boot/loader.conf:
machdep.hyperthreading_allowed=0

And reboot the host.

Please note this isn't an endorsement of disabling HT, just an
explanation of how to do so on FreeBSD.

Gordon
