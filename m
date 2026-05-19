Received: (qmail 18177 invoked by uid 550); 19 May 2026 16:44:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23879 invoked from network); 19 May 2026 16:24:53 -0000
From: Sam James <sam@gentoo.org>
To: oss-security@lists.openwall.com
In-Reply-To: <87bjebjwkq.fsf@gentoo.org>
Organization: Gentoo
References: <87bjebjwkq.fsf@gentoo.org>
User-Agent: mu4e 1.14.1; emacs 31.0.60
Date: Tue, 19 May 2026 17:24:36 +0100
Message-ID: <8733znjrjv.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: Re: [oss-security] PinTheft Linux LPE

--=-=-=
Content-Type: text/plain

Sam James <sam@gentoo.org> writes:

> v12-security have shared a new Linux LPE today, PinTheft [0].
>
> Quoting their abstract:
>> PinTheft is a Linux local privilege escalation exploit for an RDS
>> zerocopy double-free that can be turned into a page-cache overwrite
>> through io_uring fixed buffers.
>>
>> PinTheft was discovered with V12 by Aaron Esau of the V12 security
>> team. We duped on this bug with some other teams and a patch is
>> available so we are releasing our PoC.
>>
>> The bug lived in the RDS zerocopy send
>> path. rds_message_zcopy_from_user() pins user pages one at a time. If
>> a later page faults, the error path drops the pages it already pinned,
>> and later RDS message cleanup drops them again because the scatterlist
>> entries and entry count remain live after the zcopy notifier is
>> cleared. Each failed zerocopy send can steal one reference from the first page.
>>
>> The PoC uses io_uring to make that refcount bug useful. It registers
>> an anonymous page as a fixed buffer, giving the page a FOLL_PIN bias
>> of 1024 references. It then steals those references with failing RDS
>> zerocopy sends, frees the page, reclaims it as page cache for a
>> SUID-root binary, and uses the stale io_uring fixed-buffer page
>> pointer to overwrite that page cache with a small ELF
>> payload. Executing the SUID binary drops into a root shell.
>>
>> Sadly, the RDS kernel module this requires is only default on Arch
>> Linux among the common distributions we tested.

While of course I can't know what distros they tested, this does
seem to be on in at least Fedora too? https://oracle.github.io/kconfigs/
seems to agree with that.

> [...]

sam

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEBBAEWCgCpFiEEJaa7iN2bdkxrVUHCc4QJ9SDfkZAFAmoMjsQbFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25z
Lm9wZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQyNUE2QkI4OEREOUI3NjRDNkI1NTQx
QzI3Mzg0MDlGNTIwREY5MTkwDxxzYW1AZ2VudG9vLm9yZwAKCRBzhAn1IN+RkJiM
AP0cuMZJUNouCt38ppGCNJTVJNedikEYkte2kOe4ehaxgAD/aXkD/Bd0bOOA7rOm
tz+PQLAht3mlxXcjA+CrUbkslAU=
=35be
-----END PGP SIGNATURE-----
--=-=-=--
