X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1696" "Thursday" "19" "January" "2017" "20:16:01" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<4b31462747644c479fb2e956ccbc3a73@imshyb01.MITRE.ORG>" "40" "[oss-security] Re: CVE request Weblate: information disclosure in password reset form" nil nil nil "1" "2017012001:16:01" "[oss-security] Re: CVE request Weblate: information disclosure in password reset form" (number mark "U       cve-assign@m Jan 19   40/1696  " thread-indent "\"[oss-security] Re: CVE request Weblate: information disclosure in password reset form\"\n") "<20170118220535.GA21362@gmail.com>" ("<20170118220535.GA21362@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9578 invoked by uid 550); 20 Jan 2017 01:16:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9557 invoked from network); 20 Jan 2017 01:16:14 -0000
From: <cve-assign@mitre.org>
To: <jelle@vdwaa.nl>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <20170118220535.GA21362@gmail.com>
Message-ID: <4b31462747644c479fb2e956ccbc3a73@imshyb01.MITRE.ORG>
Date: Thu, 19 Jan 2017 20:16:01 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request Weblate: information disclosure in password reset form

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Weblate contains an information disclosure issue in its password reset
> form. When entering an arbitrary email address in the password reset
> form Weblate will report back "User with this email address was not
> found." this makes it possible to figure out which user accounts exist
> on the weblate instance.
> 
> https://github.com/WeblateOrg/weblate/commit/abe0d2a29a1d8e896bfe829c8461bf8b391f1079
> https://github.com/WeblateOrg/weblate/issues/1317

Use CVE-2017-5537.

The scope of this CVE does not include the issues/1317 comment of "The
login form also does not seem to implement any rate-limiting which
makes it easy to bruteforce."

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYgWSEAAoJEHb/MwWLVhi2ST0P+wQSbBTkZPtExrWkqyGADC+F
H0yp97rEg4imgEbLmHbzIpVG5xEd2htr6k1iaeE1WP8zUHNYmb6+mFM/wfDFl/nQ
lwMCYcMTN+fhSpoX88NBsiO1T4o6wZSZAPqxIYTS/R6QqI6jPnpaeJDH67ch7wyG
+jYFDDV2x44VcckepPoKiPBUiNGaVtdoXx4b68h1+1QK2sGMM1wERsDp4TyplTmT
UYwuQb4ZSDUhFokkzzuaKgvqijbe7TuMKMAKDtYdzeVXvmovkUXYK24ajObCyrmd
R1VC49uCsnXjgD8DqQSV3J4RlAv4JOKRBRQloZieU7BzL2pA5uGyWVJ4v4X60RN6
0Rl9P61hySg/BALNU8DgEPtesa0wlTOob/6h11rfelL6Ay14Vo4AyHcN1cKQgYft
Xwu65ycWMNY5qzX51UaGMXobUJEZ3RmzKe/jhbKy79+p5QSGNycEABBts29c9M9a
DJncB5xzagzAUdYSJWYnAL/iXdV8IbAbdlpFO0MiMcmHQINPGryqED78jWA0ldBp
PxGuKVuCIATsAI4/CYmGzCoNwgKH5+6cAy78cjHrv1UlSBIdkyts4X7aYbg0o49F
r6QiKeI780UTn8pATRGbFri5O0jd1fWLAYZ4XYFg4evJ4XGMbgN2lJpFUnJX0Fm2
IM1vExStvObk1QdRbg8R
=fAJo
-----END PGP SIGNATURE-----
