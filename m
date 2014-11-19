X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/19/9
Message-ID: <CAAnPYQ5bzv_v5mu6GTQr6EYyDq+3gW+_OpsbRVqkY_VDiLxW4w@mail.gmail.com>
Date: Wed, 19 Nov 2014 08:19:19 +0100
From: Gynvael Coldwind <gynvael@...dwind.pl>
To: oss-security@...ts.openwall.com
Subject: Re: RE: [security-vendor] Re: Fuzzing findings (and maybe CVE requests) - Image/GraphicsMagick, elfutils, GIMP, gdk-pixbuf, file, ndisasm, less
Content-Type: text/plain; charset=utf-8

On Wed, Nov 19, 2014 at 7:41 AM, Michal Zalewski <lcamtuf@...edump.cx>
wrote:
>
> Tavis looked at several commercial AV engines some time ago, I think
> it wasn't pretty. I suspect that clamav may be very much worth fuzzing
> or auditing.
>
> /mz
>

We fuzzed clamav in 2012 or so and reported some bugs. Definitely a good
target.

To be honest I would love to see all AV security tested, not just the open
source one. If they claim they make people more secure, it would be great
to know that that is backed by e.g. fuzzing and bug bounty programs.

Cheers,
-- 
Gynvael Coldwind

