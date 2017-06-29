X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4813" "Thursday" "29" "June" "2017" "11:43:13" "+0200" "Thomas Deutschmann" "whissi@gentoo.org" "<07546f89-f5f8-7ff0-a370-138cc43393ca@gentoo.org>" "142" "Re: [oss-security] CVE request: sthttpd remote heap buffer overflow" "^Date:" nil nil "6" "2017062909:43:13" "[oss-security] CVE request: sthttpd remote heap buffer overflow" (number mark "        whissi@gento Jun 29  142/4813  " thread-indent "\"Re: [oss-security] CVE request: sthttpd remote heap buffer overflow\"\n") "<06780369-357d-1413-cec6-f8befecd2566@redhat.com>" ("<CAF1AS2h9QxW2Gj67_Oo6HYgWrLR9zsv9meT2CVSaf6dqQq-VfA@mail.gmail.com>" "<06780369-357d-1413-cec6-f8befecd2566@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5396 invoked by uid 550); 29 Jun 2017 10:10:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14144 invoked from network); 29 Jun 2017 09:43:43 -0000
References: <CAF1AS2h9QxW2Gj67_Oo6HYgWrLR9zsv9meT2CVSaf6dqQq-VfA@mail.gmail.com>
 <06780369-357d-1413-cec6-f8befecd2566@redhat.com>
Message-ID: <07546f89-f5f8-7ff0-a370-138cc43393ca@gentoo.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:21.0) Gecko/20100101
 Thunderbird/52.2.0
MIME-Version: 1.0
In-Reply-To: <06780369-357d-1413-cec6-f8befecd2566@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="kjOpH3c89rxbuqgho51v7npiRSpO8NJ23"
Date: Thu, 29 Jun 2017 11:43:13 +0200
From: Thomas Deutschmann <whissi@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: sthttpd remote heap buffer overflow
To: oss-security@lists.openwall.com

--kjOpH3c89rxbuqgho51v7npiRSpO8NJ23
Content-Type: multipart/mixed; boundary="vgv6gMto60gUtV9CwgbKGxaiND4ponuvo";
 protected-headers="v1"
From: Thomas Deutschmann <whissi@gentoo.org>
To: oss-security@lists.openwall.com
Message-ID: <07546f89-f5f8-7ff0-a370-138cc43393ca@gentoo.org>
Subject: Re: [oss-security] CVE request: sthttpd remote heap buffer overflow
References: <CAF1AS2h9QxW2Gj67_Oo6HYgWrLR9zsv9meT2CVSaf6dqQq-VfA@mail.gmail.com>
 <06780369-357d-1413-cec6-f8befecd2566@redhat.com>
In-Reply-To: <06780369-357d-1413-cec6-f8befecd2566@redhat.com>

--vgv6gMto60gUtV9CwgbKGxaiND4ponuvo
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

I requested a CVE from MITRE and got CVE-2017-10671 for this
vulnerability:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>=20
>> [Vulnerability Type]
>> Heap-based Buffer Overflow in the de_dotdot function in libhttpd.c in st=
httpd before 2.27.1
>> allows remote attackers to cause a denial of service (daemon crash) or p=
ossibly have unspecified other impact via a crafted filename.
>>=20
>> ------------------------------------------
>>=20
>> [Vulnerability Type]
>> Buffer Overflow
>>=20
>> ------------------------------------------
>>=20
>> [Affected Product Code Base]
>> sthttpd - <2.27.1
>>=20
>> ------------------------------------------
>>=20
>> [Affected Component]
>> de_dotdot function
>>=20
>> ------------------------------------------
>>=20
>> [Attack Type]
>> Remote
>>=20
>> ------------------------------------------
>>=20
>> [CVE Impact Other]
>> I have no information about the impact. Would be nice if you could check=
 on your own.
>>=20
>> ------------------------------------------
>>=20
>> [Attack Vectors]
>> A remote attacker could trigger the flaw in sthttpd's request parsing co=
de via a specially crafted request.
>>=20
>> ------------------------------------------
>>=20
>> [Reference]
>> http://www.openwall.com/lists/oss-security/2017/06/15/9
>> https://github.com/blueness/sthttpd/releases/tag/v2.27.1
>> https://github.com/blueness/sthttpd/commit/c0dc63a49d8605649f1d8e4a96c9b=
468b0bff660
>>=20
>> ------------------------------------------
>>=20
>> [Has vendor confirmed or acknowledged the vulnerability?]
>> true
>>=20
>> ------------------------------------------
>>=20
>> [Discoverer]
>> Alexandre Rebert from ForAllSecure
>=20
> Use CVE-2017-10671.
>=20
>=20
> - --=20
> CVE Assignment Team
> M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
> [ A PGP key is available for encrypted communications at
>   http://cve.mitre.org/cve/request_id.html ]
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1
>=20
> iQIcBAEBCAAGBQJZVGIGAAoJEHb/MwWLVhi2PPAP/RRQ9jGYVCEvLryJtICH/vvj
> ZjS17vckkYVbSOMoTNQR9WihtsQCzkQZ+LL2Qnio45+NORCGn6nLMAi24SotXlrs
> HI16p2h3+fZ3H/JCgT46fUDUHetq30Fy6NhwSKxCwtYEKiNvw4yT0QIPK9bmzf/p
> nTKHDQCMqYp82tFBgReZPRivQcd/+Zbi6CWsS0oNzIsADjZZx1RdaHBJoOZIFcKv
> bBopi0KDIPNgn3VsZwANz0Ex/ju3TfJVb8A9jpNyKlYaKwsou/TAw1g2l90KZxzW
> Som1pG8s/I+MynJhHDNpJm59S6nFWAzZh++lySiEWIepiEsWhEzBpJBBkSAp3wum
> TPhQNJ9BJdiS54rNqKMTGx7WxEvEcklsGQG87bfmUdyNRHYl/lElRYPNelciTnyU
> 38B7E1FwcF793Z5JJfwge1ayo7ShaCaUGx082nU9XVuSFfpG0vrcelOhFAZ0cxyW
> 9+DbSW/01FWWL35pEN0LJ5m5GeOpNa+hjn9VS/qbOiHk9n/PszbL00lS+Q+LKqTj
> J3rOoTkM69d1stlcO8/ehwyr/xo6n6u8v8BmV6So1VWgefk/cI98aoOQvEIDpwQt
> iALKi/+UinhQhG0vCtkKHXsFYXIOv7zk03EfKT37Bh13DuBBJDgIt9nMesVxpsRE
> SmLuxFujGHPobnwbNGqJ
> =3DCKLn
> -----END PGP SIGNATURE-----


--=20
Regards,
Thomas Deutschmann / Gentoo Security Team
C4DD 695F A713 8F24 2AA1  5638 5849 7EE5 1D5D 74A5



--vgv6gMto60gUtV9CwgbKGxaiND4ponuvo--

--kjOpH3c89rxbuqgho51v7npiRSpO8NJ23
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0

iQJ8BAEBCgBmBQJZVMu8XxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25zLm9w
ZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQzM0M1ODQ4MkM0MDIyOTJEMkUzQzVDMDY5
NzA5RjkwQzNDOTZGRkM4AAoJEJcJ+Qw8lv/IzHcP/0X9+GgVuuG2xEBkbB78NLtB
pp0H6729FYm5Yth2Vfqg/6kb6zhwQVAVdB5wjLfEcsnLCq3+kRKk/eVAbFWmEhux
SQWtJnKN5zGH7eJ3WibiXt2RSVFWa8kLc8RTcW4ByphylZ82rztQR6K6XnHWWpJF
kuuKlsfs9JbWJ4nWmS3QKwfW4PaAEtj3DZXnxapwBAj9zIVFCb2AOWc2mBVqlGEQ
LITYYwEPtr+t44cD7yICjFyx9qRVVlAKduwHriJ/j05OtsPTuODrB8tESPz77Miv
pTS9HLtNIERmIDF01K1vPCGTw0IqdQDUdZxmkC2Buaq00sV4yD0grVnsqTwCGMtz
ga1jH8+PM2KN9eZfOVRc3E2G8zOsrPsI47l6XWtu98SitwBYLCq1M11eGuzFTHAD
QtRp8rB4/djak9WBn+NxN/kBJhGJYkUJIGtMxD4TboCPQ0JTgoLkJ4o9LRl0fpUb
83h/gBqtLkpa1R6sr1UfCEMqSMZFSsVQ3nxFNCIT0mM2sxRcy7s7kTaljgqNiCmE
rCycjkR45hx8WwwqtBa7KlqpTNOXgTEzVGtJ89+0fjGGNa9EtR7EJStpUWB6aSmq
VBulgT7foQZuergu9hWB7IQ82fqsNmLwBHQk0CAWLNyCRoG2ubvn5YkPkMgjjebH
dlJCtVvCCHCIfjlmhU2D
=Uchw
-----END PGP SIGNATURE-----

--kjOpH3c89rxbuqgho51v7npiRSpO8NJ23--
