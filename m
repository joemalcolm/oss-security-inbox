X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1406" "Thursday" "3" "November" "2016" "18:54:35" "-0400" "Leo Famulari" "leo@famulari.name" "<20161103225435.GA3298@jasmine>" "36" "Re: [oss-security] CVE request:Lynx invalid URL parsing with '?'" "^Cc:" nil nil "11" "2016110322:54:35" "[oss-security] CVE request:Lynx invalid URL parsing with '?'" (number mark "        leo@famulari Nov  3   36/1406  " thread-indent "\"Re: [oss-security] CVE request:Lynx invalid URL parsing with '?'\"\n") "<CAPGxrc_N_=z12njMyN2WrSO74A9=ioEnppxs2YGExMn0qd6MJA@mail.gmail.com>" ("<CAPGxrc_N_=z12njMyN2WrSO74A9=ioEnppxs2YGExMn0qd6MJA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11835 invoked by uid 550); 3 Nov 2016 23:19:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27868 invoked from network); 3 Nov 2016 22:54:51 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=famulari.name; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to:x-me-sender:x-me-sender:x-sasl-enc
	:x-sasl-enc; s=mesmtp; bh=6WAC8MVMpQ9+mUv30AFHurp62Ks=; b=I6gQnA
	jp6jS5hG3UI/9wHx5JJ7RNS5hpNsO7npRldjmbNt5jN4iNIfEzJneEUGZcvT3vcu
	NeFFml5S9XJExCl+9vquLbQsPM22cwfwerjRVpRSmAVzCg+kcqsz25ogG5O48grm
	tT4tpt6KnGjfLBWv8dE32vk4UUQuf+L9KMdVs=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=smtpout; bh=6WAC8MVMpQ9+mU
	v30AFHurp62Ks=; b=uBQ7rcYQhbIChfepP+oByMnYbXnP5/1mYXD9BJICKFb7gM
	hWkqPJ88bnewjsBkBfzsckrGftI5+bqgnvz/HRCqLz1J3c7jutFIu+ldrFhJpWUu
	ih7KnUIzchbBMGqrCjEo9WeB82snnyUhLttj/7hAGZ7aHum/U+Rq+pNNDQbdw=
X-ME-Sender: <xms:L8AbWNlZm-YiNU8jjSb6TyJN1tBty9UtgYs4fBJHP2NRcmkJdgIjnA>
X-Sasl-enc: Zo0+GO5xE3molrl6xg5sDMmSqOhVT7H1tdz7MDZnx+hS 1478213678
Message-ID: <20161103225435.GA3298@jasmine>
References: <CAPGxrc_N_=z12njMyN2WrSO74A9=ioEnppxs2YGExMn0qd6MJA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="BXVAT5kNtrzKuDFl"
Content-Disposition: inline
In-Reply-To: <CAPGxrc_N_=z12njMyN2WrSO74A9=ioEnppxs2YGExMn0qd6MJA@mail.gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: dickey@invisible-island.net, fulldisclosure@seclists.org,
	cve-assign@mitre.org
Date: Thu, 3 Nov 2016 18:54:35 -0400
From: Leo Famulari <leo@famulari.name>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request:Lynx invalid URL parsing with '?'
To: oss-security@lists.openwall.com

--BXVAT5kNtrzKuDFl
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 03, 2016 at 05:58:14PM +0800, redrain root wrote:
> I can't find any bugtracker in lynx ,so i will disclose by this mail and
> sent to the author dickey@invisible-island.net.
>=20
> redrain (rootredrain@gmail.com)
> Date:2016-11-03
> Version: 2.8.8pre.4=E3=80=812.8.9dev.8 and earlier

FYI, as far as I can tell, this bug is present in 2.8.9dev.9 as well.

--BXVAT5kNtrzKuDFl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYG8AnAAoJECZG+jC6yn8IJoIP/iE6YlKHfJMYPxK+68Lh6nCC
TY55BjP1IeWOQnrZo23jwQyH1pRw8bpl7hu/0hogDiDVNXovSQ2wmWkz+xgP8PMl
2x2gQm67x6zQlPKJtaTsMd0mYnRANcm+yIVEx5L+0dBO3do9SLlofi+7E1eo6U+i
NjqoF0YXZ216y9wARbm+YwijC/IIHDNGvzmovgrTTW+nUnmzQNsSLR0WJKS/84cJ
u9QGZJ6D12iV+sG7NzevVUEf4a54PamO0uhQAh9gLJkkr/EKUDmiUnjQsdnd1BfA
1GkaYQa0wUbJE6ziXh3QgA7rVuFsCDlaYTzaQx8z75q78mDHysgr7ZwaXh/LNIgL
MDUv3iU/JxPw9+oH2Dd8GnCG0AePCB+Jum1WKJA54z0jldvsI0pcVaAfl5jUc+7q
RD3JKMcZbRV7J7PvhDcewzjPAN2UBC6qSEFlX0dSCDXwSIMO4n8W6gqeRZtBJAVh
vYBCOmsUwdZQ0GM7lgTaiD1bbA6p96nu7P3Ps4G6i5D6ipvuEUVC7nQFUxHKl3I9
NjlodyRl4HNADBcSbSraf3PwLp/h7BtMzqzM5zBK6R3aJ2vJIsZkApexKZyZaCwf
NRqgY9YXmTgF9o/kH2QO9Hjio792Lns8TQoNrzZfiQCAjQj/LiYwVmCnJxFmeIuv
2iMqoZF6F4NcCl2mvxgr
=EsFq
-----END PGP SIGNATURE-----

--BXVAT5kNtrzKuDFl--
