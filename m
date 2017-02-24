X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1813" "Friday" "24" "February" "2017" "11:03:42" "+0100" "Matthias Gerstner" "mgerstner@suse.de" "<20170224100342.GA3592@f195.suse.de>" "56" "Re: [oss-security] CVE-2017-5956 virglrenderer: Virglrenderer: OOB access while in vrend_draw_vbo" nil nil nil "2" "2017022410:03:42" "[oss-security] CVE-2017-5956 virglrenderer: Virglrenderer: OOB access while in vrend_draw_vbo" (number mark "U       mgerstner@su Feb 24   56/1813  " thread-indent "\"Re: [oss-security] CVE-2017-5956 virglrenderer: Virglrenderer: OOB access while in vrend_draw_vbo\"\n") "<alpine.LFD.2.20.1702131021590.18948@wniryva>" ("<alpine.LFD.2.20.1702131021590.18948@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24256 invoked by uid 550); 24 Feb 2017 12:44:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29748 invoked from network); 24 Feb 2017 10:04:17 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Fri, 24 Feb 2017 11:03:42 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20170224100342.GA3592@f195.suse.de>
References: <alpine.LFD.2.20.1702131021590.18948@wniryva>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="LZvS9be/3tNcYl/X"
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.20.1702131021590.18948@wniryva>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [oss-security] CVE-2017-5956 virglrenderer: Virglrenderer: OOB
 access while in vrend_draw_vbo

--LZvS9be/3tNcYl/X
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> Upstream patch:
> ---------------
>   -> https://cgit.freedesktop.org/virglrenderer/commit/?id=3Da5ac49940c40=
ae415eac0cf912eac7070b4ba95d

Please note that the fix for this issue opens a memory leak, because it
forgets to free the 've' structure from this line:

  ve =3D calloc(num_elements, sizeof(struct pipe_vertex_element));

A possible follow-up patch is attached.

I've already informed the reporter of this issue but there seems to be
no upstream fix yet.

Regards

Matthias

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Dipl.-Wirtsch.-Inf. (FH), Security Engineer
https://www.suse.com/security

SUSE Linux GmbH=20
GF: Felix Imend=F6rffer, Jane Smithard, Graham Norton
HRB 21284 (AG Nuernberg)

--LZvS9be/3tNcYl/X
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJYsAT+AAoJEBTEBclxkjVTe9AP/0xe1EuHJdifdk5cQUliPY06
ic9ZQB7P/h8SdCBGmWagOGAldqh+zyAiC3nqJvebIArPARf4i1ayoAPO0xha50bP
YZ5vtQzTvpQ9a3Sle/GoOMtprXGC/0nJvsFT0aaVPxTobU6ffpcC7u/OqW4ngnnO
OvWjK8E6fbelpV+G+/ezCD0xhfHD0Pt4FaGeDycm8F7Xm/01gBJqByZ+4P47W0HA
ZVrmczsmzkt15re8eV9ZLhtfCZ9jcNp1T5qYsgxIM+2QTmDg2ypV13TgWPFZMn5c
nxksfq7tIcbXhgN+N5InXeZdxHQtazM9BkQUIDTJmf4saQ8UAunKZ5skiPXKlP0k
KajL/38WgldHzvnS/5OVlZ4OtM9GGokPgxSFpvlGeyAAosGzoyLmsBVBwWPTTTPO
J5slnAzBZB4j1vpiYekCuQAAJFHjpVarcQG9nJ2Q0temsoJcVvfXj2VZPU8YVcYa
oiyh6Mrxtny4gcP8H6Pu1RodgoqMDVb/2xMli9kl9sURWFNAsVBZpkqDNCRgvA1X
oR5zkwYOvozAdG2kgogpTzrQC2b5L6Q4OcwZ1jnOlvxH4QtUqLA7CoS3je3FTUjv
e+javkUWx0lFSwmSzUAgv4s9ynkRQndq8bPN7WzusaWgahR16VHuExP712+nY1QA
ztItLtLUgK7Ut9nnet3h
=z5+R
-----END PGP SIGNATURE-----

--LZvS9be/3tNcYl/X--
