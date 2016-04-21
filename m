X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4218" "Thursday" "21" "April" "2016" "09:12:29" "+0100" "Sysdream Labs" "labs@sysdream.com" "<57188B6D.7050401@sysdream.com>" "141" "[oss-security] Wordpress iThemes Security (Better WP Security) Insecure Backup/Logfile Generation (predicatable filename)" nil nil nil "4" "2016042108:12:29" "[oss-security] Wordpress iThemes Security (Better WP Security) Insecure Backup/Logfile Generation (predicatable filename)" (number mark "U       labs@sysdrea Apr 21  141/4218  " thread-indent "\"[oss-security] Wordpress iThemes Security (Better WP Security) Insecure Backup/Logfile Generation (predicatable filename)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19719 invoked by uid 550); 21 Apr 2016 16:18:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3084 invoked from network); 21 Apr 2016 08:12:42 -0000
X-Virus-Scanned: amavisd-new at sysdream.com
To: oss-security@lists.openwall.com, fulldisclosure@seclists.org
From: Sysdream Labs <labs@sysdream.com>
Message-ID: <57188B6D.7050401@sysdream.com>
Date: Thu, 21 Apr 2016 09:12:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.7.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="lwU5gESX7lvRm8NeG95lmcrp478XP8HbR"
Subject: [oss-security] Wordpress iThemes Security (Better WP Security) Insecure
 Backup/Logfile Generation (predicatable filename)

--lwU5gESX7lvRm8NeG95lmcrp478XP8HbR
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Wordpress iThemes Security (Better WP Security) Insecure Backup/Logfile Gen=
eration (predicatable filename)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D


Description
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

When using the "database backup/logging on filesystem" feature, iThemes sec=
urity generates a weak filename allowing attackers to obtain the backup/log=
 file if they know when the backup/log file was generated (timestamp).

**Access Vector**: remote

**Security Risk**: medium

**Vulnerability**: CWE-330

**CVSS Base Score**: 7.5


---------------
Vulnerable code
---------------

The vulnerable code is located at core/modules/backup/class-itsec-backup.ph=
p, line 244 :

        $file =3D 'backup-' . substr( sanitize_title( get_bloginfo( 'name' =
) ), 0, 20 ) . '-' . $current_time . '-' . ITSEC_Lib::get_random( mt_rand( =
5, 10 ) );

In core/class-itsec-logger.php, line  :

        $itsec_globals['settings']['log_info'] =3D substr( sanitize_title( =
get_bloginfo( 'name' ) ), 0, 20 ) . '-' . ITSEC_Lib::get_random( mt_rand( 0=
, 10 ) );


In core/class-itsec-lib.php, function get_random, line 415:

        public static function get_random( $length, $base32 =3D false, $spe=
cial_chars =3D false ) {

                if ( true =3D=3D=3D $base32 ) {

                        $string =3D 'ABCDEFGHIJKLMNOPQRSTUVWXYZ234567';

                } else {

                        $string =3D 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKL=
MNOPQRSTUVWXYZ0123456789';

                        if ( true =3D=3D=3D $special_chars ) {

                                $string .=3D '_)(*&^%$#@!~`:;<>,.?/{}[]|';

                        }

                }

                return substr( str_shuffle( $string ), mt_rand( 0, strlen( =
$string ) - $length ), $length );

        }


The str_shuffle should *never* be used for generating secure strings as it =
uses the PHP rand() function and just shuffles the characters' position.

--------
Solution
--------

Make sure to generate non-predictable strings, using cryptographically secu=
re generators.=20
Update iThemes Security to version >=3D 5.3.1

Affected versions
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

* iThemes Security <=3D 5.3.0

Timeline (dd/mm/yyyy)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

* 26/02/2016 : Initial contact with iThemes.
* 26/02/2016 : iThemes confirms the vulnerabilities.
* 29/02/2016 : iThemes publishes a new version (5.3.1) of iThemes Security =
that fixes the vulnerabilities.

Credits
=3D=3D=3D=3D=3D=3D=3D

* Nicolas CHATELAIN, Sysdream (n.chatelain -at- sysdream -dot- com)



--=20
SYSDREAM Labs <labs@sysdream.com>

GPG :
47D1 E124 C43E F992 2A2E
1551 8EB4 8CD9 D5B2 59A1

* Website: https://sysdream.com/
* Twitter: @sysdream


--lwU5gESX7lvRm8NeG95lmcrp478XP8HbR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXGIttAAoJEI60jNnVslmhrtkQAIWC6Rlbog7ag/pVuLJdvvJ2
zAc6C5LHfOkbNS+QOUAtpcWmgWDpUMSSYp8K3eD8Ld3n9IlLO0TWXIdShQeWV4D0
3ZJSUgmBppZ5ci5Sz5A3TLjTmUt7vVX/LGjCp9TN3FC2jgK4TruDo4xnkwdQiFbG
o7ctRYC9Crr5E6R66aCgfUbg0Pvq9pVH8JOg7g6P6X3NkEHsAk+a6gHD8JiFOTGL
t6FCCAk0jjKgpgDQ+a/wzg/UQ9a9/q8mPY17Ny54x8WnPpu3zrBNZ0a1LH1O3jTA
0Eq7NChXBCi25dFMgdig5/1HVrky53z3iGM/H/YOI/f5anQpUxPb8SwMxXqIa8jM
NPtV7E1kbSmR+EFME1xkMO1bOWELQc4DHEkpgALkfYDvKm+kztbHaLB2GGrP6UL2
GtT1dD0gnewA+2rKDGiKQch6e4PRWa1VwO0AUOpuv1a/oydMpR/X0FtQKil76zha
EnlsBsFK+OVUCsCkztexW0gkjnFE5jiaMIi92l5xgXlEZG/amVqO8WtokU+crQF2
0GWhMNjTRrodzaSOocNphXANOnSKPVlZZ4vWOWeOODTxMelhmZye0Hw4X6NEaUn0
jY7wLb3eSoxb9jRu6aRuGXaKp8v90gBT/mrMZP4nxGRCW17NI/tJh0ZmipMDAZ25
8XViJJTUptiSOFZgcIpQ
=iFat
-----END PGP SIGNATURE-----

--lwU5gESX7lvRm8NeG95lmcrp478XP8HbR--
