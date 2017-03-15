X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1752" "Wednesday" "15" "March" "2017" "12:27:47" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20170315192747.GA4073@hunt>" "46" "Re: [oss-security] Dealing with CVEs that apply to unspecified package versions" "^Date:" nil nil "3" "2017031519:27:47" "[oss-security] Dealing with CVEs that apply to unspecified package versions" (number mark "        seth.arnold@ Mar 15   46/1752  " thread-indent "\"Re: [oss-security] Dealing with CVEs that apply to unspecified package versions\"\n") "<87wpbq5uqz.fsf@gnu.org>" ("<87wpbq5uqz.fsf@gnu.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24416 invoked by uid 550); 15 Mar 2017 19:28:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24392 invoked from network); 15 Mar 2017 19:28:00 -0000
Message-ID: <20170315192747.GA4073@hunt>
Mail-Followup-To: oss-security@lists.openwall.com
References: <87wpbq5uqz.fsf@gnu.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3MwIy2ne0vdjdPXF"
Content-Disposition: inline
In-Reply-To: <87wpbq5uqz.fsf@gnu.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Wed, 15 Mar 2017 12:27:47 -0700
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Dealing with CVEs that apply to unspecified
 package versions
To: oss-security@lists.openwall.com

--3MwIy2ne0vdjdPXF
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 15, 2017 at 06:12:52PM +0100, Ludovic Court=E8s wrote:
> I can think of two actions that could perhaps be taken:
>=20
>   1. The software behind the CVE form could force submitters to specify
>      version numbers.

"No fix is currently available" would be difficult to accurately describe.
Sometimes the software is abaondware, and no fix will ever be available.
Sometimes the software is a hobby and only fun features get implemented
but difficult fixes do not. Sometimes the fix will be in the next release.

>   2. For recent entries (say, 2 years old at most), a bot could email
>      the original submitters kindly asking them to provide the missing
>      version info.

I know some submitters who would probably have to invest in new /dev/null
procmail entries if we mailed them once for every CVE they've been issued. =
:)

I suspect the solution is for people who rely upon these scanning tools to
do the leg work themselves on the packages they care about. (i.e., the
packages that annoy them the most.)

Thanks

--3MwIy2ne0vdjdPXF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBCgAGBQJYyZWzAAoJEPMhclmdjS6XLuYH/0Kff0AtCrLuJpdeky4V7xEn
siQ5u1okPDPa7JVAp0XCgo/sOUuEZ+OqZtWw+Pp1Ic7Q5/x7eu9UbCHA5BlQcv8l
U3/bDdhX4C8SG42RvYuO8z+cHdf0CuaUq4nDjV9XvBoCRET90KAu1ml7VX4eZeEs
a57cmAvFV+8Pt2nQl8MTNlkYmiLoVA9nFXAUldjJ1Hkf5USsVKBf5I0scQfEwJEz
sNAzz7/J/56OhprUcQDkx4P700DPzBd0M43LcR/ZD4arIzHZHNZzHbF5NeNZkmta
M1Z/d+bBIThsH8xrvtiWxNo/bLa0La7K9066lK3gB+/S/WCaZwpwJAlhtgk18/w=
=MQyu
-----END PGP SIGNATURE-----

--3MwIy2ne0vdjdPXF--
