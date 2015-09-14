X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3691" "Monday" "14" "September" "2015" "10:49:47" "+0300" "=?UTF-8?B?QW50aSBSw6Rpcw==?=" "antirais@gmail.com" "<55F67C1B.2020503@gmail.com>" "105" "[oss-security] CVE-Request for stored WCI (a.k.a XSS) in Visual Form Builder 2.7.5 - 2.8.4" nil nil nil "9" "2015091407:49:47" "[oss-security] CVE-Request for stored WCI (a.k.a XSS) in Visual Form Builder 2.7.5 - 2.8.4" (number mark "        antirais@gma Sep 14  105/3691  " thread-indent "\"[oss-security] CVE-Request for stored WCI (a.k.a XSS) in Visual Form Builder 2.7.5 - 2.8.4\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3533 invoked by uid 550); 14 Sep 2015 11:39:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27740 invoked from network); 14 Sep 2015 07:50:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:subject:to:openpgp:message-id:date:user-agent:mime-version
         :content-type;
        bh=5v3XV+Klf0XjG3aRXMUlURTKzqh2xk56WynYQTYK1r0=;
        b=R5g0B/uKjomJtZVo9zTDfG4sW2BX19YM4U1WNzhZLWdPVQEPv8W66ocTN/KylenRMw
         PlygS5MTaF+lSqo+QyRlhU6pX0U3z+jYY1+W0kWsHh03PidO6dUzDck9FhCmAL+EFnGE
         z3Dak9vq5N0RuzJL7j4KEfB+EgmlkJ5mBe3RyDhl3k0zT/lUUkr9qJQRHWZzefwwVGM4
         zaapoPqU4SH85vsReyOJvYIMiBHZnrJOcq0pUvOsmZj8FEf8FdRYfByOkJzrBBidS9cY
         r4CGeHLzWV1MtmRfqwlnOY6N235LVghBIiV5xvrEYGTYzkB7Rly8gjllmvSmmgPEHgTv
         pg+Q==
X-Received: by 10.112.162.70 with SMTP id xy6mr12412849lbb.122.1442216988952;
        Mon, 14 Sep 2015 00:49:48 -0700 (PDT)
Openpgp: id=E8D3A8C7ED2559150861B5ECA260F49A8F6A0C73
Message-ID: <55F67C1B.2020503@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="E0DTKF2ErcOa8dP9fGS7NFa8l53xDm7QT"
Date: Mon, 14 Sep 2015 10:49:47 +0300
From: =?UTF-8?Q?Anti_R=c3=a4is?= <antirais@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-Request for stored WCI (a.k.a XSS) in Visual Form Builder 2.7.5 -
 2.8.4
To: oss-security@lists.openwall.com

--E0DTKF2ErcOa8dP9fGS7NFa8l53xDm7QT
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Greetings,

I've discovered a vulnerability in the following component and would
like to request CVE-ID for it:

Product:       Visual Form Builder
(https://wordpress.org/plugins/visual-form-builder/)
Version:       2.7.5 - 2.8.4 (according to the source code), fixed in 2.8.5
Product-type:  Wordpress plugin
Vendor:        http://vfbpro.com/
Fixed:         2015-09-09, reported 2015-09-06
Changelog:=20=20=20=20
https://plugins.trac.wordpress.org/changeset?old_path=3D%2Fvisual-form-buil=
der%2Ftags%2F2.8.4&old=3D1244830&new_path=3D%2Fvisual-form-builder%2Ftags%2=
F2.8.5&new=3D1244830&sfp_email=3D&sfph_mail=3D

Description:
This plugin is used to create feedback forms. Unauthenticated user can subm=
it=20
malicious code and it is shown to the authenticated administrator in the en=
tries=20
page. Upon viewing the submitted entry, the attackers code executes resulti=
ng in=20
web content injection attack (WCI, a.k.a XSS).


Vulnerability:

--- start visual-form-builder/includes/class-entries-detail.php ---
160 case 'textarea' :
161 case 'html' :
162         ?>
163         <tr valign=3D"top">
164                 <th scope=3D"row"><label for=3D"field[<?php echo $obj->=
id; ?>]"><?php echo stripslashes( $obj->name ); ?></label></th>
165                 <td style=3D"background:#eee;border:1px solid #ddd"><?p=
hp echo wpautop( stripslashes( wp_specialchars_decode( esc_html( $obj->valu=
e ) ) ) ); ?></td>
166         </tr>
167 <?php
168         break;
169 default :
171         ?>
172         <tr valign=3D"top">
173                 <th scope=3D"row"><label for=3D"field[<?php echo $obj->=
id; ?>]"><?php echo stripslashes( $obj->name ); ?></label></th>
174                 <td style=3D"background:#eee;border:1px solid #ddd"><?p=
hp echo stripslashes( wp_specialchars_decode( esc_html( $obj->value ) ) ); =
?></td>
175         </tr>
176 <?php
177         break;
--- end visual-form-builder/includes/class-entries-detail.php ---

The vulnerability lies in the following PHP code:
<?php echo stripslashes( wp_specialchars_decode( esc_html( $obj->value ) ) =
); ?>

The $obj->value contains user supplied data and is escaped using the esc_ht=
ml()=20
and then HTML special characters are decoded using wp_specialchars_decode()=
=20
which essentially neuters the esc_html(). Finally, the stripslashes() is=20
applied, which removes '\' from the given argument.

Poc:
    * Submit the following value in the form's text field:
        \<svg/onload=3Dalert(1)  ;

    * authenticated administrator views the entry and executes the code
        Visual Form Builder -> Entries -> (attacker's entry) -> View

Disclosure timeline:
    2015-09-06 - discovery, contacted the developers
    2015-09-08 - sent further details and requested feedback
    2015-09-09 - new release with the fix was released

All the best,

Anti R=C3=A4is



--E0DTKF2ErcOa8dP9fGS7NFa8l53xDm7QT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQEcBAEBAgAGBQJV9nwbAAoJEKJg9JqPagxzTfUIAIeksb83Fj8nj8QE5p3M5OSr
NwW4Y5Va2g+O5993l1ONmzxoSPRXUsHxnvH0y/sY/BFtpyEJzYiqoJ8lBOpPh7U+
hZP61VcWW3wEZTYrOuQjziqmmlxaHjv/ShMX9kNZDUHFayq0Aa3J/Sjw0Tc4mH2j
L638rfkjqt05d8GfN4FN9KQTeHJ7ThoeoRlRGgTswQA+NP18obe9xzreiZfSbRo5
YW3rrkMgF/39AmDwemwbL1ww7NxftfoOtioLJAcJnM3zYjngQ9yC6s+pnFDKc6bl
6t7XRw5FwqDIWNnbaZhveHxXTuAR7zt4tsWSGocPR+UsYCyExp4qhFwggtOIAC8=
=w9F0
-----END PGP SIGNATURE-----

--E0DTKF2ErcOa8dP9fGS7NFa8l53xDm7QT--
