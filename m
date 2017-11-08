X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4617" "Wednesday" "8" "November" "2017" "10:34:35" "-0600" "Eric Blake" "eblake@redhat.com" "<56029e38-0e38-181c-2f61-f92b4bfd6826@redhat.com>" "103" "Re: [oss-security] Race condition between UDP bind(2) and connect(2) delivers wrong datagrams" nil nil nil "11" "2017110816:34:35" "[oss-security] Race condition between UDP bind(2) and connect(2) delivers wrong datagrams" (number mark "U       eblake@redha Nov  8  103/4617  " thread-indent "\"Re: [oss-security] Race condition between UDP bind(2) and connect(2) delivers wrong datagrams\"\n") "<2f823095-af60-b5d7-b828-d92981e05973@maxsi.org>" ("<4e069c7c-85a2-f3ce-6ce2-8a9b4bf86a41@maxsi.org>" "<848ccf01-0a05-76ea-470d-aa59579d447b@redhat.com>" "<2f823095-af60-b5d7-b828-d92981e05973@maxsi.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21632 invoked by uid 550); 8 Nov 2017 16:34:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21606 invoked from network); 8 Nov 2017 16:34:48 -0000
To: oss-security@lists.openwall.com,
 Jonas 'Sortie' Termansen <sortie@maxsi.org>,
 Florian Weimer <fweimer@redhat.com>, John Haxby <john.haxby@oracle.com>
References: <4e069c7c-85a2-f3ce-6ce2-8a9b4bf86a41@maxsi.org>
 <848ccf01-0a05-76ea-470d-aa59579d447b@redhat.com>
 <2f823095-af60-b5d7-b828-d92981e05973@maxsi.org>
From: Eric Blake <eblake@redhat.com>
Openpgp: url=http://people.redhat.com/eblake/eblake.gpg
Organization: Red Hat, Inc.
Message-ID: <56029e38-0e38-181c-2f61-f92b4bfd6826@redhat.com>
Date: Wed, 8 Nov 2017 10:34:35 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <2f823095-af60-b5d7-b828-d92981e05973@maxsi.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="LG46qJfiK3Q5WBKc7HUrKb8TLcfih6KJl"
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Wed, 08 Nov 2017 16:34:37 +0000 (UTC)
Subject: Re: [oss-security] Race condition between UDP bind(2) and connect(2)
 delivers wrong datagrams

--LG46qJfiK3Q5WBKc7HUrKb8TLcfih6KJl
Content-Type: multipart/mixed; boundary="1F3UT6bkI4N2M010excSg5FEumIhvK7R9";
 protected-headers="v1"
From: Eric Blake <eblake@redhat.com>
To: oss-security@lists.openwall.com,
 Jonas 'Sortie' Termansen <sortie@maxsi.org>,
 Florian Weimer <fweimer@redhat.com>, John Haxby <john.haxby@oracle.com>
Message-ID: <56029e38-0e38-181c-2f61-f92b4bfd6826@redhat.com>
Subject: Re: [oss-security] Race condition between UDP bind(2) and connect(2)
 delivers wrong datagrams
References: <4e069c7c-85a2-f3ce-6ce2-8a9b4bf86a41@maxsi.org>
 <848ccf01-0a05-76ea-470d-aa59579d447b@redhat.com>
 <2f823095-af60-b5d7-b828-d92981e05973@maxsi.org>
In-Reply-To: <2f823095-af60-b5d7-b828-d92981e05973@maxsi.org>

--1F3UT6bkI4N2M010excSg5FEumIhvK7R9
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 11/08/2017 10:16 AM, Jonas 'Sortie' Termansen wrote:
>> Whatever the exact wording used is, the intent of POSIX is to describe
>> the BSD sockets API behavior.  If the API does something else, that's a
>> POSIX bug.
>=20
> Absolutely, if the standard mdanated one behavior, and if all the
> implementations did something else and documented that they did so, it wo=
uld
> be a bug in the standard that should be fixed.
>=20
> This issue is not that case because Darwin[1], DragonFly[2], FreeBSD[3],
> GNU/Hurd (though by importing Linux man pages), Linux[4], NetBSD[5], and
> OpenBSD[6] all document behavior compatible with POSIX[7].

It doesn't matter what the implementations document (if their
documentation is copying from POSIX), but what they actually DO.

> I see two internally consistent ways we could resolve this problem:
>=20
> 1) Implement the behavior described by POSIX by having connect(2) on an U=
DP
>    socket filter the receive queue, and possibly updating the connect(2)
>    documentation of every OS to be a little less ambiguous and say the sa=
me
>    as POSIX. Software that relied on bind+connect not having a race
>    condition will be secured by the kernel fix.
>=20
> 2) Declare the existing behavior desirable, add a caveats section to every
>    connect(2) manual page describing this pitfall and the need to empty t=
he
>    receive queue after connect(2). File a POSIX bug and have the mandated
>    behavior changed in the next POSIX Technical Corrigendum or next major
>    update. We audit software on every operating system for this flaw and
>    ensure they properly empty the receive queue.

At this point, I think you have argued pretty effectively that the
current POSIX wording does NOT describe existing practice, and therefore
that POSIX has a bug.  It may be desirable to have implementations
follow the POSIX wording, but I think you are better off FIRST raising
this issue with the Austin Group
(http://austingroupbugs.net/main_page.php) to get an opinion on what the
POSIX folks think.  Even if the POSIX folks declare that the current
wording is intentional and that all existing implementations need to be
fixed, it is better to involve them up front.

>=20
> My preference is 1) because I believe the receive queue filtering behavior
> to be more useful. It also automatically closes the race condition in any
> software that use bind+connect and doesn't empty the receive queue.

That may be your preference, but I think you should pursue the course of
filing a POSIX bug about the mismatch between documentation and existing
practice (ie, what you proposed for course 2), whether or not you get
any traction in implementing course 1 on a subset of the systems.

--=20
Eric Blake, Principal Software Engineer
Red Hat, Inc.           +1-919-301-3266
Virtualization:  qemu.org | libvirt.org


--1F3UT6bkI4N2M010excSg5FEumIhvK7R9--

--LG46qJfiK3Q5WBKc7HUrKb8TLcfih6KJl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: Public key at http://people.redhat.com/eblake/eblake.gpg
Comment: Using GnuPG with Thunderbird - http://www.enigmail.net/

iQEzBAEBCAAdFiEEccLMIrHEYCkn0vOqp6FrSiUnQ2oFAloDMhsACgkQp6FrSiUn
Q2pEEggAnAco0BTU74H0aFeT9gM2BmTtkAe2DXWJvEFQyzt/EK1DX9nL2rrTVJU0
FDRD3CyOmNhhbE5C+PJxItIbm28TPcBOhvgIAylvVC/izzdO0k9ZSJJ0qA26CnyD
vAsKJGpx1mPppK/l2iCTbyt2EEatuNsvCM4a3lGHeo985L04rvp/UhZj6X1t/VO5
B/JyPuI7Q0qvgJVgDdnd1fet7r+S22yUjg/o+C4e/ornxkxE89b0yevfcX22iD2G
hxm93vsJNaB756sVksJhlb+H6ApOVcom4Yl6c6Zl8e3uREVouLwGZ2C2myvTLG7J
Kv84FYJDV+y9zh3mEk8Fs4pCBSt/iQ==
=3agn
-----END PGP SIGNATURE-----

--LG46qJfiK3Q5WBKc7HUrKb8TLcfih6KJl--
