X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/05/08/2
Message-Id: <06FEF7A9-73A6-43C5-A8FA-36FA1349E5A4@shiz.me>
Date: Mon, 8 May 2017 04:03:24 +0200
From: Shiz <hi@...z.me>
To: oss-security@...ts.openwall.com
Subject: Re: terminal emulators' processing of escape sequences
Content-Type: text/plain; charset=utf-8

> On 1 May 2017, at 18:44, Solar Designer <solar@...nwall.com> wrote:
> 
> Unfortunately, I did not record which terminal emulators did not crash
> for me.  However, Jason recorded both kinds of results for him, coming
> up with:
> 
> Konsole: no crash
> Xterm: no crash
> rxvt: crash
> Yakuake: no crash
> Mosh (which is a terminal emulator, after all): no crash
> Screen: 100% CPU usage --> DoS
> rxvt-unicode: no crash
> Qterminal: no crash
> putty: no crash
> 
> This adds "screen" to terminal emulators with problematic processing of
> terminal escapes.  Due to minor known impact, we did not handle this
> under embargo - it should be investigated and fixed now, in public.

Despite not being open source and thus unfit for the list, I can confirm this
also causes high CPU usage for macOS Terminal.app, version 2.7.1 (387),
as shipped on macOS 10.12.1.

- Shiz

Download attachment "signature.asc" of type "application/pgp-signature" (802 bytes)
