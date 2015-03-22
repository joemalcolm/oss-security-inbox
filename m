X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2124" "Saturday" "21" "March" "2015" "20:27:40" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<550E289C.1060602@redhat.com>" "55" "Re: [oss-security] CVE for Kali Linux" nil nil nil "3" "2015032202:27:40" "[oss-security] CVE for Kali Linux" (number mark "        kseifried@re Mar 21   55/2124  " thread-indent "\"Re: [oss-security] CVE for Kali Linux\"\n") "<CAHZU0yRzjyO78Nan5jgf38Mqt3hPQDDhcsirdVmBFPmRZ=6k9g@mail.gmail.com>" ("<550E21FA.6090704@redhat.com>" "<CAHZU0yRzjyO78Nan5jgf38Mqt3hPQDDhcsirdVmBFPmRZ=6k9g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7524 invoked by uid 550); 22 Mar 2015 02:27:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7503 invoked from network); 22 Mar 2015 02:27:54 -0000
Message-ID: <550E289C.1060602@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
References: <550E21FA.6090704@redhat.com> <CAHZU0yRzjyO78Nan5jgf38Mqt3hPQDDhcsirdVmBFPmRZ=6k9g@mail.gmail.com>
In-Reply-To: <CAHZU0yRzjyO78Nan5jgf38Mqt3hPQDDhcsirdVmBFPmRZ=6k9g@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="WjD4f1PIj2BO4AlvpfxepJuQ7hkEJw58p"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
CC: Assign a CVE Identifier <cve-assign@mitre.org>
Date: Sat, 21 Mar 2015 20:27:40 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for Kali Linux
To: oss-security@lists.openwall.com

--WjD4f1PIj2BO4AlvpfxepJuQ7hkEJw58p
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 03/21/2015 08:04 PM, Justin Steven wrote:
> Kali, like its upstream (Debian), signs packages using gpg.
>=20
> https://wiki.debian.org/SecureApt
>=20
> Kali provides sha1sums over https at their site to verify the .iso
> download, as well as providing gpg signatures for .iso files
>=20
> --
> Justin

So I guess we enter uncharted territory here. So my thought is this:

Vendor has front page that recommends doing something completely insane
and insecure (http/md5s/etc.). On the back end (good lucking finding
this) vendor does something sort of secure (gpg signing of packages, no
clue if key distribution is secure) but this is not really documented well.

Does this win a CVE or not? I personally think yes, yes it does.

Mitre as always is the final arbiter of what is cool. I mean what is a CVE.

--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993


--WjD4f1PIj2BO4AlvpfxepJuQ7hkEJw58p
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJVDiicAAoJEBYNRVNeJnmT8ucP/2x6vZaUW6EIuSWkbLLHbO3s
QCSTo2xkxNZeA0nd7fxVaH0QRRko3qroMmdGtr45xx87A15YBsjbry6eBUIB1TSG
gpMmNA9Mc9ps0ME12MnRs7M8rrYeN4bPReFUZ84DpNMDWKBeXCDG/WdWTsR+7Mcq
u7unnxuB4ESm81xHGD70At0rWub0kVhsRPpbzSaThn5h9yq0ICdMh3SRki2tydzy
GC47xeS07LijeeX3uiaNTzX06OFsxqwO4zPFokzcpXOxxISyMyFvfamxJuO1LqYi
SvYWPbPcKRUONS39YU4fNxo2LGjL7beOOHi+YruKu6Q0zCwe3jVx1TlRT5hy0Un5
UqSv//BEUk6BQeb4YPCwYDFM4A/cbu1gwm5F5tHKsx2byfW8OPXu6wp6X6ixEwQE
WTMrrTrZFWqnXjxE9hwH253zBse2QkrWALCE4meJ6lklnTdG/ndxHRwoHvSb50//
5lDkYjS4FuxESlVULTXV/lj3x67Yp8C1E9mTG0W/pGThHZm207uCEUFZAQ9MH06J
YR3kcHc8FOxAWa3hcnRUJc7snrKgX+rz05huMrR8NgNY2YxKE8SCvyP7VIsw7k+X
cRHEPR7JJLU2DHO152JgrTlaQnbuEER31jtEl5lYrVZZenV22s0ZGL9wS6DXN7X7
U5w8BuwwNUc5BbvQ8086
=rUj2
-----END PGP SIGNATURE-----

--WjD4f1PIj2BO4AlvpfxepJuQ7hkEJw58p--
