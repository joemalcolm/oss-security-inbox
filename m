X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/16/2
Message-ID: <877bkmm1e4.fsf@gentoo.org>
Date: Wed, 16 Sep 2026 02:27:15 +0100
From: Sam James <sam@...too.org>
To: oss-security@...ts.openwall.com
Cc: Clemens Lang <cllang@...hat.com>,  "Lexi Groves (49016)" <contact@....fail>
Subject: Re: Retrospective by 'gpg.fail' authors
Content-Type: text/plain; charset=utf-8

Werner Koch <wk@...pg.org> writes:

> Hi!
>

Thank you Werner!

> On Mon, 14 Sep 2026 21:28, Clemens Lang said:
>
>> (1) A RCE in `gpgsm` 2.4.9 when invoked as `gpgsm --debug all --import
>> bad.cert`, with the bad.cert file at [1]. This is apparently a 0-day,
>
> Actually in all versions > 2.2 if you use --debug x509.  The result is
> that you get garbled output on stderr.  Using the certificates from
> their Git repo we have not been able to get more than a segv.  That is
> obvious because the DER is used as printf format string.  How it is
> possible to get a an RCE is not clear to me - at least not with the
> sample certificate.  We need a real reproducers.  Maybe the presentation
> used a custom build.  It uses libgcrypt 1.12.4 which is not yet used in
> any binary we released.
>
> This is the fix:
>
>                if (DBG_X509)
> -                log_debug(skider, skiderlen, "ski is:");
> +                log_printhex (skider, skiderlen, "ski is:");
>
> We did not used -Wformat-nonliteral which would have caught it due to
> gcc problems and distros requiring -Werror.

You should feel free these days to use whatever -W* you want/need to. No
distros should be using -Werror without at least being willing to
investigate the problem a bit, some exceptions would be things like
-Werror=format-security or similar (so for a specific warning), but even
then you're within your rights to say no to such bugs if you think
they're not showing a real problem.

I'm not aware of anyone doing blanket -Werror.

If any distro person is using blank -Werror in their packaging and
complains to you, please send them to me ;)

> [...]

sam

Download attachment "signature.asc" of type "application/pgp-signature" (419 bytes)
