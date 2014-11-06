X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/06/10
Message-ID: <CALx_OUBbfQp+z+M0XiQU3a8s5CjGzfY+ZowFy+W6cYCtHJZyOQ@mail.gmail.com>
Date: Thu, 6 Nov 2014 14:25:04 -0800
From: Michal Zalewski <lcamtuf@...edump.cx>
To: oss-security <oss-security@...ts.openwall.com>
Subject: Re: Stack smashing in libjpeg-turbo
Content-Type: text/plain; charset=utf-8

Is this a bug in libjpeg-turbo or in ImageMagick? I can't really repro
this with up-to-date versions:

[lcamtuf@...coon libjpeg-turbo-1.3.1]$ ./djpeg 003632r270.jpg
Corrupt JPEG data: 1056 extraneous bytes before marker 0xd8
Invalid JPEG file structure: two SOI markers
[lcamtuf@...coon libjpeg-turbo-1.3.1]$

[lcamtuf@...coon ImageMagick-6.8.9-9]$ utilities/convert -rotate 270
003632r270.jpg foo.jpg
[lcamtuf@...coon ImageMagick-6.8.9-9]$

On Thu, Nov 6, 2014 at 1:27 PM, Bastien ROUCARIES
<roucaries.bastien@...il.com> wrote:
> Hi,
>
> Passing special crafted jpeg file to imagemagick (convert -rotate 270
> 003632r270.jpg junk.jpg) could lead to stack smashing in libjpeg.so.62
> (libjpeg-turbo).
>
> This bug is triggered  by setting the optimize coding member of the
> JPEG initialization structure to TRUE. If this flag set it to FALSE,
> ImageMagick completes without complaint.
>
> Wokarround could consist to turn off compression optimization in
> imagemagick to prevent the stack smash.
>
> Please assing me CVE and make a cc to  768369@...s.debian.org.
>
>
> Bastien
