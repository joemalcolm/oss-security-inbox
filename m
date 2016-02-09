X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2161" "Tuesday" "9" "February" "2016" "19:51:14" "+0100" "Andreas Stieger" "astieger@suse.com" "<56BA3522.6020601@suse.com>" "57" "[oss-security] CVE Request: cacti: Authentication using web authentication as a user not in the,cacti database allows complete access" nil nil nil "2" "2016020918:51:14" "[oss-security] CVE Request: cacti: Authentication using web authentication as a user not in the,cacti database allows complete access" (number mark "U       astieger@sus Feb  9   57/2161  " thread-indent "\"[oss-security] CVE Request: cacti: Authentication using web authentication as a user not in the,cacti database allows complete access\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30678 invoked by uid 550); 9 Feb 2016 18:51:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30660 invoked from network); 9 Feb 2016 18:51:55 -0000
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
From: Andreas Stieger <astieger@suse.com>
Organization: SUSE Linux GmbH
Message-ID: <56BA3522.6020601@suse.com>
Date: Tue, 9 Feb 2016 19:51:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="umpCO1IKDj3qje2w9SLO4h9jSAmb6qhHE"
Subject: [oss-security] CVE Request: cacti: Authentication using web authentication as a user
 not in the,cacti database allows complete access

--umpCO1IKDj3qje2w9SLO4h9jSAmb6qhHE
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Could a CVE ID please assigned for the following issue:

http://svn.cacti.net/viewvc/cacti/tags/0.8.8g/docs/CHANGELOG?revision=3D778=
8&view=3Dmarkup
-bug:0002656: Authentication using web authentication as a user not in the
cacti database allows complete access
http://bugs.cacti.net/view.php?id=3D2656 Classified by upstream as a securi=
ty fix.
Upstream fix is http://svn.cacti.net/viewvc?view=3Drev&revision=3D7770
https://bugzilla.suse.com/show_bug.cgi?id=3D965930

Accessing cacti using a user name not the cacti database fills the log with
database error messages and allows complete access to everything, including=
 the
user administration pages. The bug is in auth_login.php which fails to check
the query actually found any data or not.

Fixed in tagged but (as of writing) unreleased 0.8.8g.

Thanks,
Andreas

--=20
Andreas Stieger <astieger@suse.com>
Project Manager Security
SUSE Linux GmbH, GF: Felix Imend=C3=B6rffer, Jane Smithard, Graham Norton,
HRB 21284 (AG N=C3=BCrnberg)



--umpCO1IKDj3qje2w9SLO4h9jSAmb6qhHE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJWujUqAAoJECzWqVXhWUVGym8P/isCFn+tf6bJzv/3f7dmYKNh
bm6St6P7Z1F+gnPPwKQ6VL2RwiZjFHZI+3l98g9kJkeeHynwBHE2kW5tByqycYcS
38mpz78dof0EfLRypSR0m2hpeFEM7cgKaoyJFwj4sgw3FuROGCUYJNdip+jUil1l
EDmbIUaYc6C8AP1WeWtE+mJkVLfF09z1IworUmafu7SCz75IMWL9hmrgfQtcaKkI
nGVXJs/WAu4jCv5pT+cp9gYStlqlc0MJndKHQdpQLkRyd/2xsg35bfwNwxhdY71X
UqI9iMuEAZr2afw7Zmc96k7I+AKVRA0dF1bS+UUSck4v+jA9UvF6/Zur8y23Lmla
QhsEM8HkTxsqaKlzFwj7CzdigJYB8EZUZ8OkOesFbEBGGZce3FLDEWb9sGy7N95i
HDGYeS66HHx7GZxoA+ZEpCEHTbcXNiMNsqEMBQvBuVm88Ye7hq6ZWPDRqFVe6ukM
8Xt2CRBd+0gNgS+UcD8fQ6AdPPmi4REEkpXVhSwqPGFIR0wBJxkn+SSQ5OZD/vBI
qt4FPAEEisQcRtz3d2EXIBnXTd819VdAxmprzpzSohxJzVw9sHRH49H9mU3b0R/B
EQfdPYMsOqe2CMvNgkNEKr7foieqKXai7s84GGisYVw7eeG1/IsKUDzcSGLFCTST
Y6jTBluiAmADE09tzDU2
=DvH4
-----END PGP SIGNATURE-----

--umpCO1IKDj3qje2w9SLO4h9jSAmb6qhHE--
