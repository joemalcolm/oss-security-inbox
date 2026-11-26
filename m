X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/27/6
Message-ID: <20261126195653.T3diHusa@steffen%sdaoden.eu>
Date: Thu, 26 Nov 2026 20:56:53 +0100
From: Steffen Nurpmeso <steffen@...oden.eu>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2026-122093: Strong::Random versions through 0.96 for Perl allow every later rand output to be predicted from three earlier ones
Content-Type: text/plain; charset=utf-8

Jakub Wilk wrote in
 <20261126083656.auh7z3t2lnmhw2ze@...lk.net>:
 |* Robert Rothenberg <rrwo@...nsec.org>, 2026-11-25 00:32:
 |>Workarounds
 |>-----------
 |>Replace Strong::Random with a cryptographically secure source such as 
 |>Crypt::URandom or Crypt::SysRandom.
 |
 |There's also RAND_bytes() in Net::SSLeay, which is more likely to be 
 |already installed on your system than the two above (but also much more 
 |heavyweight, so YMMV).

And dragons lay there regarding error handling.  OpenSSL -- they
are here, please correct me if i am wrong -- i record

     /* LibreSSL always succeeds, i think it aborts otherwise.
      * With elder OpenSSL we ensure via RAND_status() in
      * a_xtls_rand_init() that the PRNG is seeded, so it does not fail.
      *
      * With newer OpenSSL we disable automatic reseeding, but do not
      * ASSERT RAND_status() ("Since you always have to check RAND_bytes's
      * return value now, RAND_status is mostly useless.",
      * 20190104180735.GA25041@...ckx.be), so we have not that many options
      * on what to do.  Since OSs will try hard to serve, a simple sleep
      * may be it, so do that */

That is outdated though since they since then also completely
removed

  RAND_DRBG_set_reseed_defaults(0, 0, 0, 0); /* (does not fail here) */

to make it a really easy experience.
Aaah, but/and there are new additional functions like
RAND_bytes_ex().
I prefer the way ressl handles that mess really.

Better yet they would simply keep on going but give a "needs
reseeding" state, so that users can then take action at
appropriate times, through an appropriate interface.

Looking at the manual of th eperl module you mention, i wonder...

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
