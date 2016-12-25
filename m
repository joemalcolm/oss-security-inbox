X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2221" "Sunday" "25" "December" "2016" "11:44:10" "+0100" "Heiko Schlittermann" "hs@schlittermann.de" "<20161225104410.GU5082@jumper.schlittermann.de>" "61" "[oss-security] CVE-2016-9963 | Exim 4.87.1 released (Was: CVE Request - Exim 4.69-4.87) - disclosure of private information)" nil nil nil "12" "2016122510:44:10" "[oss-security] CVE-2016-9963 | Exim 4.87.1 released (Was: CVE Request - Exim 4.69-4.87) - disclosure of private information)" (number mark "U       hs@schlitter Dec 25   61/2221  " thread-indent "\"[oss-security] CVE-2016-9963 | Exim 4.87.1 released (Was: CVE Request - Exim 4.69-4.87) - disclosure of private information)\"\n") "<20161223105906.GO5082@jumper.schlittermann.de>" ("<20161215233645.GJ29010@jumper.schlittermann.de>" "<20161223105906.GO5082@jumper.schlittermann.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22433 invoked by uid 550); 25 Dec 2016 10:48:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16273 invoked from network); 25 Dec 2016 10:44:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=schlittermann.de; s=dd201504; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Cc:Content-Description:Content-ID:
	Content-Transfer-Encoding:Resent-To;
	bh=ZFdeHquwcYeWGeyq+eUXDWFIwWDrZZyhggY/+vL9rmA=; b=q9FgEg/1zRJ4k6J4OrqLUeSKhd
	Je4mgvEzdTWM2OS9KCEy7LaJNI/emAdhyfQ942uXgDiPLNp5oh1e1ppfNoe4eneWmb2CyG5696Kem
	GQg/n7CS49bOqIjHs5MbR7g/NElgiSlqHAKKIgtB0lMJUcPzyEaF3doJ4N8phRQhBRY8=;
Date: Sun, 25 Dec 2016 11:44:10 +0100
From: Heiko Schlittermann <hs@schlittermann.de>
To: oss-security@lists.openwall.com
Message-ID: <20161225104410.GU5082@jumper.schlittermann.de>
References: <20161215233645.GJ29010@jumper.schlittermann.de>
 <20161223105906.GO5082@jumper.schlittermann.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="twKjCw1/F6C/WBH6"
Content-Disposition: inline
In-Reply-To: <20161223105906.GO5082@jumper.schlittermann.de>
Organization: schlittermann -- internet & unix support
X-Phone: +49.172.7909055
X-GPG-Fingerprint: E5CA 331D 44AB 8E4C 806F  DBEE 2610 1B62 F693 76CE
X-GPG-Key-ID: F69376CE
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] CVE-2016-9963 | Exim 4.87.1 released (Was: CVE
 Request - Exim 4.69-4.87) - disclosure of private information)

--twKjCw1/F6C/WBH6
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

I've uploaded Exim 4.87.1 to:

    ftp://ftp.exim.org/pub/exim/exim4/old/
    git://git.exim.org/exim.git (tag exim-4_87_1)

Whilst this release is superseeded by 4.88 already, you're urged
to upgrade to 4.87.1, if 4.88 isn't an option for you yet.

No features are added or removed. This release contains
just a fix for CVE-2016-9963

    - Fix CVE-2016-9963 - Info leak from DKIM.  When signing DKIM, if
      either LMTP or PRDR was used for delivery, the key could appear in
      logs.  Additionally, if the experimental feature "DSN_INFO" was used,
      it could appear in DSN messages (and be sent offsite).

For details about the CVE please see

    https://exim.org/static/doc/CVE-2016-9963.txt

The release files for 4.87.1 are signed with the PGP key 0xF69376CE,
which has a uid "Heiko Schlittermann (HS12-RIPE) <hs@schlittermann.de>".
Please use your own discretion in assessing what trust paths you might
have to this uid.

In case on any problems please contact us on exim-users@exim.org
or on the IRC channel #exim at freenode.

Sorry for the release date.

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--=20
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -
 ! key id 7CBF764A and 972EAC9F are revoked since 2015-01 ------------ -

--twKjCw1/F6C/WBH6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBCgAGBQJYX6L5AAoJEGoXY4qgRQz1l24IAIVvLJeu5zjvdlMsRMev/FCt
5/C0W5guxfGgGdZjeme2oeQKmwTiX6cxBKvosck5G6AAltmkod/9Ih8MmT9t2MZl
moOsJ3lih6RzvZH4L/TSojj6tIx250yDeK6y9lP7PwlKvA6oTQsLP0I3spR2EBYP
qV4TYKxSW8BW6o3ZEkZ1fLCUlW3G1EgBsX9BIE3ubTox4WK5DVR638oG2RSFr7N3
2hBsTQQB3B7H9a6k1jb5R5Hj3X3wOQMh1xbYkfhtw8YBCzhJ102kzde/Ey0hDSO5
82MsphIOp22WUWrmSZgjLJlXPss9/jea7HaSpB94vFZrO2+4zIsK86MYkT+r8Y0=
=mcg4
-----END PGP SIGNATURE-----

--twKjCw1/F6C/WBH6--
