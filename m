X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4123" "Monday" "19" "April" "2021" "14:31:30" "-0400" "Eli Schwartz" "eschwartz@archlinux.org" nil "97" "Re: [oss-security] xscreensaver package caps gets raw socket" nil nil nil "4" nil nil (number mark "U       eschwartz@ar Apr 19   97/4123  " thread-indent "\"Re: [oss-security] xscreensaver package caps gets raw socket\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] xscreensaver package caps gets raw socket" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14249 invoked by uid 550); 19 Apr 2021 18:37:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11642 invoked from network); 19 Apr 2021 18:31:45 -0000
To: oss-security@lists.openwall.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=archlinux.org;
	s=dkim-rsa; t=1618857094;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=HSOla6x6ZDAwvH0GHl+bZ++Omiz3hzIWFp9/zDkzVB8=;
	b=ykIlgwj62yZ+9tD8xyf15ENPVnPGhHyUzSfo2aTB368XaLqbqgwMjaFGC5b18itQZ74PPn
	QVpTHiYC7sIM1hM0QK7Qycp5YuPx7qzPSCsu9leyjipPU3eg1pRWmKYDp0TWYemF38cnxM
	9s77GZRXI+3Ib9zWj4J6uztKg167pOg89D83mXU0copQ8YgixBSE0WTTI2tnjHyH1NqcN0
	gE4dPyANbNcqRnE4xWcFjRRWUHcftvHksGBkI89Czd2xooDm6mhNAWQ8ah/Q68L5EcDpiz
	v1d6qv/fMpQAigkPjdfkv6OCSqgt9+v8rYhwHhyiOeoyFDRu1WkGhrRhkvnBK73TOFyXCx
	aRQ/1tFCntQhZMG65pQM6X/OkdAdBWJB6nAW3f8n4Uors77jy1aaRBAYWsImWydqSeMUWR
	ZI+imWmaKx1dF08iRp+JbxokxM0HJQooCvlTjTmjg4TrL2abmgn86bEAF5Fjg/JlCe/b8M
	OTAhyrKa70WGqZ1osLw4pnq1bJ/x6bl6INiGIl3q7HPHJ6RX9F95rfH/oeveK/+BnXd7Rd
	J1bbNZwW3yd1x917n6T8EF7ylZDIfD1PDspOG6q1Jo8T58r0oaxd1lS5emNv1CRHmuT4fa
	JUcUe+hXlKGCGSg5bTqGcL7BKQ+8kJps/5YpQmrXFfkgXZuV5uMN4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=archlinux.org;
	s=dkim-ed25519; t=1618857094;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=HSOla6x6ZDAwvH0GHl+bZ++Omiz3hzIWFp9/zDkzVB8=;
	b=6uXR2Xla4EhKFdNHlT3CcFMCtptu6h+ppszaMiMR12kxcyOjiEsUTET1krHC/2W2KpQJmZ
	iZTzNGyT/aYhPACg==
References: <YHwlS06UV25JUeqh@momentum.pseudorandom.co.uk>
 <CEA32CF0-DCF5-4746-9BDB-5AF9CEA1118A@dwheeler.com>
 <fba0d965-fe1-a7af-bda3-5871ba9450d6@dereferenced.org>
 <93DB9621-4F4E-492B-94E9-EB86E5D09CE0@dwheeler.com>
 <7b5533cb-2b98-ce2e-20ba-bef0fb133e3@dereferenced.org>
From: Eli Schwartz <eschwartz@archlinux.org>
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <3eff829a-7795-2437-4aea-433849ffdd5b@archlinux.org>
Date: Mon, 19 Apr 2021 14:31:30 -0400
MIME-Version: 1.0
In-Reply-To: <7b5533cb-2b98-ce2e-20ba-bef0fb133e3@dereferenced.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="0WRL9VMycMZ4OF70B7b338PESTUE7DhvE"
Authentication-Results: mail.archlinux.org;
	auth=pass smtp.auth=eschwartz smtp.mailfrom=eschwartz@archlinux.org
Subject: Re: [oss-security] xscreensaver package caps gets raw socket

--0WRL9VMycMZ4OF70B7b338PESTUE7DhvE
Content-Type: multipart/mixed; boundary="lZOBTMXdwJPrtvK2bNfzjoF7qwVZlyLKX";
 protected-headers="v1"
From: Eli Schwartz <eschwartz@archlinux.org>
To: oss-security@lists.openwall.com
Message-ID: <3eff829a-7795-2437-4aea-433849ffdd5b@archlinux.org>
Subject: Re: [oss-security] xscreensaver package caps gets raw socket
References: <YHwlS06UV25JUeqh@momentum.pseudorandom.co.uk>
 <CEA32CF0-DCF5-4746-9BDB-5AF9CEA1118A@dwheeler.com>
 <fba0d965-fe1-a7af-bda3-5871ba9450d6@dereferenced.org>
 <93DB9621-4F4E-492B-94E9-EB86E5D09CE0@dwheeler.com>
 <7b5533cb-2b98-ce2e-20ba-bef0fb133e3@dereferenced.org>
In-Reply-To: <7b5533cb-2b98-ce2e-20ba-bef0fb133e3@dereferenced.org>

--lZOBTMXdwJPrtvK2bNfzjoF7qwVZlyLKX
Content-Type: text/plain; charset=utf-8
Content-Language: en-US-large
Content-Transfer-Encoding: quoted-printable

On 4/19/21 2:15 PM, Ariadne Conill wrote:
> Hello,
>=20
> On Mon, 19 Apr 2021, David A. Wheeler wrote:
>=20
>>>> On Apr 18, 2021, at 8:25 AM, Simon McVittie <smcv@debian.org> wrote:
>>>> Scraping is undesirable, but sometimes needed. If this is a common
>>>> need, a
>>>> long-term solution might be to create an option on ping to generate
>>>> a standard
>>>> format that=E2=80=99s easier to machine-parse.
>>>
>>> On Apr 19, 2021, at 1:35 PM, Ariadne Conill
>>> <ariadne@dereferenced.org> wrote:
>>> This already exists as fping(1), for example:
>>
>> The problem for application developers is that =E2=80=9Cping=E2=80=9D ex=
ists
>> practically everywhere,
>> while fping does not.
>=20
> Absolutely true, but fping is packaged in most Linux distributions, as
> well as all of the BSDs, due to its use by various network monitoring
> programs such as smokeping and nagios, so it seems like a reasonable
> dependency for cases like these.
>=20
> IMO, it's better that programs declare something like fping as a
> dependency, so that we don't have to deal with yet another program years
> from now having elevated privileges and being abused to run tcpdump... :)
>=20
> Seriously, if anyone on this list ever finds themselves writing a
> program where they need to fire off some pings, instead of making their
> program SUID or granting it cap_net_raw, just use fping instead.=C2=A0 At=
 the
> very least, you'll be happier because you don't have to write your own
> ping code, and the distribution maintainers of the world will be happier
> because you *didn't* write your own ping code.


Also fping is the standard fping, but there is no standard ping so one
would need to coordinate adding the option to a number of different
descendant forks of 4.3BSD ping, before it could be reliably used.

If the answer to your question is ever "for X number of independent
implementations of Y, add the same new feature to all of them", then the
problem will not be coming up with wonderful ideas to solve problems --
the problem will be getting people to implement those wonderful ideas.

--=20
Eli Schwartz
Arch Linux Bug Wrangler and Trusted User


--lZOBTMXdwJPrtvK2bNfzjoF7qwVZlyLKX--

--0WRL9VMycMZ4OF70B7b338PESTUE7DhvE
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEYEETBMCdNmKDQO7/zrFn77VyK9YFAmB9zIIACgkQzrFn77Vy
K9ZI5xAAxx0KME/nq93RQxegzB48rO8BzKfqzScu/Cckgfk6hRMQK+ApQS9SFGap
X+XkrIC6ojXxB4y0jRy1StXw7+IuXu9qVtFIo2TVU6l13RBzbzO6/q/dauwtf/CC
GJ6xokORv/KOZrm/4ZsdfNeHtU7iklqq2cdHU/w4pjFkzs92/UJDG3tnpkAWLSbl
r0N6qIXsBr23YMq4x/KQjLszuLB6XNugGrCeG/fgIS/J5aUez9/z9p8x3CJ60Hku
9BdLs+Jh0MrAygMva++uyMto3o9/MRE96LC4KcQRRvQJ84nuI52YW8cqxPnV+8wC
phmNQcANo29d0WylftwyAbrBiGFQiQ+fyL87dtFEJ1R9OuYNV9cNuGYuJ0iUH1MA
lLtXa+hfXt/FWqQ5uaAxyFVh4KtR2iw/tZ/siShToIpvKq/T5QZnyBuEY0F7U5lL
df/zTQ6TadBB03LZSHBKCMn5+dO3epK0OUzvj/U5qwv37IMWEhAnwbKw+ByLOcaO
XeoqrgqiAyRvkc4uiqMpSYupx3cd4FGnecWZVuV0Kc8EbQMBBNoCmO2qQXH92/wA
xtfvhE4jA6Aksm4cL7+aojLstO+4VfjZIiqO2Md3ybMJOg1225AUW0IKuBmq/f6v
pnMkTH35/QT/Rwc1q7vK5/UJA20hN/dFPP2jb+LLSUioHsUNTY0=
=vYAB
-----END PGP SIGNATURE-----

--0WRL9VMycMZ4OF70B7b338PESTUE7DhvE--
