X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3053" "Wednesday" "9" "September" "2015" "09:52:44" "+0200" "Andreas Stieger" "astieger@suse.com" "<55EFE54C.4080101@suse.com>" "86" "Re: [oss-security] CVE request for wget" nil nil nil "9" "2015090907:52:44" "[oss-security] CVE request for wget" (number mark "        astieger@sus Sep  9   86/3053  " thread-indent "\"Re: [oss-security] CVE request for wget\"\n") "<CACC5Q1dz1GhKVD+0P6Ox7Gom8A0wzFv8FzQ6fbE0twehUOhawA@mail.gmail.com>" ("<CACC5Q1dz1GhKVD+0P6Ox7Gom8A0wzFv8FzQ6fbE0twehUOhawA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26144 invoked by uid 550); 9 Sep 2015 09:20:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11454 invoked from network); 9 Sep 2015 07:53:29 -0000
References: <CACC5Q1dz1GhKVD+0P6Ox7Gom8A0wzFv8FzQ6fbE0twehUOhawA@mail.gmail.com>
Organization: SUSE Linux GmbH
Message-ID: <55EFE54C.4080101@suse.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <CACC5Q1dz1GhKVD+0P6Ox7Gom8A0wzFv8FzQ6fbE0twehUOhawA@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="Q7ri4ch1LfDQ2MoHoW6NnncxR5WEPTxuB"
Cc: austinenglish@gmail.com, cve-assign@mitre.org
Date: Wed, 9 Sep 2015 09:52:44 +0200
From: Andreas Stieger <astieger@suse.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request for wget
To: oss-security@lists.openwall.com

--Q7ri4ch1LfDQ2MoHoW6NnncxR5WEPTxuB
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hello,

On 09/07/2015 10:39 PM, Austin English wrote:
> This was reported to tails-dev [1] and other places [2] and is fixed
> upstream [3].
>
> I've rebased the patch for 1.13.4 (attached), which is the current
> version in Debian wheezy [4] that Tails is based on.
>
> Please keep me in CC, as I'm not subscribed.
>
> [1] https://mailman.boum.org/pipermail/tails-dev/2015-August/009370.html
> [2] https://lists.gnu.org/archive/html/bug-wget/2015-08/msg00020.html
> [3] http://git.savannah.gnu.org/cgit/wget.git/commit/?id=3D075d7556964f5a=
871a73c22ac4b69f5361295099
> [4] https://packages.debian.org/wheezy/wget

To reproduce:

A $> nc -lv 8020
B $> wget ftp://A:8020

On A keep entering "200 ok", the following will be printed:

> $ wget ftp://dexter:8020 > --2015-09-08 17:11:30-- ftp://dexter:8020/ > =
=3D>
=91.listing=92 > Resolving dexter (dexter)... 10.160.4.160 > Connecting to
dexter (dexter)|10.160.4.160|:8020... connected. > Logging in as
anonymous ... Logged in! > =3D=3D> SYST ... done. =3D=3D> PWD ... done. > =
=3D=3D>
TYPE I ... done. =3D=3D> CWD not needed. > =3D=3D> PASV ... > Cannot parse =
PASV
response. > =3D=3D> PORT ...

On the server side:

> $ nc -lv 8020 > Connection from 10.160.4.160 port 8020 [tcp/intu-ec-svcdi=
sc] accepted
> 200 ok > USER anonymous > 200 ok > SYST > 200 ok > PWD > 200 ok > TYPE
I > 200 ok > PASV > 200 ok > PORT 10,160,4,160,134,42
       ^^^^^^^^^^^^

This would affect IP users connecting through a privacy proxy or VPN,
leaking their public IP address if they are otherwise connected without
NAT. For users connecting without such a proxy but through NAT, it leaks
the internal IP address.

https://bugzilla.suse.com/show_bug.cgi?id=3D944858

Andreas

--=20
Andreas Stieger <astieger@suse.com>
Project Manager Security
SUSE Linux GmbH, GF: Felix Imend=F6rffer, Jane Smithard, Graham Norton, HRB=
 21284 (AG N=FCrnberg)



--Q7ri4ch1LfDQ2MoHoW6NnncxR5WEPTxuB
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJV7+VSAAoJECzWqVXhWUVGjhoP/1KxR+Msbb7Iko7D8eOEY0Lz
63eA2m8WjOKw5hW80H9RZkkvjx/EzeBi0ZiyLpgBA9lFULiFt5EBo6HfN7r87y1f
7M8WPLi97xBFxpKlUlu1ybbcdZ/KMfvC/ZIClNBF3gAho/eaQ9wfaJ1Fkft1WeMC
rvVGLe7xaow04iA307FR81rRTEQXmOCmlUMHk683u+mu33Ou5IMz5NqH6INye3x9
qIaj8mar33f8UMxwJgQ+a/8hjE7alQuESa0ZKmGJDhNn3ZbeMvoZh1zd0Wz0XTsl
3+8cdVU26LGg23is6LzbtDQNytitDZbb6FFAq3UrODSNVnac3ryOIUG2uoP3c7Ri
PO9OmU7Tj7gOwgFqGZUeWsUluK0Qp3+JUWXixqqJb7a1pi7Pac7rIKaOK1GjMRSI
3mhB/54rbFAdzoTN+2iIcXiHmwjlDcc5bXN29BIG1HvCaJ3r5Ib/TntIuOyeBxEU
jzyZky0UHncazxtHo3wyxQ17KOT6cfFjwsGG2d8o/bC3NQBAfYxSfNEfaIB/vr65
UdHpC2xo0YSUsEYbxfOzxPM+1Nt0f+q2klmElZQ0LRaFxzs6LImjg8+7JwmwZNgs
Hg3eDpKaSZJsnVpNVsbZH8AOtcIRUNVMjlxXlGL7gnVGM21eN0gMkL3f/Gv1BE8E
CgO7AoGrhJqrBkItk4PE
=L1Kt
-----END PGP SIGNATURE-----

--Q7ri4ch1LfDQ2MoHoW6NnncxR5WEPTxuB--
