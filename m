X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/15/2
Message-ID: <87jyomvoi3.fsf@jacob.g10code.de>
Date: Tue, 15 Sep 2026 11:43:16 +0200
From: Werner Koch <wk@...pg.org>
To: Clemens Lang <cllang@...hat.com>
Cc: oss-security@...ts.openwall.com,  "Lexi Groves (49016)" <contact@....fail>
Subject: Re: Retrospective by 'gpg.fail' authors
Content-Type: text/plain; charset=utf-8

Hi!

On Mon, 14 Sep 2026 21:28, Clemens Lang said:

> (1) A RCE in `gpgsm` 2.4.9 when invoked as `gpgsm --debug all --import
> bad.cert`, with the bad.cert file at [1]. This is apparently a 0-day,

Actually in all versions > 2.2 if you use --debug x509.  The result is
that you get garbled output on stderr.  Using the certificates from
their Git repo we have not been able to get more than a segv.  That is
obvious because the DER is used as printf format string.  How it is
possible to get a an RCE is not clear to me - at least not with the
sample certificate.  We need a real reproducers.  Maybe the presentation
used a custom build.  It uses libgcrypt 1.12.4 which is not yet used in
any binary we released.

This is the fix:

               if (DBG_X509)
-                log_debug(skider, skiderlen, "ski is:");
+                log_printhex (skider, skiderlen, "ski is:");

We did not used -Wformat-nonliteral which would have caught it due to
gcc problems and distros requiring -Werror.  There is one other case
where the wrong log function was used but that only affects a certain
rare smartcard.  BTW, the debug interface is subject to change at any
time and should thus not to be used for production.

> (2) An integer underflow followed by a buffer overflow in libgcrypt’s
> RSASSA-PSS verification discussed in slides 38-45 of [2], fixed in
> libgcrypt commit 0d64fc2 [3] (also reported by somebody using Claude

 CommitDate: Wed Aug 5 14:11:03 2026 +0900

    cipher:rsa: Fix verify RSA PSS verify.
    
    * cipher/rsa-common.c (_gcry_rsa_pss_verify): Validate EMLEN, before
    the allocation.
    
    --
    
    This issue was found by Anthropic using Claude, and has been reviewed
    manually by David Korczynski from Ada Logics.

> Code) released in (apparently) libgcrypt 1.12.3 without a CVE
> assigned. The researcher(s) claim this can be used for RCE from the
> S/MIME verifier and GnuPG with a 53-bit preimage attack (they don’t

We have no information about this except for the slides.  We have not
been contacted at all.  But the bug used is anyway public for more than
a month.  From the orginal bug report:

    Severity (our reading; we defer the final rating to you)
    --------------------------------------------------------
    We assess the defect as High: an attacker-controlled out-of-bounds
    heap write (the content, the write length via the hash algorithm,
    and the underflow offset via the modulus size are all
    attacker-chosen) reached from the primary public verification API in
    a default (non-FIPS) build, before any signature parsing. We want to
    be candid about the deployment precondition, though: the trigger
    requires the application to verify against a public key whose size
    it has not vetted (raw signature/key-import-then-verify flows,
    protocol messages carrying a key). Major consumers such as GnuPG and
    GnuTLS reject toy-sized RSA keys before libgcrypt sees them, which
    limits real-world reach; the practical impact ceiling for those is
    bounded. We leave the final classification to you.

And our reply:

    In normal use cases, before the call of gcry_pk_verify, the key is
    validated.  That's my understanding.  Perhaps, we will handle this
    bug, as a normal bug.  (Please note that GnuPG does not use RSA
    PSS.)

Fixed in libgcrypt 1.12.3 released 2026-08-26



Shalom-Salam,

   Werner

-- 
The pioneers of a warless world are the youth that
refuse military service.             - A. Einstein

Download attachment "openpgp-digital-signature.asc" of type "application/pgp-signature" (285 bytes)
