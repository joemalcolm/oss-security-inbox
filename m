X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1712" "Saturday" "4" "July" "2015" "09:42:00" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<5597FEC8.5060400@redhat.com>" "44" "[oss-security] please REJECT CVE-2015-3199" nil nil nil "7" "2015070415:42:00" "[oss-security] please REJECT CVE-2015-3199" (number mark "        kseifried@re Jul  4   44/1712  " thread-indent "\"[oss-security] please REJECT CVE-2015-3199\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25811 invoked by uid 550); 4 Jul 2015 15:42:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25774 invoked from network); 4 Jul 2015 15:42:15 -0000
Message-ID: <5597FEC8.5060400@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="d2pE7fB1MK6LWPCdKIa74rs2cnt1oNXtg"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
Date: Sat, 04 Jul 2015 09:42:00 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] please REJECT CVE-2015-3199
To: oss-security@lists.openwall.com,
        Assign a CVE Identifier <cve-assign@mitre.org>

--d2pE7fB1MK6LWPCdKIa74rs2cnt1oNXtg
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

This was assigned internally but then:

http://projects.theforeman.org/issues/10469

"This was reported by Ori Rabin to foreman-security (thanks!) and a CVE
identifier was filed under CVE-2015-3199, but it turned out this does
not affect any released upstream version."

so it was effectively in an unreleased version, thus no need for CVE.

--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com


--d2pE7fB1MK6LWPCdKIa74rs2cnt1oNXtg
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJVl/7JAAoJEBYNRVNeJnmTMCQP/2I872dMkigAFFdeSexLyL5/
46KZGsdv35PgijlA9HKk7/PUyLF7gQp6HpCmO+LMDqabv6SSBQvJYqXBmCCKsNEd
jcLbttAgMpGosa//eC2qCdfkoWJUa0jSd4oxQt4eXK7AR7AMht6Lw9k22KU9dDf2
9CHrLq0NF8IBmay4N23M+HwXZ05s/eSYXfNwLwirvjDv9lxUBp0iCVz/SE9xlbF+
HkJHKHAaW2Kb5yN0ZvfIuj5ZuRr2FgcXV128wy+/J+buCySWK8knpJdC9VhfmoR0
+5kqDjG2oT/56iTc7IZDuaS7lf0CvAobeOaKn3ctIRjX/o1qg6vRYDmGL3Kl1L3b
Eo+pWqfs5Lls4mHCeFH/5RxfJnlJjKkybnhJgnXpF/JaOZLyf0hGyPFhHKqQzY2v
VtExqTw/gr8xOHb1gJ9iwZMPXe8N9bJS+LfkwCrsZ/o15OfOlUYXqzThI/+Pul4s
bPt1X+FNck7kNY/s6/KVyzEqnOmBFczXoSMrKXIkuz+LSrg/IdY0cm0I/XajNWOA
9hAXqzGAv6tUsjuu3l1p5GLZ9gHfE1cfnnfG2pieW3f+DsfMl8PqCYD8mbnOK+zm
8EC+reJzv+GdOf7kwVWIqWmYI7x2Ds1TVTpxjkpRph96KNRJbYpHLi8gBZecup6u
/5PtceImg8LnesN+Huvv
=Hbjw
-----END PGP SIGNATURE-----

--d2pE7fB1MK6LWPCdKIa74rs2cnt1oNXtg--
