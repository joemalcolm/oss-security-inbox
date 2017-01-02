X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1849" "Sunday" "1" "January" "2017" "19:20:54" "-0500" "Leo Famulari" "leo@famulari.name" "<20170102002054.GA21309@jasmine>" "52" "Re: [oss-security] libtiff: multiple divide-by-zero" nil nil nil "1" "2017010200:20:54" "[oss-security] libtiff: multiple divide-by-zero" (number mark "U       leo@famulari Jan  1   52/1849  " thread-indent "\"Re: [oss-security] libtiff: multiple divide-by-zero\"\n") "<1875168.fojZKPVITU@arcadia>" ("<1875168.fojZKPVITU@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21845 invoked by uid 550); 2 Jan 2017 13:41:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32134 invoked from network); 2 Jan 2017 00:21:09 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=famulari.name; h=
	content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to:x-me-sender:x-me-sender:x-sasl-enc
	:x-sasl-enc; s=mesmtp; bh=PSPq68XX8HCp1CoH8hP7lKAD+E4=; b=L/09Gs
	FP/W14e+wW5MJvz/Ee658tZElZgvvA8Se7IFhD3CEYGFrn8NJdjXdLorimoA0LH9
	BGAvpRyIiZLvtAVzjlzG9QJGfXArIZP+5BTmXGcsFsTHrtSGTpeoNNnWb5QY+3Ue
	CKxvcH0O2sz6YuRxDursYweojx2orLkSFwiJk=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=smtpout; bh=PSPq68XX8HCp1C
	oH8hP7lKAD+E4=; b=YLKJNkCZKiZCgKqy5UkKSFbwarNv4lYH7ZrlyG5VdQeRi+
	LBaQOlkSuS8hWCis3WLis+8sUVkw41keEjauzuzx3wuc2/b7JeWhFivpGZRhyDHS
	s2gVPJR1lp0WraeoQnMg7oj6uMnpbp5xs8Ehr8SOnmm0YNWYDyHhXkJVdwRrA=
X-ME-Sender: <xms:55xpWBHY6f0wMQZkORLcsvAvoQj3YLdK6jFW0Cgu_DxIPvsRBoV0Fw>
X-Sasl-enc: BoxN+rBbnuCb4BsrLS5GfQXEA518hlf3uCDOeVJ5VbvO 1483316455
Date: Sun, 1 Jan 2017 19:20:54 -0500
From: Leo Famulari <leo@famulari.name>
To: oss-security@lists.openwall.com
Message-ID: <20170102002054.GA21309@jasmine>
References: <1875168.fojZKPVITU@arcadia>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="k1lZvvs/B4yU6o8G"
Content-Disposition: inline
In-Reply-To: <1875168.fojZKPVITU@arcadia>
User-Agent: Mutt/1.7.2 (2016-11-26)
Subject: Re: [oss-security] libtiff: multiple divide-by-zero

--k1lZvvs/B4yU6o8G
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Jan 01, 2017 at 04:46:12PM +0100, Agostino Sarubbo wrote:
> Description:
> Libtiff is a software that provides support for the Tag Image File Format=
=20
> (TIFF), a widely used format for storing image data.
>=20
> Some crafted images, through a fuzzing revealed multiple division by zero=
.=20
> Since the number of the issues, I will post the relevant part of the=20
> stacktrace.
>=20
> Affected version / Tested on:
> 4.0.7
> Fixed version:
> N/A
> Commit fix:
> https://github.com/vadz/libtiff/commit/438274f938e046d33cb0e1230b41da32ff=
e223e1

Do you know if this repository has any relationship to the libtiff project?

It describes itself like this:

"Unofficial mirror of libtiff cvs repository at cvs.maptools.org created
and updated using "git cvsimport"?

--k1lZvvs/B4yU6o8G
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEsFFZSPHn08G5gDigJkb6MLrKfwgFAlhpnOAACgkQJkb6MLrK
fwg0YBAAp2Wx4IhUNZyLP8w+NiAVp3SZ7inTbM2GaHVlCvJFAOUp1nCmeDhNXSc9
NzpwiyNQYbeF3NVy1xSx8u2JCxTbl3N/m/IMBq2tSPMgKse7xoucmCxHTxF878zh
J40j24X+abqbIdcujHs3FNXBQDbjPav3fEgUQaBTAqc92mdJOVoL7SNHfE9dNcyS
Ll7hsiuUMOWDwgyWFKiJzwDM74D4oIVyxkt08ZRpEBFzyzHo55iEj82ec/NWrY9M
PhQlnTO8gDU7TqSOjt6rVUM7c6PVEbsuY3GNIWZZ2lYmvEXcErUzQqMI9v1V4DiM
jIbGlVrOGXXAqqc0w5n0WUoBVKv6TrNlAUl2c9f7ABbxl0cNo8NexRfmIJjyuQAC
ChI8koutwk9eNa6lMWlub1RzmPQcrVGRrVjoz19dNaYHwub49jcl2KlakjmJBaw+
cEIQ3dTcGUQskZZhb4Y64vPqsvtFVslaIUjP7JVRAlDlFBAoaw6EvDdD2RIIQjRK
YR3zsq/3Vw1NloieUMkJ3j6h2jNQ26+Cg2mfzFrJpN2JCeHNjXKsZpZg3i0c/qjv
x880BcHkf9QJgbOCmxiv+oBd7WtlaMIv7ozW0v3wGRvMgx//7momm8bqSGcvk6r3
Jn/Z4CBl3Kx32J2XikMkVZLE2z2kX1NBiOhBwJGEKPHL2mOitzs=
=iZOd
-----END PGP SIGNATURE-----

--k1lZvvs/B4yU6o8G--
