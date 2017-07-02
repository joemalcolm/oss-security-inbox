X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2885" "Sunday" "2" "July" "2017" "22:38:29" "+0200" "Kristian Fiskerstrand" "k_f@gentoo.org" "<647ec3a7-f2f0-b090-007a-65286b815fa0@gentoo.org>" "75" "Re: [oss-security] accepting new members to (linux-)distros lists" "^Date:" nil nil "7" "2017070220:38:29" "[oss-security] accepting new members to (linux-)distros lists" (number mark "        k_f@gentoo.o Jul  2   75/2885  " thread-indent "\"Re: [oss-security] accepting new members to (linux-)distros lists\"\n") "<CA+aC4kuUKG4CndFjbT=+LSctTXL=Xfrfze6ZE3ZCp7XCHM5OQg@mail.gmail.com>" ("<20170628200239.GA25525@openwall.com>" "<CA+aC4kuUKG4CndFjbT=+LSctTXL=Xfrfze6ZE3ZCp7XCHM5OQg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19886 invoked by uid 550); 2 Jul 2017 20:40:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18146 invoked from network); 2 Jul 2017 20:38:55 -0000
References: <20170628200239.GA25525@openwall.com>
 <CA+aC4kuUKG4CndFjbT=+LSctTXL=Xfrfze6ZE3ZCp7XCHM5OQg@mail.gmail.com>
Message-ID: <647ec3a7-f2f0-b090-007a-65286b815fa0@gentoo.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.0
MIME-Version: 1.0
In-Reply-To: <CA+aC4kuUKG4CndFjbT=+LSctTXL=Xfrfze6ZE3ZCp7XCHM5OQg@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="vWLqSHjr8x2xaG094DUw282vIBt28TlGL"
Date: Sun, 2 Jul 2017 22:38:29 +0200
From: Kristian Fiskerstrand <k_f@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] accepting new members to (linux-)distros lists
To: oss-security@lists.openwall.com, Anthony Liguori <anthony@codemonkey.ws>

--vWLqSHjr8x2xaG094DUw282vIBt28TlGL
Content-Type: multipart/mixed; boundary="L9BlEVQESIJSHWlbd3PVgqbvtlUwXBAwP";
 protected-headers="v1"
From: Kristian Fiskerstrand <k_f@gentoo.org>
Reply-To: k_f@gentoo.org
To: oss-security@lists.openwall.com, Anthony Liguori <anthony@codemonkey.ws>
Message-ID: <647ec3a7-f2f0-b090-007a-65286b815fa0@gentoo.org>
Subject: Re: [oss-security] accepting new members to (linux-)distros lists
References: <20170628200239.GA25525@openwall.com>
 <CA+aC4kuUKG4CndFjbT=+LSctTXL=Xfrfze6ZE3ZCp7XCHM5OQg@mail.gmail.com>
In-Reply-To: <CA+aC4kuUKG4CndFjbT=+LSctTXL=Xfrfze6ZE3ZCp7XCHM5OQg@mail.gmail.com>

--L9BlEVQESIJSHWlbd3PVgqbvtlUwXBAwP
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 07/02/2017 10:20 PM, Anthony Liguori wrote:
> I've been thinking about this list of items and also some of the
> challenges of Stack Clash.  Something that frequently came up was
> uncertainty about what the current set of patches were and there was
> also lack of clarity on dates.

...
>=20
> What do you think about having a public bugzilla (or similar system)
> where tracked issues are kept as private bugs?=20

...

>=20
> Thoughts?

The immediate thought that springs to mind is the [lack of OpenPGP
support in bugzilla] which makes it difficult to ensure confidentiality
unless disabling all email warnings.

For an organization it is possible to ensure a level of security as they
control all email endpoints (and disable email forwarding), so
information never leaves a secured zone, but for multiple parties
involved it would need to be fixed or configured to only send e.g "Bug
XXX has been updated, please log in to see details", which can make the
workflow inconvenient.

Notes:
[lack of OpenPGP support in bugzilla] I say lack of OpenPGP support as
the current implementation is too flawed to be used, this is elaborated
on in http://www.openwall.com/lists/oss-security/2016/02/13/8

--=20
Kristian Fiskerstrand
OpenPGP keyblock reachable at hkp://pool.sks-keyservers.net
fpr:94CB AFDD 3034 5109 5618 35AA 0B7F 8B60 E3ED FAE3


--L9BlEVQESIJSHWlbd3PVgqbvtlUwXBAwP--

--vWLqSHjr8x2xaG094DUw282vIBt28TlGL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEtOrRIMf4mkrqRycHJQt6/tY3nYUFAllZWcUACgkQJQt6/tY3
nYXH9gf+NATc/B0xAWKe73hPFk1Dinm35bWdDnv4gICjlgRIAzIUuRbcWX/9srV7
V4zUQzA0ldMF/potSoQdGaALRY8wzxNuBWCe1VwafwZAhDfVrW/6b02+xVOP8HbH
GiPmcAB241w76q8qWNsz73ZXb2Kbb9wqXrLTn2y/qlmpIbo/XIOMxEuDD58c/sKS
AqQfwxbdUUVHEW9wnm0xPbKYM09Rvf4vEqHHZBLSRlvYqBxwimScj8ykbxHofMkn
bMCnltCM/lYn6kRPaRU6ZKAgtU6N2m1wf10sBPAXBamwgZJJUY/JWp7kr7/3Isjr
fq/1kfD9y4A7cODpC+RdTeqnmCZCHA==
=dVZG
-----END PGP SIGNATURE-----

--vWLqSHjr8x2xaG094DUw282vIBt28TlGL--
