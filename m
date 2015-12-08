X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2973" "Tuesday" "8" "December" "2015" "21:46:08" "+0100" "Felix Geyer" "debfx@fobos.de" "<56674190.5010003@fobos.de>" "82" "Re: [oss-security] Re: CVE request for keepassx password database export" nil nil nil "12" "2015120820:46:08" "[oss-security] Re: CVE request for keepassx password database export" (number mark "U       debfx@fobos. Dec  8   82/2973  " thread-indent "\"Re: [oss-security] Re: CVE request for keepassx password database export\"\n") "<CAJ0cceZmWz=hN6je8tu+tFRj=zFtcwG0B8Vyq_iELDJQh+q_ug@mail.gmail.com>" ("<1448877939.5015.30.camel@debian.org>" "<20151130220422.09CD46C0211@smtpvmsrv1.mitre.org>" "<CAJ0cceZmWz=hN6je8tu+tFRj=zFtcwG0B8Vyq_iELDJQh+q_ug@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17736 invoked by uid 550); 8 Dec 2015 20:47:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16083 invoked from network); 8 Dec 2015 20:46:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=fobos.de; s=201209;
	h=Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:Cc:References:To:Subject; bh=RTnTXiEEb5cKjFVUoZwY2KIzacBmUaXx2HwDrLv08Ss=;
	b=ZxVZUW/RCxMkA56RYIqaNi3u5Lxvq9A9hLwyJbIwD0WXdyudgCpiSj5YrKAzJYf6QAtRkBr5od1zoOzvTDUVOFUovm4234KGh6Tm7gbgVIdJ0E9hfS+5vi/Vls7EhypxQ4t+VbbmMCaz+s1garSldCQ+Xn3pH6JW2oFYnFgdxjw=;
To: Reinhard Tartler <siretart@gmail.com>, oss-security@lists.openwall.com
References: <1448877939.5015.30.camel@debian.org>
 <20151130220422.09CD46C0211@smtpvmsrv1.mitre.org>
 <CAJ0cceZmWz=hN6je8tu+tFRj=zFtcwG0B8Vyq_iELDJQh+q_ug@mail.gmail.com>
Cc: Yves-Alexis Perez <corsac@debian.org>
From: Felix Geyer <debfx@fobos.de>
Message-ID: <56674190.5010003@fobos.de>
Date: Tue, 8 Dec 2015 21:46:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Icedove/38.4.0
MIME-Version: 1.0
In-Reply-To: <CAJ0cceZmWz=hN6je8tu+tFRj=zFtcwG0B8Vyq_iELDJQh+q_ug@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="lnkm36eDd6Tiox7cf1uTV1LA31TPGS6Tj"
Subject: Re: [oss-security] Re: CVE request for keepassx password database
 export

--lnkm36eDd6Tiox7cf1uTV1LA31TPGS6Tj
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 04.12.2015 04:24, Reinhard Tartler wrote:
> On Mon, Nov 30, 2015 at 5:04 PM,  <cve-assign@mitre.org> wrote:
>>> it seems that keepassx 0.4.3 export function are a bit buggy. Starting =
an
>>> export (using File / Export to / KeepassX XML file) and cancelling it l=
eads to
>>> KeepassX saving a cleartext XML file in ~/.xml without any warning.
>>>
>>> This was reported privately to the Debian security team today, but it w=
as
>>> actually reported publicly earlier in the Debian BTS. Unfortunately the
>>> maintainer didn't acknowledge the bug or forwarded it upstream, apparen=
tly.
>>>
>>> It's not a terrible bug per se because leaking a user password file on =
purpose
>>> would still require a lot of social engineering skills, but it still lo=
ok like
>>> it should get a CVE (an user explicitly cancelling the export surely do=
esn't
>>> expect its passwords to be there in a hidden file.
>>
>>> https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D791858
>>
>>>> canceling export operation creates cleartext copy of all of the user's
>>>> KeePassX password database entries
>>
>>>> with Debian's default umask, the file is even world-readable in
>>>> multiuser machines
>>
>> Use CVE-2015-8378.
>=20
>=20
> http://anonscm.debian.org/cgit/collab-maint/keepassx.git/commit/?id=3Db3c=
9028db8ec3b8752ff47717ffc792d755c1294
> should fix the issue.

Yes, the patch looks good.


> Felix, I've imported the package from bzr to git and put it to
> collab-maint. I have not checked whether this issue also affects the
> 2.0 branch. Maybe this issue would make a good case for a 0.4.4
> release?

Thanks for taking care of updating the Debian package.
Version 2.0 has a different codebase and is not affected.

I've just released version 0.4.4:
https://www.keepassx.org/news/2015/12/551

Cheers,
Felix


--lnkm36eDd6Tiox7cf1uTV1LA31TPGS6Tj
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJWZ0GRAAoJEP4ixv2DE11FSLkP/jj9eATUjp6ZpojQ7PU8Npj8
niyKC5c9PzSipnCO9EcwYHYiL+GL7lGKMeEsxPEEkchmWUa+aCkKorFMUB5WSpk2
flyJycUebKZG73d8elOZLyz0wOI8G577EqosVTRZ+OIXtwMYi94H4p+mn/7M7Zm5
2CGpHyLNsrmE02ZEA5ZDHJ8twaMtQuuQt7zdcDg2UH6zMpkD1jGKB5bVGc3yaq89
Q5NdCooJf+YiyWY8+XYBsNJEoy+uLcJgHwmLR5oYs8siZ8daYJE5YfOJXIDXAqQ0
neIah0Z+79bKIT9kDYTG2CLXLj5OuopVd/zfGj06Xps1UpjP7FiSJeck5CwOHjKr
mSOltSiFFjnXQVaB57dhGFn59vY9GclRvDwERkY40aEdAinxG/Ueca1P7YYiT1fY
g08vqSPNnonP9IiErAHlUKKm77N7jGgT/Voaic0li2pRNOd5ZdUix7ubppwlMxCo
IVQj3Ja9Sk3STiIcto436zSmURHy/72dZ8H6yqSZ76QkmQOVIjBb7tnD0oMqgpF3
uHAFlNbx/C2xbdnIXRcG+YpZPhjl6FF5Ayi54gQkedfhUSA7uEjZ2VBE2FX7VgGM
t4NyUUdnUC48AQGGy0Wfjtaxr6rcG5kceB0YC3s1nchIdVYD5SIsheLrUWl9qVJN
NdDtWqXxKkfOFnx7QuxB
=z5ns
-----END PGP SIGNATURE-----

--lnkm36eDd6Tiox7cf1uTV1LA31TPGS6Tj--
