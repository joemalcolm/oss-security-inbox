X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/16/6
Message-ID: <87a4phv9rr.fsf@jacob.g10code.de>
Date: Wed, 16 Sep 2026 11:13:44 +0200
From: Werner Koch <wk@...pg.org>
To: Sam James <sam@...too.org>
Cc: oss-security@...ts.openwall.com,  Clemens Lang <cllang@...hat.com>, "Lexi Groves (49016)" <contact@....fail>
Subject: Re: Retrospective by 'gpg.fail' authors
Content-Type: text/plain; charset=utf-8

On Wed, 16 Sep 2026 02:27, Sam James said:
> Werner Koch <wk@...pg.org> writes:
>
>> Hi!
>>
>
> Thank you Werner!
>
>> On Mon, 14 Sep 2026 21:28, Clemens Lang said:
>>
>>> (1) A RCE in `gpgsm` 2.4.9 when invoked as `gpgsm --debug all --import
>>> bad.cert`, with the bad.cert file at [1]. This is apparently a 0-day,
>>
>> Actually in all versions > 2.2 if you use --debug x509.  The result is
>> that you get garbled output on stderr.  Using the certificates from
>> their Git repo we have not been able to get more than a segv.  That is
>> obvious because the DER is used as printf format string.  How it is
>> possible to get a an RCE is not clear to me - at least not with the
>> sample certificate.  We need a real reproducers.  Maybe the presentation
>> used a custom build.  It uses libgcrypt 1.12.4 which is not yet used in
>> any binary we released.
>>
>> This is the fix:
>>
>>                if (DBG_X509)
>> -                log_debug(skider, skiderlen, "ski is:");
>> +                log_printhex (skider, skiderlen, "ski is:");
>>
>> We did not used -Wformat-nonliteral which would have caught it due to
>> gcc problems and distros requiring -Werror.
>
> You should feel free these days to use whatever -W* you want/need to. No
> distros should be using -Werror without at least being willing to

Yes, sure.  But 2003 was a different time and that part of the code was
simply forgotten:

  commit 8ab35a7d26707dfa0032b3b0dbde6a984a9683cb
  Author:     Werner Koch <wk@...pg.org>
  AuthorDate: Wed Dec 17 12:26:38 2003 +0000

    * gettime.c (asctimestamp): Add a note on a non-avoidable gcc warning.
    
    * util.h [!HAVE_VASPRINTF]: Add printf format attribute to the
    replacement function.


The more interesting thing is that no source code scanning or AI found
the really obvious bug introduced 6 years ago:

  commit b1694987bb6484405d41d34046a5290176feadd0
  Author:     Werner Koch <wk@...pg.org>
  AuthorDate: Wed May 13 21:21:24 2020 +0200

    sm: Support import and verification of EdDSA certificates.
    
    * sm/certdump.c (gpgsm_get_serial): New.
    * sm/certcheck.c (gpgsm_check_cert_sig): Support EdDSA signatures.


Salam-Shalom,

   Werner

-- 
The pioneers of a warless world are the youth that
refuse military service.             - A. Einstein

Download attachment "openpgp-digital-signature.asc" of type "application/pgp-signature" (285 bytes)
