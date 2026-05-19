Received: (qmail 13947 invoked by uid 550); 19 May 2026 17:55:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 12144 invoked from network); 19 May 2026 17:23:56 -0000
From: Sam James <sam@gentoo.org>
To: oss-security@lists.openwall.com
In-Reply-To: <8733znjrjv.fsf@gentoo.org>
Organization: Gentoo
References: <87bjebjwkq.fsf@gentoo.org> <8733znjrjv.fsf@gentoo.org>
User-Agent: mu4e 1.14.1; emacs 31.0.60
Date: Tue, 19 May 2026 18:23:42 +0100
Message-ID: <87tss3ia8x.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: Re: [oss-security] PinTheft Linux LPE

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Sam James <sam@gentoo.org> writes:

> Sam James <sam@gentoo.org> writes:
>
>> v12-security have shared a new Linux LPE today, PinTheft [0].
>>
>> Quoting their abstract:
>>> PinTheft is a Linux local privilege escalation exploit for an RDS
>>> zerocopy double-free that can be turned into a page-cache overwrite
>>> through io_uring fixed buffers.
>>>
>>> PinTheft was discovered with V12 by Aaron Esau of the V12 security
>>> team. We duped on this bug with some other teams and a patch is
>>> available so we are releasing our PoC.
>>>
>>> The bug lived in the RDS zerocopy send
>>> path. rds_message_zcopy_from_user() pins user pages one at a time. If
>>> a later page faults, the error path drops the pages it already pinned,
>>> and later RDS message cleanup drops them again because the scatterlist
>>> entries and entry count remain live after the zcopy notifier is
>>> cleared. Each failed zerocopy send can steal one reference from the fir=
st page.
>>>
>>> The PoC uses io_uring to make that refcount bug useful. It registers
>>> an anonymous page as a fixed buffer, giving the page a FOLL_PIN bias
>>> of 1024 references. It then steals those references with failing RDS
>>> zerocopy sends, frees the page, reclaims it as page cache for a
>>> SUID-root binary, and uses the stale io_uring fixed-buffer page
>>> pointer to overwrite that page cache with a small ELF
>>> payload. Executing the SUID binary drops into a root shell.
>>>
>>> Sadly, the RDS kernel module this requires is only default on Arch
>>> Linux among the common distributions we tested.
>
> While of course I can't know what distros they tested, this does
> seem to be on in at least Fedora too? https://oracle.github.io/kconfigs/
> seems to agree with that.

Debian has this to prevent autoloading:
https://salsa.debian.org/kernel-team/linux/-/blob/debian/6.12/trixie-securi=
ty/debian/patches/debian/rds-Disable-auto-loading-as-mitigation-against-loc=
al.patch

Ubuntu installs a few blacklist files from their kmod package (*):
```
/tmp/kmod/debian/modprobe.d $ cat blacklist-rare-network.conf
# Many less commonly used network protocols have recently had various
# security flaws discovered. In an effort to reduce the scope of future
# vulnerability exploitations, they are being blacklisted here so that
# unprivileged users cannot use them by default. System owners can still
# either modify this file, or specifically modprobe any needed protocols.

# ax25
alias net-pf-3 off
# netrom
alias net-pf-6 off
# x25
alias net-pf-9 off
# rose
alias net-pf-11 off
# decnet
alias net-pf-12 off
# econet
alias net-pf-19 off
# rds
alias net-pf-21 off
# af_802154
alias net-pf-36 off
```

(*) I can't link to the actual patches as their viewer seems down, but
you can get there from https://code.launchpad.net/~git-ubuntu-import/ubuntu=
/+source/kmod/+git/kmod/+ref/ubuntu/jammy-devel
-> git clone -b ubuntu/jammy-devel https://git.launchpad.net/ubuntu/+source=
/kmod
=20=20=20=20
>
>> [...]
>
> sam


sam

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEBBAEWCgCpFiEEJaa7iN2bdkxrVUHCc4QJ9SDfkZAFAmoMnJ4bFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25z
Lm9wZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQyNUE2QkI4OEREOUI3NjRDNkI1NTQx
QzI3Mzg0MDlGNTIwREY5MTkwDxxzYW1AZ2VudG9vLm9yZwAKCRBzhAn1IN+RkAqa
AQCnWPDLbvz3KlociAOzXdF226onkuGiIgtkg1lYWduwVwD/crSMBSwR15PMDg3r
2e+ypJn+CiP/1t4HzL6/yj1N0QA=
=VMJz
-----END PGP SIGNATURE-----
--=-=-=--
