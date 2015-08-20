X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1731" "Thursday" "20" "August" "2015" "16:52:53" "+0200" "Alessandro Ghedini" "alessandro@ghedini.me" "<20150820145253.GB24832@kronk.local>" "50" "Re: [oss-security] [oCERT-2015-009] VLC arbitrary pointer dereference" nil nil nil "8" "2015082014:52:53" "[oss-security] [oCERT-2015-009] VLC arbitrary pointer dereference" (number mark "        alessandro@g Aug 20   50/1731  " thread-indent "\"Re: [oss-security] [oCERT-2015-009] VLC arbitrary pointer dereference\"\n") "<20150820130138.GA17576@core.inversepath.com>" ("<20150820130138.GA17576@core.inversepath.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25618 invoked by uid 550); 20 Aug 2015 14:53:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24563 invoked from network); 20 Aug 2015 14:53:05 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=rowxceWF08W5pL9jH8IzQAUkE1XzufDRAn8fsNofjIM=;
        b=mXXxn1MvZheN9fyu5ozmanjlT7xw1mh7qKI9InuZxL49JwBaHuj6cCMOW6CT1oQvax
         k7te/cZ2aXvTS5TsD8GF9foDvKW+1sq5zfbKa2b/RKyKd5AKSS2Win3wHN2geuKhs+46
         1o3tKCeanZMQReBaIv3Eaxr97LkhXQFHSJ6Uf9C/Zm1OxRuIDSYe/lcUI+8nXwg5Au9x
         v3F3HO53VfGYINNCQquJpxq3kAlWT//nUoWxCUNZQt0SZLBJB0KNlrBXxjpRSmK4Okxe
         kzn++XRfDqMvv8UpzB/d3JK20427gWMxgwt6Ko1n0BZEJD4hOD+iODIn7T2AxuP9po2R
         2vRA==
X-Received: by 10.194.60.226 with SMTP id k2mr6537533wjr.10.1440082374611;
        Thu, 20 Aug 2015 07:52:54 -0700 (PDT)
Message-ID: <20150820145253.GB24832@kronk.local>
Mail-Followup-To: Andrea Barisani <lcars@ocert.org>,
	oss-security@lists.openwall.com
References: <20150820130138.GA17576@core.inversepath.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Bn2rw/3z4jIqBvZU"
Content-Disposition: inline
In-Reply-To: <20150820130138.GA17576@core.inversepath.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: oss-security@lists.openwall.com
Date: Thu, 20 Aug 2015 16:52:53 +0200
From: Alessandro Ghedini <alessandro@ghedini.me>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] [oCERT-2015-009] VLC arbitrary pointer dereference
To: Andrea Barisani <lcars@ocert.org>

--Bn2rw/3z4jIqBvZU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 20, 2015 at 03:01:39pm +0200, Andrea Barisani wrote:
>=20
> #2015-009 VLC arbitrary pointer dereference
>=20
> Description:
>=20
> The VLC media player is an open source media player and streaming media
> server.
>=20
> The stable VLC version suffers from an arbitrary pointer dereference
> vulnerability.
>=20
> The vulnerability affects the 3GP file format parser, insufficient
> restrictions on a writable buffer can be exploited to execute arbitrary c=
ode
> via the heap memory. A specific 3GP file can be crafted to trigger the
> vulnerability.

So, is there a reproducer for this issue that you can share?

Thanks

--Bn2rw/3z4jIqBvZU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJV1enFAAoJEK+lG9bN5XPL5LAP/0ifXX5iHmqyGOE7WtPlK4pn
osDTNXeJ7s5K5AV9GaUbBcKJkfPapETS7InFUkr4jy0D6e0Y/qNOjlcdDI1O3rOo
90ghweRUrfdTjUKDPc1tl4aJk0HEGxwRGb4Mo+y+JW4OplqmhpFnmJ4J3cAKhn1S
JYCz/AUjanQtN0pkLMPpJpApi54/4FENWRmIUWKZIITvYRBn60rZNb8KQ8ZxF7ML
j6EIgcc6M1FQHALBRGEmLA3190talPKAyBmzRWCooG+BpY9t3HKFxnxIwYpMuwQN
k2UyKGO4pzXdujBr5E2isKCqnB/VglywF8uAttLv7P+jYnz0uhkvwy8PYhIeoGuh
izy7mkzUi/lR7oO3Mf9qPqeo7DVsuG5rMMk/EI/+NuS2s2D1h4iHJygFMvZpmMMX
J6qOO2VAeB2Drouat5Q/f+R7lYD2Z+Pu+8xgqATFPosS0wrTgvMPA4sgbun5g14X
pEaHJ7CI5f8tasYEznpvtaHstNwxMpBEWIvSym4pn717APJJ4pw9UOLGfuL0WDeJ
TkbZgL1h3WwIXclqlPxn6dt7ZAhg2NzSB4xCGII7ZbX5nlufkfQ8TUQN6pZAyzyP
Qej5k+1/yW5IW/diFijo+un13WreIAEgoUhsSX9AdVAPP9w4C/Xra3fNAS9Wsii8
phM6x1c8fLdn0fqjZgU+
=rhLD
-----END PGP SIGNATURE-----

--Bn2rw/3z4jIqBvZU--
