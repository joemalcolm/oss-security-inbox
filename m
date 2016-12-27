X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3468" "Monday" "26" "December" "2016" "16:10:09" "-0800" "Tracy Reed" "treed@ultraviolet.org" "<20161227001009.GS20382@tracyreed.org>" "106" "Re: [oss-security] PHPMailer < 5.2.18 Remote Code Execution [CVE-2016-10033]" nil nil nil "12" "2016122700:10:09" "[oss-security] PHPMailer < 5.2.18 Remote Code Execution [CVE-2016-10033]" (number mark "U       treed@ultrav Dec 26  106/3468  " thread-indent "\"Re: [oss-security] PHPMailer < 5.2.18 Remote Code Execution [CVE-2016-10033]\"\n") "<CADSYzsubAm_GzSJ1S3uoskp1JNJe5Jemb0jtt8waA8QMdcbHOw@mail.gmail.com>" ("<CADSYzsubAm_GzSJ1S3uoskp1JNJe5Jemb0jtt8waA8QMdcbHOw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5496 invoked by uid 550); 27 Dec 2016 00:57:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11335 invoked from network); 27 Dec 2016 00:10:23 -0000
Date: Mon, 26 Dec 2016 16:10:09 -0800
From: Tracy Reed <treed@ultraviolet.org>
To: oss-security@lists.openwall.com
Message-ID: <20161227001009.GS20382@tracyreed.org>
References: <CADSYzsubAm_GzSJ1S3uoskp1JNJe5Jemb0jtt8waA8QMdcbHOw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="90wTzOiXAbbhNsuN"
Content-Disposition: inline
In-Reply-To: <CADSYzsubAm_GzSJ1S3uoskp1JNJe5Jemb0jtt8waA8QMdcbHOw@mail.gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Subject: Re: [oss-security] PHPMailer < 5.2.18 Remote Code Execution
 [CVE-2016-10033]

--90wTzOiXAbbhNsuN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Note that confining the http process using SELinux or similar MAC system
can go a long way to constraining and limiting the damage of inevitable
vulnerabilities such as this. Particularly since this is command
injection which is precisely what SELinux is good at limiting (as
opposed to SQL injection).

My shop has a policy that SELinux will be enabled on all web
applications and it has already saved us a few times despite being very
good at getting things patched up promptly.=20

On Sun, Dec 25, 2016 at 06:21:07PM PST, Dawid Golunski spake thusly:
> PHPMailer < 5.2.18 Remote Code Execution [CVE-2016-10033]
>=20
> Severity: CRITICAL
>=20
> Discovered by:
> Dawid Golunski (@dawid_golunski)
> https://legalhackers.com
>=20
>=20
> PHPMailer
> "Probably the world's most popular code for sending email from PHP!
> Used by many open-source projects: WordPress, Drupal, 1CRM, SugarCRM, Yii,
> Joomla! and many more"
>=20
> Desc:
> An independent research uncovered a critical vulnerability in PHPMailer t=
hat
> could potentially be used by (unauthenticated) remote attackers to achieve
> remote arbitrary code execution in the context of the web server user and
> remotely compromise the target web application.
> To exploit the vulnerability an attacker could target common website
> components such as contact/feedback forms, registration forms, password
> email resets and others that send out emails with the help of a vulnerable
> version of the PHPMailer class.
>=20
>=20
> Patching:
> Responsibly disclosed to PHPMailer team.
> They've released a critical security release.
> If you are using an affected release update to the 5.2.18 security
> release as advised at:
> https://github.com/PHPMailer/PHPMailer/blob/master/changelog.md
>=20
> Notes:
> I know this is a bad timing and a short notice (for everyone probably ;)
> I've spent most of my Christmas break working on this issue with
> affected vendors.
> This has been quite a rush as one of the vendors leaked excessive
> information on this vulnerability at one point which could aid
> potential attackers.
>=20
> I've released a limited advisory at the link below:
>=20
> https://legalhackers.com/advisories/PHPMailer-Exploit-Remote-Code-Exec-CV=
E-2016-10033-Vuln.html
>=20
> This is to give people a chance to immediately patch or at least be
> aware of the issue before we get closer to a working day/end of
> holiday for affected users to act on this issue.
>=20
> I'm planning to release the full advisory and a PoC exploit shortly so
> that everyone is on the same page.
>=20
> Upcoming video PoC:
>=20
> https://legalhackers.com/videos/PHPMailer-Exploit-Remote-Code-Exec-Vuln-C=
VE-2016-10033-PoC.html
>=20
>=20
> For updates follow:
>=20
> https://twitter.com/dawid_golunski
>=20
> I'll also send another email to the list once it is published.
>=20
> For now,
> Patch it now before someone else patches it for you (through a reverse sh=
ell ;)
>=20
> --=20
> Regards,
> Dawid Golunski
> https://legalhackers.com
> t: @dawid_golunski

--=20
Tracy Reed

--90wTzOiXAbbhNsuN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iEYEARECAAYFAlhhsWEACgkQBhSTPg0d/nSVjgCcDh63xRPsSs0GFmpQ3iDzIMQE
LaoAn1RkOVzVwawAn3nUjmVhaBBSYweF
=+24T
-----END PGP SIGNATURE-----

--90wTzOiXAbbhNsuN--
