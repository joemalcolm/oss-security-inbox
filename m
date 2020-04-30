X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2970" "Thursday" "30" "April" "2020" "13:21:43" "+0200" "Johannes Segitz" "jsegitz@suse.de" "<20200430112143.GS6639@suse.com>" "69" "[oss-security] Check your pre/post install scripts in rpm/deb/... packages for security issues" nil nil nil "4" "2020043011:21:43" "[oss-security] Check your pre/post install scripts in rpm/deb/... packages for security issues" (number mark "U       jsegitz@suse Apr 30   69/2970  " thread-indent "\"[oss-security] Check your pre/post install scripts in rpm/deb/... packages for security issues\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Check your pre/post install scripts in rpm/deb/... packages for security issues" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3398 invoked by uid 550); 30 Apr 2020 11:35:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20309 invoked from network); 30 Apr 2020 11:21:56 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Thu, 30 Apr 2020 13:21:43 +0200
From: Johannes Segitz <jsegitz@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20200430112143.GS6639@suse.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mW/Yq1p9Hn2AHmV6"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [oss-security] Check your pre/post install scripts in rpm/deb/... packages for
 security issues

--mW/Yq1p9Hn2AHmV6
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

rpm packages can have %post/%pre ... scripts to run code at various points
during the installation of a package. Debian packages have a similar mechan=
ism
with preinst, postinst, ... Probably all packaging formats provide something
like this.

The SUSE security team got a hint about an unfortunate construct in a %post
script in one of our packages. We found several issues and decided to have a
look at our other packages. That resulted in 13 CVEs and 18 non-CVE issues
(mostly hardening). Most of these issues result from root operating in user
controlled directories. A lot of packages use these scripts to fix up
permission problems and introduce problems like
$ chown $unpriv_user:$unpriv_group /foo/bar/attackercontrolled/file
which can be easily exploited into LPE. Sometimes the attacker needs to win=
 a
race, which is (apart from the fact that you need to wait until the package=
 is
updated) easily won since shell scripts are slow.

We now monitor all changes to these scripts to prevent further issues from
sneaking into the distribution and recommend that other distributions check
their existing packages and create processes to monitor changes to these
scripts. It's way too easy to shoot yourself in the foot and a lot of packa=
gers
are not aware of the dangers.

In the long term we want to try if something like
https://github.com/google/path-auditor
can be used to automatically find these issues in our build systems. If you
have measures in place to check for problems like these we would be interes=
ted
to hear about them.

Johannes
--=20
GPG Key E7C81FA0       EE16 6BCE AD56 E034 BFB3  3ADD 7BF7 29D5 E7C8 1FA0
Subkey fingerprint:    250F 43F5 F7CE 6F1E 9C59  4F95 BC27 DD9D 2CC4 FD66
SUSE Software Solutions Germany GmbH, Maxfeldstr. 5, 90409 Nuernberg
Gesch=E4ftsf=FChrer: Felix Imend=F6rffer (HRB 36809, AG N=FCrnberg)

--mW/Yq1p9Hn2AHmV6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEJQ9D9ffObx6cWU+VvCfdnSzE/WYFAl6qtMcACgkQvCfdnSzE
/WYVPg/+IwyOhqlni9182oASjgkuPJ1GjBqJXDIpu22C/7r5Xy7TCIUbeDW/J7sX
GzryYpThm1Y9oQohRc5bKntNk1IKzrLaFjaDpJHHz3Cd7yhXuPUmfSdLeZCjl0dX
XktvaM79ll16i9F1bgei6nTIdFnkqlC8VVe5shBbw1Td/+8TzQFhqE+Y+ZVsRqT9
lltR4KcMq3U14YjhpVRm7cmPbVOJdCXchMTS8nOiX3MIm5UCBaNcI5C/FJb0PImv
LHY0/awWruQ08MYPAv3SPXhvg5JFnBozt3hFiKeIwDCUF0bCCKBKg45ynBLPuk4g
usy7OBXwgahcoaWfulR1w0h4VWKU1l48BebLFAgon7Be8MjqJrKlQgAmaJY7fjcR
QVqTbsscV/QdD1ib2xXzBEfdYrrCGFn8m1Gigk6WPVunUITXXz0jtuIR9ncI//v+
NrovdFU5CJGeNPl3lxQDq4QpIuyInm70hYhX5x0R8FjGPtsJvGJoKIEUi75STBO6
qUHWdr2TM2w3khMAREPjHiYgq6Qvm96vnHX6uaCyi1HCzekxaW/dI6/zIypXLNzz
NCmohhgKPlmHY5j/W+0YZOzW81kya2s6dPq24pufZ4/lFpnCjhXEH3F6tzR5CeyB
J3RshJOt8yvGCD2+PqNZ2819z0rzuriSnuUIgP7CvKj36FyFnhE=
=Fa0V
-----END PGP SIGNATURE-----

--mW/Yq1p9Hn2AHmV6--
