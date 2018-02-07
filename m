X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2258" "Wednesday" "7" "February" "2018" "11:39:43" "+0100" "Heiko Schlittermann" "hs@schlittermann.de" "<20180207103943.wwijjdmnlzpp46lm@jumper.schlittermann.de>" "64" "[oss-security] CVE-2018-6789 Exim 4.90 and earlier: buffer overflow" nil nil nil "2" "2018020710:39:43" "[oss-security] CVE-2018-6789 Exim 4.90 and earlier: buffer overflow" (number mark "U       hs@schlitter Feb  7   64/2258  " thread-indent "\"[oss-security] CVE-2018-6789 Exim 4.90 and earlier: buffer overflow\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21776 invoked by uid 550); 7 Feb 2018 12:09:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26296 invoked from network); 7 Feb 2018 10:39:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=schlittermann.de; s=dd201504; h=Content-Type:MIME-Version:Message-ID:
	Subject:To:From:Date:Cc:Content-Description:Content-ID:
	Content-Transfer-Encoding:In-Reply-To:References:Resent-Cc:Resent-To;
	bh=QQFHXoeiWbHJVY33zGfjcxBybdKa9tuEt5qlDUfWqOU=; b=F49rFpFuLg83caQZz9++kY2P2x
	FbxCVCXgeDnKCkcesPqx2B7KlYYeI//yAHxpUkF+yagEU9uHwS3jk52mg/5tixuWzC2plOgWlgVcv
	YOPuCQUDTD0yq4sawL2IEYNsz1pKAmnx9wNa7oeUA1DCiOEqv0ZAEJBXoivCWSsw/cEs=;
Date: Wed, 7 Feb 2018 11:39:43 +0100
From: Heiko Schlittermann <hs@schlittermann.de>
To: oss-security@lists.openwall.com
Message-ID: <20180207103943.wwijjdmnlzpp46lm@jumper.schlittermann.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3xk23uo3r7moxclp"
Content-Disposition: inline
Organization: schlittermann -- internet & unix support
X-Face: =y#&-VlCH8uT|8#-#JE_^c<:+qPbYxFD`}8`m)xjyA$93tpwm-vKsa(V,0?906(2VIVNQbU
 QzD%zhE+~-AA?\v-v.HY6]ebO4_$vY`l|||Q!EZT5*Xx/>Fj{8E_a.;;#<4S$>&T%n5()2Yt=R5FSC
 y:Na&@T{Rf`kPq^'ffPFA%`mP~>%-LU$d*]]{-%>j={&MsMND.">]H)&#AoSI~(U8Jk;v*;,Pf+l85
 X?H&`
X-Telegram: @HeikoSchlittermann
X-Phone: +49.172.7909055
X-GPG-Fingerprint: E5CA 331D 44AB 8E4C 806F  DBEE 2610 1B62 F693 76CE
X-GPG-Key-ID: F69376CE
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: [oss-security] CVE-2018-6789 Exim 4.90 and earlier: buffer overflow

--3xk23uo3r7moxclp
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

CVE-2018-6789 Exim 4.90 and earlier
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

There is a buffer overflow in an utility function, if some pre-conditions
are met.  Using a handcrafted message, remote code execution seems to be
possible.

A patch exists already and is being tested.

Currently we're unsure about the severity, we *believe*, an exploit
is difficult. A mitigation isn't known.

Next steps:

* t0:     Distros will get access to our "security" non-public git repo
          (based on the SSH keys known to us)
* t0 +7d: Patch will be published on the official public git repo

t0 will be around 2018-02-08.

Timeline
--------

* 2018-02-05 Report from Meh Chang <meh@devco.re> via exim-security mailing=
 list
* 2018-02-06 Request CVE on https://cveform.mitre.org/ (heiko)
             CVE-2018-6789
* 2018-02-07 Announcement to the public via exim-users, exim-maintainers
             mailing lists and on oss-security mailing list

Updates will follow. Here and on https://exim.org/security/CVE-2018-6789.txt
(Link will start to exist around 11.00 UTC).

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--=20
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -
 ! key id 7CBF764A and 972EAC9F are revoked since 2015-01 ------------ -

--3xk23uo3r7moxclp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEE0L/WueylaUpvFJ3Or0zGdqa2wUIFAlp6124ACgkQr0zGdqa2
wULZWAf9EZCMaxlXZGWBjVSqgnNrSvOulFShQcj+DD9IXw2ybxKNjd4wgyh84cLk
FmqeL64wBTVGMuuCoLTQEfSm5EkLW+QeX2lUOY0lhnSdXQK1hvSRPxdNv8WxNxKq
kdWn6X0RxWlClgMPfeWhZnxKe6WpmW9TRrdqOxxGWqQwiIA8FDZmL/C6nESjnW1Q
KtuHnrnt1XwhPCfmLm0iytFEw5DLnpI2wc0WOqTMmTzJYldQ3MmbI0jbOSiWk2M6
SdetYwLJ/858yAlhgM1+IV4JxI745+6hgevChmYiNjqCFEUvoJT1uSOxrWqaoZRW
LwtOzXLlYCfUxGps47g0Re7RcDM2kQ==
=Pjrp
-----END PGP SIGNATURE-----

--3xk23uo3r7moxclp--
