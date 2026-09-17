X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/17/2
Message-ID: <871parvrti.fsf@jacob.g10code.de>
Date: Thu, 17 Sep 2026 17:08:25 +0200
From: Werner Koch <wk@...pg.org>
To: Soatok Dreamseeker <soatok.dhole@...il.com>
Cc: oss-security@...ts.openwall.com,  Sam James <sam@...too.org>,  Clemens Lang <cllang@...hat.com>,  "Lexi Groves (49016)" <contact@....fail>
Subject: Re: Retrospective by 'gpg.fail' authors
Content-Type: text/plain; charset=utf-8

On Wed, 16 Sep 2026 13:06, Soatok Dreamseeker said:

>> Yes, sure.  But 2003 was a different time and that part of the code was
>> simply forgotten:
>>
>
> So... why not delete it? Unmaintained code is a liability (and,
> categorically, forgotten about code is not being maintained).

By "forgotten" I meant that -Wformat-nonlietral was not anymore used to
that specific problem.  The time string formatting is still required and
gcc actually provides a working method to disable warnings for a specific
function (or maybe even code lines).

GnuPG commit: 98871aadb70378343541128e80ffd391e413e248

  + * Note: gcc -Wformat-noliteral would complain here.  Thus we disable
  + * it for this function.  */
  +#if defined(HAVE_STRFTIME) && defined(HAVE_NL_LANGINFO)
  +# if GPGRT_HAVE_PRAGMA_GCC_PUSH
  +#  pragma GCC diagnostic push
  +#  pragma GCC diagnostic ignored "-Wformat-nonliteral"
  +# endif
  +static void
  +format_time_nl_langinfo (char *buffer, size_t bufsize, struct tm *tp)
  [...]
   
             mycflags="$mycflags -W -Wno-sign-compare -Wno-format-zero-length"
  +          mycflags="$mycflags -Wformat-nonliteral"
             mycflags="$mycflags -Wno-missing-field-initializers"
  

Salam-Shalom,

   Werner


-- 
The pioneers of a warless world are the youth that
refuse military service.             - A. Einstein

Download attachment "openpgp-digital-signature.asc" of type "application/pgp-signature" (285 bytes)
