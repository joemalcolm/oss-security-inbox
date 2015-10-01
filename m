X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1913" "Thursday" "1" "October" "2015" "16:10:46" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20151001231046.GB16643@hunt>" "51" "Re: [oss-security] Re: CVE request for wget" nil nil nil "10" "2015100123:10:46" "[oss-security] Re: CVE request for wget" (number mark "        seth.arnold@ Oct  1   51/1913  " thread-indent "\"Re: [oss-security] Re: CVE request for wget\"\n") "<20151001225726.9EF7AB2E0A6@smtpvbsrv1.mitre.org>" ("<CACC5Q1eQ8jf-nxub=viXgnSt6pZGzSzbV=RD2YXV76NVHw7WTQ@mail.gmail.com>" "<20151001225726.9EF7AB2E0A6@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30106 invoked by uid 550); 1 Oct 2015 23:11:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30083 invoked from network); 1 Oct 2015 23:11:00 -0000
Message-ID: <20151001231046.GB16643@hunt>
Mail-Followup-To: cve-assign@mitre.org, austinenglish@gmail.com,
	oss-security@lists.openwall.com
References: <CACC5Q1eQ8jf-nxub=viXgnSt6pZGzSzbV=RD2YXV76NVHw7WTQ@mail.gmail.com>
 <20151001225726.9EF7AB2E0A6@smtpvbsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="XF85m9dhOBO43t/C"
Content-Disposition: inline
In-Reply-To: <20151001225726.9EF7AB2E0A6@smtpvbsrv1.mitre.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: austinenglish@gmail.com, oss-security@lists.openwall.com
Date: Thu, 1 Oct 2015 16:10:46 -0700
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE request for wget
To: cve-assign@mitre.org

--XF85m9dhOBO43t/C
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 01, 2015 at 06:57:26PM -0400, cve-assign@mitre.org wrote:
> If there is any additional Tails vulnerability related to this,
> another CVE ID may be needed. For example,
>=20
>   https://lists.gnu.org/archive/html/bug-wget/2015-08/msg00050.html
>=20
> says
>=20
>   to be 100% sure, you should add --passive-ftp to your command line.
>   If you don't do that, your /etc/wgetrc or ~/.wgetrc could include
>   --no-passive-ftp (or passiveftp =3D off).
>=20
> If Tails is supposed to try to ensure that, perhaps there's a
> requirement to have something like:
>=20
>   alias wget=3D"wget --passive-ftp"
>=20
> in a system-wide location (possibly /etc/bash.bashrc). The concept of
> CVE IDs for "failure of a torify step" issues is new, and we aren't
> sure of the best approach.

I suspect using a bash alias in a site-wide config might then qualify for
another CVE in the future, along the lines of "programs that spawn wget
via system(3), popen(3), or exec family of functions can use unsafe active
mode by accident". If Tails is in the business of fixing these things
for safety, removing active ftp support from tools seems like better fix.

Thanks

--XF85m9dhOBO43t/C
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJWDb12AAoJEPMhclmdjS6XclgIALwefITzmqZxXZTuStBKX4Z1
mX8O+BZDMCGcFaK4P65CW8OWmlnfXAf/IquezduMrOsDFFssWlsyeNacCLfEvex4
dxW0xAherwtUADNYRg/PASd2OEPxMskX9z15MCTq/474KPRkshUOPivRMPVdXV0U
xndtiEpZWZv5Jfk6BkpA9u4w2FYSkHaZVaE7jshF3W5wQkZNqWoJwf2AkzmlbaXj
ace6ciO95BWf7aoRrcghnBc7ycGtdohQ8MBRw6Ixa7Y6dZOh9e7sjiZKjCpxcI0H
bDTzY4N8d0W3lptEelzzb+y7JdXTGbKuWDvZS5Jv/pYx7LJBfJ6oK/qBy8vWpDM=
=goNa
-----END PGP SIGNATURE-----

--XF85m9dhOBO43t/C--
