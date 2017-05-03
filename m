X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3158" "Wednesday" "3" "May" "2017" "19:10:52" "+0200" "Pali =?utf-8?B?Um9ow6Fy?=" "pali.rohar@gmail.com" "<201705031910.52415@pali>" "83" "[oss-security] Re: MySQL - Again Riddle vulnerability (public disclosure)" nil nil nil "5" "2017050317:10:52" "[oss-security] Re: MySQL - Again Riddle vulnerability (public disclosure)" (number mark "U       pali.rohar@g May  3   83/3158  " thread-indent "\"[oss-security] Re: MySQL - Again Riddle vulnerability (public disclosure)\"\n") "<201705031823.09198@pali>" ("<201705031823.09198@pali>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15742 invoked by uid 550); 3 May 2017 17:16:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5682 invoked from network); 3 May 2017 17:11:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:user-agent:references:in-reply-to:mime-version
         :content-transfer-encoding:message-id;
        bh=NmdGoFk0VqY4iAX99/squWlvu17X1nTH0hDjwas03IY=;
        b=IDekHpWgSPX/KYwGMHUcsTmos21lhx1iWszOZRnUlQ8vTK0k1HmneDNu7xdG3RcV2b
         ZSe4r9jUISp4TheRuIX9iCmIaPPZ9boOZt7eeRsNvdh/3qP1ZJHVKU2XiC8gkWX4Bxnr
         CUlOqVlI18g3qygebVELFeIKli78BD5bkbCnS+AWhd8mys4H1iH9cTsEw1wFCH9ZXXt4
         WCDz9mFxgVqmtPedq6UocvB3E/Ij1SZxRaWuI1M4RSAOdDKguSJs3wxeHEgfK+4AUEZY
         9DyQB43n8zSbN2M4W/m9X+zESTj4pRM4UNTsop7nSVdDo3n8LuhzZo3sGv91SdfDZXn5
         YvNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:user-agent:references
         :in-reply-to:mime-version:content-transfer-encoding:message-id;
        bh=NmdGoFk0VqY4iAX99/squWlvu17X1nTH0hDjwas03IY=;
        b=esiWux5m/nT9b52SiDz10QXYc2+CUwpx2HX6F7xODFdv5jnr+T5Vmm18JJoDwN1BO/
         MYBMjyEpkiZwQD9cSgI72TAzyu34E37ogOKn6x1X3KSzyRcy5n1C0VaX9m4QghQFv7sA
         pxzHQS2dQ101/EmmaUq/MDNCjMfgxqCIqovzegHRnIEk3JFKUJR255CQdg+mpm4w9EJI
         1E8R6HUC7onDBVDJ+q7FAykF1d3wcyCICd4p3tLIvRerjYCf8G3fBXaKCGvi8SKIQBlO
         rEtsdeouP6r6K6q0GtoommL84H82qaIb+hWzsKZVQP8NkBzCrtQr49ztdWeEVeORIw1O
         GEMw==
X-Gm-Message-State: AODbwcAFC6Yj1zTq1JCQdsJy054a/AANJ0rKrYCi+SvzXZP5yxvRLfFt
	ruYfMFBBjTqykqRM
X-Received: by 10.28.88.198 with SMTP id m189mr917509wmb.34.1493831454953;
        Wed, 03 May 2017 10:10:54 -0700 (PDT)
From: Pali =?utf-8?q?Roh=C3=A1r?= <pali.rohar@gmail.com>
To: oss-security@lists.openwall.com
Date: Wed, 3 May 2017 19:10:52 +0200
User-Agent: KMail/1.13.7 (Linux/3.13.0-117-generic; KDE/4.14.2; x86_64; ; )
References: <201705031823.09198@pali>
In-Reply-To: <201705031823.09198@pali>
MIME-Version: 1.0
Content-Type: multipart/signed;
  boundary="nextPart5231916.FGycJqKXsm";
  protocol="application/pgp-signature";
  micalg=pgp-sha1
Content-Transfer-Encoding: 7bit
Message-Id: <201705031910.52415@pali>
Subject: [oss-security] Re: MySQL - Again Riddle vulnerability (public disclosure)

--nextPart5231916.FGycJqKXsm
Content-Type: Text/Plain;
  charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Wednesday 03 May 2017 18:23:09 Pali Roh=C3=A1r wrote:
> Hi!
>=20
> The Riddle vulnerability (CVE-2017-3305) we have it there again.
>=20
> So what happened?
>=20
> In 2015 was discovered BACKRONYM vulnerability (CVE-2015-3152) which
> allowed an attacker to downgrade and snoop on the SSL encrypted
> connection between MySQL client and server. Oracle claimed it was
> fixed in MySQL 5.5.49. Later in February 2017 I discovered The
> Riddle vulnerability (CVE-2017-3305) which allowed an attacker to do
> man in the middle attack. Oracle claimed it was fixed in MySQL
> 5.5.55.
>=20
> And now in April 2017 I found out that it is still not fixed in MySQL
> 5.5.55 properly and I named this defect Again Riddle. Basically fix
> for The Riddle in 5.5.55 introduced Again Riddle.
>=20
> And what is the problem?
>=20
> If MySQL client library libmysqlclient.so is compiled from source
> code without SSL support via cmake switch -DWITH_SSL=3DOFF, then all
> SSL related functions from libmysqlclient.so return success
> (non-error) value. And function mysql_real_connect() from
> libmysqlclient.so connects to MySQL server via plain text protocol,
> even if client enforced SSL mode with certificate verification.
> Which means that function for enforcing SSL mode does nothing if
> libmysqlclient.so is compiled without SSL support. So attacker can
> do exactly same what for The Riddle vulnerability.
>=20
> So every application which links to libmysqlclient.so and require SSL
> encryption of MySQL protocol is affected.
>=20
> I contacted Oracle, MariaDB and Percona security teams about this
> problem and after discussion we scheduled public disclosure to May 3.
>=20
> Oracle decided that this Again Riddle vulnerability would not have
> CVE identifier and would be part of original The Riddle
> vulnerability CVE-2017-3305.
>=20
> I'm not sure if this is correct decision, as MariaDB 5.5 was not
> affected by The Riddle vulnerability, but is affected by Again
> Riddle.
>=20
> I was told that prebuild binaries are not affected as they are
> compiled with SSL support, but lot of distributions compile
> libraries from source code by their own which means they could be
> affected.
>=20
> I prepared POC program written in C to verify if system installed
> libmysqlclient.so library is vulnerable or not. You can find it on
> the new Again Riddle website together with some Q&A:
>=20
> http://again.riddle.link/

Yesterday Oracle released new MySQL 5.5.56 which disable compilation=20
without SSL support, just to address this issue.

So it is not possible to compile MySQL without SSL support anymore.

--=20
Pali Roh=C3=A1r
pali.rohar@gmail.com

--nextPart5231916.FGycJqKXsm
Content-Type: application/pgp-signature; name=signature.asc 
Content-Description: This is a digitally signed message part.

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAlkKDxwACgkQi/DJPQPkQ1I4tQCgwU9dwIeUM8wPmn/gMlRZzN6x
N2wAniarmK6EVFpq9tH3JniUu/FdCOVh
=jIXJ
-----END PGP SIGNATURE-----

--nextPart5231916.FGycJqKXsm--
