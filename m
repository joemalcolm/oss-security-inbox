X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/27/3
Message-Id: <8CD65A05-CE38-4281-BB3D-2140894CF394@gmail.com>
Date: Thu, 26 Nov 2026 11:38:51 +0000
From: John Haxby <john.haxby@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2026-122093: Strong::Random versions through 0.96 for Perl allow every later rand output to be predicted from three earlier ones
Content-Type: text/plain; charset=utf-8

 

> On 26 Nov 2026, at 08:36, Jakub Wilk <jwilk@...lk.net> wrote:
> 
> * Robert Rothenberg <rrwo@...nsec.org>, 2026-11-25 00:32:
>> Workarounds
>> -----------
>> Replace Strong::Random with a cryptographically secure source such as Crypt::URandom or Crypt::SysRandom.
> 
> There's also RAND_bytes() in Net::SSLeay, which is more likely to be already installed on your system than the two above (but also much more heavyweight, so YMMV).
> 
> -- 
> Jakub Wilk

Or just open /dev/urandom and read stuff from it :)

Or, and I don't know the perl incantation, use getrandom(2) which works even in a container where there's no /dev to speak of.

Neither of those will work on Windows but both will work on Linux.  *BSD has /dev/urandom, of course and _may_ have getrandom() with a similar signature.  macOS has getentropy(2) and /dev/urandom.

Obviously anything calling itself "Secure Random" should eventually be pulling entropy from your kernel CSPRNG of choice.

jch
