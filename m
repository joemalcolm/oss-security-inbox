X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/21/1
Message-ID: <87pkvyscu2.fsf@gentoo.org>
Date: Sat, 21 Nov 2026 10:23:01 +0000
From: Sam James <sam@...too.org>
To: oss-security@...ts.openwall.com
Cc: Jiri Kucera <sanczes@...il.com>, Werner Koch <wk@...pg.org>
Subject: Fwd: Re: [Announce] GnuPG Security Advisory for GPGME (T8557,CVE-2026-129975)
Content-Type: text/plain; charset=utf-8

Todd Zullinger points out something unfortunate: RH had this patched
downstream years ago.

Werner, I assume that was never sent to you?

-------------------- Start of forwarded message --------------------
Date: Fri, 20 Nov 2026 20:06:51 -0500
To: Bernhard Reiter <bernhard@...evation.de>
Cc: gnupg-devel@...pg.org
Subject: Re: [Announce] GnuPG Security Advisory for GPGME
 (T8557,CVE-2026-129975)
From: Todd Zullinger via Gnupg-devel <gnupg-devel@...pg.org>


Bernhard Reiter via Gnupg-devel wrote:
> Am Freitag 20 November 2026 19:01:51 schrieb Werner Koch via Gnupg-announce:
>> We are pleased to announce the availability of a new GPGME release:
>> version 2.3.1.  This version fixes a *critical security bug* found in
>> all prior versions.  We also release a new Gpg4win versions and and
>> GnuPG Desktop and GnuPG VS-Desktop versions which all make use of GPGME.
> 
>> If for some reasons GPGME can't be updated, you may patch your GPGME
>> version using the attached patch which likley applies cleanly even to
>> very old versions.
> 
> seems the patch did not make the announcement mail.

You're lucky, I didn't even see the announcement mail. :)

> (And also I had a bad signature on this email, but this sometimes happens when 
> Mailman folds some long attachment header lines.)
> 
> The git mirror at  https://github.com/gpg/gpgme/commits/master/ does 
> not seem to have the patch yet. 

I think the one you're looking for is:

    https://github.com/gpg/gpgme/commit/14499348b966cd7b3d72afee15a5cd51cdd0a727

which may not have been there when you sent your message.
And a pox on all the AI scrapers (and the investors driving
this madness) for keeping dev.gnupg.org inaccessible to most
people.

Related, but sad:  Red Hat Enterprise Linux 9 seems to have
patched the double-free *5 years ago* when it was noticed by
a Coverity scan:

    https://gitlab.com/redhat/centos-stream/rpms/gpgme/-/blob/c9s/gpgme-1.15.1-covscan.patch?ref_type=heads#L290-339

That is included in RHEL 9 but not previous or subsequent
releases.  If only they'd have submitted this upstream, the
issue could have been resolved long ago. :(

Instead, they didn't even share it with Fedora where it
would have made it into future RHEL releases.

-- 
Todd

Download attachment "signature.asc" of type "application/pgp-signature" (228 bytes)

_______________________________________________
Gnupg-devel mailing list
Gnupg-devel@...pg.org
https://lists.gnupg.org/mailman/listinfo/gnupg-devel


-------------------- End of forwarded message --------------------


Download attachment "signature.asc" of type "application/pgp-signature" (419 bytes)
