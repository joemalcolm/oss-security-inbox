X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/06/29/5
Message-ID: <CAFJ0LnFGD0+stET2NvNzQ2tR47Yk3cbUcWuUOLWqfRKvyBsA4A@mail.gmail.com>
Date: Thu, 29 Jun 2017 07:31:33 -0700
From: Nick Kralevich <nnk@...gle.com>
To: oss-security@...ts.openwall.com
Subject: Re: TIOCSTI not going away
Content-Type: text/plain; charset=utf-8

In addition to OpenBSD, Android has chosen to drop TIOCSTI (and a
bunch of other tty ioctls) in the Android 8.0 release. See
https://android-review.googlesource.com/306278

-- Nick

On Thu, Jun 29, 2017 at 7:23 AM, Solar Designer <solar@...nwall.com> wrote:
> While TIOCSTI is apparently not going away on Linux, it is on OpenBSD,
> and here's some analysis of the apparently almost non-existent impact
> this will have on Emacs (which was one of the primary examples cited for
> keeping TIOCSTI on Linux):
>
[...]
>
> Whatever happens (or doesn't happen) for upstream Linux, there will be
> system(s) dropping TIOCSTI or at least introducing a way to disable it,
> so reducing userspace programs' dependencies on TIOCSTI makes sense.
>
> Alexander

-- 
Nick Kralevich | Android Security | nnk@...gle.com | 650.214.4037
