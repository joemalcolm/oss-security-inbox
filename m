X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1864" "Thursday" "5" "May" "2016" "14:50:32" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20160505145032.0f3a564a@pc1>" "50" "Re: [oss-security] broken RSA keys" "^Date:" nil nil "5" "2016050512:50:32" "[oss-security] broken RSA keys" (number mark "        hanno@hboeck May  5   50/1864  " thread-indent "\"Re: [oss-security] broken RSA keys\"\n") "<CAP9m6Yc06E+Snw_1Wn_7txX+o9jSTcU_0hsf+QDsR1xuv+FqAA@mail.gmail.com>" ("<20160504124248.GA15148@openwall.com>" "<20160505112350.66f699b5@pc1>" "<CAP9m6Yc06E+Snw_1Wn_7txX+o9jSTcU_0hsf+QDsR1xuv+FqAA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9256 invoked by uid 550); 5 May 2016 12:50:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9238 invoked from network); 5 May 2016 12:50:45 -0000
Message-ID: <20160505145032.0f3a564a@pc1>
In-Reply-To: <CAP9m6Yc06E+Snw_1Wn_7txX+o9jSTcU_0hsf+QDsR1xuv+FqAA@mail.gmail.com>
References: <20160504124248.GA15148@openwall.com>
	<20160505112350.66f699b5@pc1>
	<CAP9m6Yc06E+Snw_1Wn_7txX+o9jSTcU_0hsf+QDsR1xuv+FqAA@mail.gmail.com>
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.30; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-31212-1462452635-0001-2"
Date: Thu, 5 May 2016 14:50:32 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] broken RSA keys
To: oss-security@lists.openwall.com

--=_zucker.schokokeks.org-31212-1462452635-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, 5 May 2016 08:42:13 -0400
Stanislav Datskovskiy <stas@loper-os.org> wrote:

> Where, exactly, did you get your public keys? Would you consider
> sharing? Quite a few of your moduli are not in my SKS dumps.

I highly doubt that the keyserver dumps are different (except a few
days +-). I got mine from this URL:
http://stueve.us/keydump/

Wild speculation: There are several ways in which keys can be
different. There are v2, v3 and v4 keys (see rfc 4880) and there are
master keys and subkeys. My parser code should handle all of them.
Maybe whatever you do doesn't support all key variants?

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-31212-1462452635-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJXK0GYAAoJEKWIAHK7tR5C6ZgQAJOxazdJRu4ZBtL436+tGSEi
z7KxnYDHvSLAzaQjcyVZ6dqgj4QRzzxtsaux5TmwD2NYUoRk7VR6vHxuUC5IyzKO
alyxnzu+Ys3HOOdkEpA+7iOrSxHTd1zTZQipFDCM3dnZBD7FFK6htnIHRH1UfQuU
sOJCy09erTaGO7omikFx2jAcgd3EJJ0Cs4RD7+jcuoEuVEdy1PPBHfjOBKHyz4Kv
6q113m/RhFXVICaCLuAjEvI/U2jMPp7ixkON1qB98Bl2vK6YLAYn8vEs3DB9eYl2
lV/mXR5v7VFNsO5CwtampXId6BgAh1HsMUY5rARPfb1kfnQE+GTlUf2BmhWV38zV
PZWImbogVDDd3JW66vzZ2Fb5MECx84lWaXOiyP6KVCJ/CZYNLJWNQKfqwgjfhnsf
3m+N29qpqkyjlZvWyC1qYz3jHoMW69tUlzrDnK8mvu0CsZSfRhe+qI5uSVnqKsmT
IS32sqDC/io6jn1Rvvw9dOUneb3bSQpJNzTfncJtPyoKiDK2uiQfrV3GN2HfvoYG
pfb8fz9bsB107D7UY/RqQkyptjq5lF/eJEg/7t54uEfFTzcX5qLCVZPKzGAlnTBF
8f/SLlGCva9LgGVq3E5lf54F4nHmL/YzZmRvRYj+p2+bkamEIw9hEz7X/1o0ycTo
sjsZwno7XXRLfByeXJ5f
=El2+
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-31212-1462452635-0001-2--
