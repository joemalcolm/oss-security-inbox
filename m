X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3418" "Saturday" "28" "September" "2019" "02:34:28" "+0200" "Heiko Schlittermann" "hs@nodmarc.schlittermann.de" nil "104" nil "^Cc:" nil nil "9" nil nil (number mark "        hs@nodmarc.s Sep 28  104/3418  " thread-indent "\"[oss-security] Exim CVE-2019-16928 RCE using a heap-based buffer overflow\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Exim CVE-2019-16928 RCE using a heap-based buffer overflow" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26027 invoked by uid 550); 28 Sep 2019 00:34:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26006 invoked from network); 28 Sep 2019 00:34:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=schlittermann.de; s=dd201504; h=Content-Type:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Content-Description:Content-ID:
	Content-Transfer-Encoding:In-Reply-To:References:Resent-Cc:Resent-To;
	bh=N1SI9f0OHTUvOH9n8hPrPKZcjbGGsRA2TUoG+oDHD48=; b=O6htMnbSIbS6QeCYDGmeHgzYct
	qy9hkStGEXPsOZcy1NpIR4m/g+JWmP02+G/pWsVLtW+7prr++GWLEXgQIP0ToE9u1EjpuOtcoQrCb
	lOZy1nhyZS95g2sIAN22xUJJnnP04+1GYpdmfuY3Vih32lkwfwGi2Tv5e/7Ov6US/uyc=;
Message-ID: <20190928003428.GI16334@jumper.schlittermann.de>
Mail-Followup-To: oss-security <oss-security@lists.openwall.com>,
	exim-users@exim.org, exim-maintainers@exim.org
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ubBGeysJ7fFOU9Y9"
Content-Disposition: inline
Organization: schlittermann -- internet & unix support
X-Face: =y#&-VlCH8uT|8#-#JE_^c<:+qPbYxFD`}8`m)xjyA$93tpwm-vKsa(V,0?906(2VIVNQbU
 QzD%zhE+~-AA?\v-v.HY6]ebO4_$vY`l|||Q!EZT5*Xx/>Fj{8E_a.;;#<4S$>&T%n5()2Yt=R5FSC
 y:Na&@T{Rf`kPq^'ffPFA%`mP~>%-LU$d*]]{-%>j={&MsMND.">]H)&#AoSI~(U8Jk;v*;,Pf+l85
 X?H&`
X-Telegram: @HeikoSchlittermann
X-Threema: T5RPWMSS
X-Phone: +49.172.7909055
X-GPG-Fingerprint: E5CA 331D 44AB 8E4C 806F  DBEE 2610 1B62 F693 76CE
X-GPG-Key-ID: F69376CE
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: exim-users@exim.org, exim-maintainers@exim.org
Date: Sat, 28 Sep 2019 02:34:28 +0200
From: Heiko Schlittermann <hs@nodmarc.schlittermann.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Exim CVE-2019-16928 RCE using a heap-based buffer overflow
To: oss-security <oss-security@lists.openwall.com>

--ubBGeysJ7fFOU9Y9
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

CVE ID:     CVE-2019-16928
Date:       2019-09-27 (CVE assigned)
Version(s): from 4.92 up to and including 4.92.2
Reporter:   areuu@outlook.com
Reference:  https://bugs.exim.org/show_bug.cgi?id=3D2449
Issue:      Heap-based buffer overflow in string_vformat,
            remote code execution seems to be possible

Conditions to be vulnerable
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D

All versions from (and including) 4.92 up to (and including) 4.92.2 are
vulnerable.

Details
=3D=3D=3D=3D=3D=3D=3D

There is a heap-based buffer overflow in string_vformat (string.c).
The currently known exploit uses a extraordinary long EHLO string to
crash the Exim process that is receiving the message. While at this
mode of operation Exim already dropped its privileges, other paths to
reach the vulnerable code may exist.

Mitigation
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

There is - beside updating the server - no known mitigation.

Fix
=3D=3D=3D

We plan to publish a new security release (*will* be 4.92.3) of Exim
during the next 48 hours, ideally before monday 8.00 UTC. (We're still
running regression tests.) We'll send another notification as soon as
the new release is available.

Distros may have already picked the patch mentioned below and may have
already released a fixed version. Please check your distribution's
changelogs.

If you can't wait, please use use our git repository http://git.exim.org/ex=
im.git,
checkout the branch exim-4.92.2+fixes and use the commit 478effbfd9c3cc5a62=
7fc671d4bf94d13670d65f

A direct link to the commit is:
https://git.exim.org/exim.git/patch/478effbfd9c3cc5a627fc671d4bf94d13670d65f

which basically does:

--- a/src/src/string.c
+++ b/src/src/string.c
@@ -1132,7 +1132,7 @@ store_reset(g->s + (g->size =3D g->ptr + 1));
 Arguments:
   g            the growable-string
   p            current end of data
-  count                amount to grow by
+  count                amount to grow by, offset from p
 */

 static void
@@ -1590,7 +1590,7 @@ while (*fp)
        }
       else if (g->ptr >=3D lim - width)
        {
-       gstring_grow(g, g->ptr, width - (lim - g->ptr));
+       gstring_grow(g, g->ptr, width);
        lim =3D g->size - 1;
        gp =3D CS g->s + g->ptr;
        }

We thank you for using Exim.

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -
 ! key id 7CBF764A and 972EAC9F are revoked since 2015-01 ------------ -

--ubBGeysJ7fFOU9Y9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEE0L/WueylaUpvFJ3Or0zGdqa2wUIFAl2OqosACgkQr0zGdqa2
wULb1wf8CAlT3aRbwxEHnAhmRTerpjQROPx2XzUi3LuKXSBHYU2ex+xTggYICQOB
5mMJOO0MYpkTwOd8Jc95OPDgUeYZwos6b1m5/34ivZ9G2p2t/ln3lH7h7IE3IMcn
1rVpyLqtlSplfdVsXV75wdB1U+R3edKKevRMbXxQ0qeKoHmaOIVfs84CZwJujE/6
/ecSMXdgP7CFxklaPbLmVV8Q3kHfNziLglEO9UGEcsbTSKaIgO8FoYKB/e9nT475
dmq+aUPiEEaZvnwOpCg9ihORRcrrC1aXq4ddl072C0PZsZh+dJPWgoLNOEm8iP82
NRV2IcEsaGZTSwzLV2XkqsMP8BfBVw==
=HRIQ
-----END PGP SIGNATURE-----

--ubBGeysJ7fFOU9Y9--
