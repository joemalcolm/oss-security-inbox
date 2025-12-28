Received: (qmail 24135 invoked by uid 550); 28 Dec 2025 23:09:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22209 invoked from network); 28 Dec 2025 10:00:24 -0000
From: Sam James <sam@gentoo.org>
To: oss-security@lists.openwall.com
In-Reply-To: <3318308d-70b1-4ab3-9cca-ab4ea67dd27d@gmail.com>
Organization: Gentoo
References: <3318308d-70b1-4ab3-9cca-ab4ea67dd27d@gmail.com>
User-Agent: mu4e 1.12.13; emacs 31.0.50
Date: Sun, 28 Dec 2025 10:00:08 +0000
Message-ID: <87y0mnj593.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: Re: [oss-security] Many vulnerabilities in GnuPG

--=-=-=
Content-Type: text/plain

Demi Marie Obenour <demiobenour@gmail.com> writes:

> https://gpg.fail lists many vulnerabilities in GnuPG, one of which
> allows remote code execution.

> All are zero-days to the best of my knowledge.

In 2.5.14:

commit 115d138ba599328005c5321c0ef9f00355838ca9
Author:     Werner Koch <wk@gnupg.org>
AuthorDate: Thu Oct 23 11:36:04 2025 +0200
Commit:     Werner Koch <wk@gnupg.org>
CommitDate: Thu Oct 23 11:37:59 2025 +0200

    gpg: Fix possible memory corruption in the armor parser.

    * g10/armor.c (armor_filter): Fix faulty double increment.

    * common/iobuf.c (underflow_target): Assert that the filter
    implementations behave well.
    --

    This fixes a bug in a code path which can only be reached with special
    crafted input data and would then error out at an upper layer due to
    corrupt input (every second byte in the buffer is unitialized
    garbage).  No fuzzing has yet hit this case and we don't have a test
    case for this code path.  However memory corruption can never be
    tolerated as it always has the protential for remode code execution.

    Reported-by: 8b79fe4dd0581c1cd000e1fbecba9f39e16a396a
    Fixes-commit: c27c7416d5148865a513e007fb6f0a34993a6073
    which fixed
    Fixes-commit: 7d0efec7cf5ae110c99511abc32587ff0c45b14f

In 2.5.13:

commit 8abc320f2a75d6c7339323a3cff8a8489199f49f
Author:     Werner Koch <wk@gnupg.org>
AuthorDate: Wed Oct 22 12:39:15 2025 +0200
Commit:     Werner Koch <wk@gnupg.org>
CommitDate: Wed Oct 22 12:39:15 2025 +0200

    gpg: Error out on unverified output for non-detached signatures.

    * g10/mainproc.c (do_proc_packets): Never reset the any.data flag.
    --

    Fixes-commit: 3b1b6f9d98b38480ba2074158fa640b881cdb97e
    Updates-commit: 69384568f66a48eff3968bb1714aa13925580e9f
    Reported-by: 8b79fe4dd0581c1cd000e1fbecba9f39e16a396a


commit 8abc320f2a75d6c7339323a3cff8a8489199f49f
Author:     Werner Koch <wk@gnupg.org>
AuthorDate: Wed Oct 22 12:39:15 2025 +0200
Commit:     Werner Koch <wk@gnupg.org>
CommitDate: Wed Oct 22 12:39:15 2025 +0200

    gpg: Error out on unverified output for non-detached signatures.

    * g10/mainproc.c (do_proc_packets): Never reset the any.data flag.

commit db9705ef594d5a2baf0e95e13cf6170b621dfc51
Author:     Werner Koch <wk@gnupg.org>
AuthorDate: Wed Oct 22 11:19:55 2025 +0200
Commit:     Werner Koch <wk@gnupg.org>
CommitDate: Wed Oct 22 11:20:10 2025 +0200

    gpg: Avoid potential downgrade to SHA1 in 3rd party key signatures.

But it isn't clear to me what...
* the mapping between all of the vulnerabilities listed on the website is vs GnuPG commits (unfortunately
  no CVE identifiers yet either);
* GnuPG bug tracker links map to commits or vulnerabilities;
* whether these fixes are complete for a specific vulnerability or not.

The relevant public bugs I'm aware of for GnuPG are:
* https://dev.gnupg.org/T7909
* https://dev.gnupg.org/T7900
* https://dev.gnupg.org/T7902
* https://dev.gnupg.org/T7903
but some linked therein are still marked private.

Finally, to end the dump of what I know so far: Werner Koch has
published a response to the cleartext signature vulnerabilities:
https://gnupg.org/blog/20251226-cleartext-signatures.html.

sam

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEBBAEWCgCpFiEEJaa7iN2bdkxrVUHCc4QJ9SDfkZAFAmlQ/6gbFIAAAAAABAAO
bWFudTIsMi41KzEuMTEsMiwyXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25z
Lm9wZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQyNUE2QkI4OEREOUI3NjRDNkI1NTQx
QzI3Mzg0MDlGNTIwREY5MTkwDxxzYW1AZ2VudG9vLm9yZwAKCRBzhAn1IN+RkMrl
AQDZzNP+LP1IPSQdPI/bVYv6n30nUE+Dre622gIX1/0/EwEAlX0F1jgCOH6hRmKl
pvossjWVtkbPKOBCqF8Pfts1igk=
=pXhW
-----END PGP SIGNATURE-----
--=-=-=--
