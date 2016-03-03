X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3195" "Thursday" "3" "March" "2016" "10:09:27" "+0100" "Heiko Schlittermann" "hs@schlittermann.de" "<20160303090927.GG11024@jumper.schlittermann.de>" "97" "[oss-security] Exim CVE-2016-1531 fixed" "^Date:" nil nil "3" "2016030309:09:27" "[oss-security] Exim CVE-2016-1531 fixed" (number mark "        hs@schlitter Mar  3   97/3195  " thread-indent "\"[oss-security] Exim CVE-2016-1531 fixed\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3850 invoked by uid 550); 3 Mar 2016 09:09:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3823 invoked from network); 3 Mar 2016 09:09:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=schlittermann.de; s=dd201504; h=Content-Type:MIME-Version:Message-ID:
	Subject:To:From:Date; bh=NzM+mvYipbp+1Wh8FWVsCP3saYmog6gfCjCHrFVniU0=; b=BCGf
	GV2fvum5isH9R2+5N6vAKkX6eklCX5/zF2lNYsLsN1f/Rk9eFfPe8FWFW9f5aFamzh/oiq5zRws7F
	gxMJCUkDk/tYacj2EqbG7vgiBUulBHm+TNMEBW9dhddk5Y4/Fsd5s55t9gF2vUUb1EcH3vGuTcSEs
	Hu6YIR4kn2rqQ=;
Message-ID: <20160303090927.GG11024@jumper.schlittermann.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="c7hkjup166d4FzgN"
Content-Disposition: inline
Organization: schlittermann -- internet & unix support
X-Phone: +49.172.7909055
X-GPG-Fingerprint: E5CA 331D 44AB 8E4C 806F  DBEE 2610 1B62 F693 76CE
X-GPG-Key-ID: F69376CE
User-Agent: Mutt/1.5.23 (2014-03-12)
Date: Thu, 3 Mar 2016 10:09:27 +0100
From: Heiko Schlittermann <hs@schlittermann.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Exim CVE-2016-1531 fixed
To: oss-security <oss-security@lists.openwall.com>

--c7hkjup166d4FzgN
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

We've fixed CVE-2016-1531. The fix was announced to the public
via exim-{maintainers,dev,users} mailing lists, via the
about Wed, 2 Mar 2016 19:10 GMT, the announcement to exim-announce
followed about one hour later.

Known distro maintainers and Exim contributors got access to the fix
on Monday, 29 Feb 2016 at 14:00 GMT.

Some *BSD portability issues where fixed on Tue Mar 1 late evening.

The announcement we sent to the above mentioned lists:

Security fix for CVE-2016-1531
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

All installations having Exim set-uid root and using 'perl_startup' are
vulnerable to a local privilege escalation. Any user who can start an
instance of Exim (and this is normally *any* user) can gain root
privileges.

New options
-----------

We had to introduce two new configuration options:

    keep_environment =3D
    add_environment =3D

Both options are empty per default. That is, Exim cleans the complete
environment on startup. This affects Exim itself and any subprocesses,
as transports, that may call other programs via some alias mechanisms,
as routers (queryprogram), lookups, and so on.

** THIS MAY BREAK your existing installation **

If both options are not used in the configuration, Exim issues a warning
on startup. This warning disappears if at least one of these options is
used (even if set to an empty value).

keep_environment should contain a list of trusted environment variables.
(Do you trust PATH?). This may be a list of names and REs.

    keep_environment =3D ^LDAP_ : FOO_PATH

To add (or override) variables, you can use add_environment:

    add_environment =3D <; PATH=3D/sbin:/usr/sbin


New behaviour
-------------

Now Exim changes it's working directory to / right after startup,
even before reading it's configuration. (Later Exim changes it's working
directory to $spool_directory, as usual.)

Exim only accepts an absolute configuration file path now, when using
the -C option.


Thank you for your understanding.


    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--=20
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -
 ! key id 7CBF764A and 972EAC9F are revoked since 2015-01 ------------ -

--c7hkjup166d4FzgN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBCgAGBQJW1/9HAAoJEGoXY4qgRQz12KcH/2qfSrSHHwo20Vxi4kuXEdvF
qiOhZfNSdasqu6URMnk7FVpq2wyHp6Fgu1EOXP6dbpD7S7hREOyl4ErEj/osazzM
8x9C/72sq5mN+IMtyajqnc+Pdjqa24aJW9xPKTRrNA/9H0+sTSeMSzbNaKLfquqw
B6GNJa+mpUW81GtG7GyWJ35fS6lHaumf4BITH9jyhZ3aYOLoe5OEETdPJbd4rW4a
sjDLWK+f0uIs0DsWrIf+iwfhF37c8YB8+gOC+jn+n+pupFMWqMi3YRkQbI/D95RI
jwE5KzYs45MKz5YO8LPYpvjsFQCIFdyc+v0IXHxFrDemEV+NVzJb/ZhY7IGhtxQ=
=SBx6
-----END PGP SIGNATURE-----

--c7hkjup166d4FzgN--
