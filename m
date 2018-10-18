X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/10/18/1
Message-ID: <9Oh6Q_oGBdLOE2SpGuy67o4P_ytW1KG0urBaQPvPOskA6d6uwyU_et3aIaNCb0M6mSWw8T90Lb2OQIXkE38PlXk5eSCsQqS3Dr0QZ_2Q2ns=@protonmail.ch>
Date: Thu, 18 Oct 2018 10:51:25 +0000
From: Jordan Glover <Golden_Miller83@...tonmail.ch>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>, "taviso@...gle.com" <taviso@...gle.com>
Subject: Re: Re: ghostscript: 1Policy operator gives access to .forceput CVE-2018-18284
Content-Type: text/plain; charset=utf-8

‐‐‐‐‐‐‐ Original Message ‐‐‐‐‐‐‐
On Wednesday, October 17, 2018 10:48 PM, Tavis Ormandy <taviso@...gle.com> wrote:

> Apparently it wasn't clear that this allowed reading and writing of arbitrary files, here is a full exploit (I just modified the CVE-2018-17961 exploit).
>
> $ convert executeonly-bypass.pdf exploit.jpg
> $ tail -1 ~/.bashrc
> echo pwned by postscript
>
> Thanks, Tavis.

Do you know if upstream is going to make new release soon or distros should take the
pain and backport all of those themselves?
