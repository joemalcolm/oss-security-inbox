X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4779" "Tuesday" "1" "February" "2022" "02:23:33" "+0000" "John Helmert III" "jchelmert3@posteo.net" nil "130" "[oss-security] Samba 4.15.5, 4.14.12, 4.13.17 Security Releases" nil nil nil "2" nil nil (number mark "U       jchelmert3@p Feb  1  130/4779  " thread-indent "\"[oss-security] Samba 4.15.5, 4.14.12, 4.13.17 Security Releases\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Samba 4.15.5, 4.14.12, 4.13.17 Security Releases" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20426 invoked by uid 550); 1 Feb 2022 06:57:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15726 invoked from network); 1 Feb 2022 02:23:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.net; s=2017;
	t=1643682215; bh=yf0ahj6WfRvtkyJttpg8JQ6iGKGWWL+UI7I27Cy3q8I=;
	h=Date:From:To:Subject:From;
	b=ivJ6FCDaGf15qq667vRoEXplyeMT6pJQYHRXHSsucM/gcs3jialjNXQ9yP/kimCzH
	 qMJYXmtTTzMuRbfmH16/CrcmMsGqeYCjtp5eEQXBS3MCyxEGpz7IiR+iQdwtdUxIR/
	 CXTMr0ccy3txffdDuj9jXxsm7snQH4lTv9THRm7+Fi8a3fHYlerGtOB/g92sg4xkhe
	 v6SE0fOSxisIlpgi4IEkDw/j7g6YOyLCfNKjcmgdX1Z4cixm8WATJDPaY18G/BR17q
	 wVAGMKVNHVIKeQr+Qbc70FNIq51yc0w/rmyJte7Hbyvr+35Ry+Jg/iKsE4JWAs7rji
	 /b4wh1b5qzy2w==
Date: Tue, 01 Feb 2022 02:23:33 +0000
From: John Helmert III <jchelmert3@posteo.net>
To: oss-security@lists.openwall.com
Message-ID: <YfiZNymtMafSB3eB@sol.nexus.lan>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="GbO3bU0flU8MLqFj"
Content-Disposition: inline
Subject: [oss-security] Samba 4.15.5, 4.14.12, 4.13.17 Security Releases

--GbO3bU0flU8MLqFj
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

CVE-2021-44142 is particularly nasty, "This vulnerability allows
remote attackers to execute arbitrary code as root on affected Samba
installations that use the VFS module vfs_fruit."

----- Forwarded message from Jule Anger via samba-announce <samba-announce@=
lists.samba.org> -----

Return-Path: <samba-announce-bounces@lists.samba.org>
Date: Mon, 31 Jan 2022 14:04:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101 Thunder=
bird/91.5.0
Subject: [Announce] Samba 4.15.5, 4.14.12, 4.13.17 Security Releases are av=
ailable for Download
To: samba-announce@lists.samba.org, samba@lists.samba.org, samba-technical@=
lists.samba.org
List-Id: Low volume list for Samba announcements <samba-announce.lists.samb=
a.org>
From: Jule Anger via samba-announce <samba-announce@lists.samba.org>
Reply-To: Jule Anger <janger@samba.org>
Sender: samba-announce <samba-announce-bounces@lists.samba.org>

Release Announcements
---------------------

These are security releases in order to address the following defects:

o CVE-2021-44141: UNIX extensions in SMB1 disclose whether the outside targ=
et
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 of a symlink exists.
https://www.samba.org/samba/security/CVE-2021-44141.html

o CVE-2021-44142: Out-of-Bound Read/Write on Samba vfs_fruit module.
https://www.samba.org/samba/security/CVE-2021-44142.html

o CVE-2022-0336:=A0 Re-adding an SPN skips subsequent SPN conflict checks.
https://www.samba.org/samba/security/CVE-2022-0336.html


Changes
-------

o=A0 Jeremy Allison <jra@samba.org>
=A0=A0 * BUG 14911: CVE-2021-44141

o=A0 Ralph Boehme <slow@samba.org>
=A0=A0 * BUG 14914: CVE-2021-44142

o=A0 Joseph Sutton <josephsutton@catalyst.net.nz>
=A0=A0 * BUG 14950: CVE-2022-0336


#######################################
Reporting bugs & Development Discussion
#######################################

Please discuss this release on the samba-technical mailing list or by
joining the #samba-technical IRC channel on irc.libera.chat or the
#samba-technical:matrix.org matrix channel.

If you do report problems then please try to send high quality
feedback. If you don't provide vital information to help us track down
the problem then you will probably be ignored.=A0 All bug reports should
be filed under the Samba 4.1 and newer product in the project's Bugzilla
database (https://bugzilla.samba.org/).


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
=3D=3D Our Code, Our Bugs, Our Responsibility.
=3D=3D The Samba Team
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D



=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Download Details
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The uncompressed tarballs and patch files have been signed
using GnuPG (ID AA99442FB680B620).=A0 The source code can be downloaded
from:

https://download.samba.org/pub/samba/stable/

The release notes are available online at:

=A0=A0=A0=A0=A0=A0=A0 https://www.samba.org/samba/history/samba-4.15.5.html
=A0=A0=A0=A0=A0=A0=A0 https://www.samba.org/samba/history/samba-4.14.12.html
https://www.samba.org/samba/history/samba-4.13.17.html

Our Code, Our Bugs, Our Responsibility.
(https://bugzilla.samba.org/)

=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 --Enj=
oy
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 The S=
amba Team


----- End forwarded message -----

--GbO3bU0flU8MLqFj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEElFuPenBj6NvNLoABXP0dAeB+IzgFAmH4maEACgkQXP0dAeB+
IzgxUxAAihyg9H2mHnlfdk21sC5mICnoS1eR2yRaMEksmwSE62V6I05xdohKcSQL
EiTFamxVuzWc1UPhYpXkBZ7+yjCnVd30X74/w+4XyoCZLerloQKSe56Sc3v7ndjy
H9BIAOy44MZW4DH3ibhXTh1IpGVC2tQnHjC41YDaK+shzvT+ukhwz4tTIGFUSDfD
SNdd5TZdO1tsvK842cZcrblZZS7tfI0TyUBoMU4t+qV4QaA6IqS03+NVsTdKUG2O
PPW8XUQhzSp+aUoew25rryX8ceUXjQov8hZzleqS+zgm3KbMtO9NlVQVGINmAON9
Orl766+NlI4nGr1AHjA5b7SMQqtQ8i9kzhgIXf1rCnAWHA+v8yKC7A2dQF2TYhAQ
A2iSNkyj/m60iQJtpi+r8HeYIT91EFyp6Eq3oCwzq4I9UpaTnng/4rZO70d87EHM
YL+6PA1QmF/V6lUi7kOCXcJKOpF3+D1Ik/V/bD1HsV1tvt9K1y4qi2keoHmhEHN1
TUSTzaPJ0HQ76TWuADMzYPHpO2i7yMsuyv30rHjG1MaJBYPFqYTUB9Dq7W9KvUE2
2Lvm3aC8zfX/DZ97qKRRAQaztjVN1vEu/zPflparPJsM0gE6l4OMlzhWoNAbFYdU
8wGMO9KASPFASVtTbb/9FpbyOa7OUkQbA6yWHrmPgtVkwo/g/qk=
=I++z
-----END PGP SIGNATURE-----

--GbO3bU0flU8MLqFj--
