X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2143" "Thursday" "1" "June" "2017" "09:23:13" "+0200" "Peter Bex" "peter@more-magic.net" "<20170601072313.GM4590@scully.more-magic.net>" "52" "[oss-security] CVE-2017-9334 CHICKEN Scheme: denial of service due to invalid pointer dereference" "^Date:" nil nil "6" "2017060107:23:13" "[oss-security] CVE-2017-9334 CHICKEN Scheme: denial of service due to invalid pointer dereference" (number mark "        peter@more-m Jun  1   52/2143  " thread-indent "\"[oss-security] CVE-2017-9334 CHICKEN Scheme: denial of service due to invalid pointer dereference\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9831 invoked by uid 550); 1 Jun 2017 07:23:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9812 invoked from network); 1 Jun 2017 07:23:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=more-magic.net; s=dkim-2016-12;
	h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date; bh=2m+Zn7toniiIgTBUryjkCVW6eJ/y2ywG5rBFKdzGp9U=;
	b=kfqdvKviqr0cLGyaPsH+BZED4US4qSg75gVQ4Z2AKuk57kTa2JGgm9ucHBsaCb1EBV1Z0AYKd4BddELgwZlmNZeSg0TAzizVuYi3Oe4Z2dA46nU2PARKe28TKmLwP6WkXFcFKk9ZdRyiOiBlOWjpyshbWAPo68ZPG1EesNNyoxg=;
Message-ID: <20170601072313.GM4590@scully.more-magic.net>
Mail-Followup-To: Open Source Security <oss-security@lists.openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ZVOC9e0LfXEId8h2"
Content-Disposition: inline
X-PGP-Key: http://www.more-magic.net/peter-bex.asc
User-Agent: Mutt/1.5.23 (2014-03-12)
Date: Thu, 1 Jun 2017 09:23:13 +0200
From: Peter Bex <peter@more-magic.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2017-9334 CHICKEN Scheme: denial of service due to invalid
 pointer dereference
To: Open Source Security <oss-security@lists.openwall.com>

--ZVOC9e0LfXEId8h2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi all,

I just received my assignment of CVE-2017-9334 for this issue:

An incorrect "pair?" check in the Scheme "length" procedure results in=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20
an unsafe pointer dereference in all CHICKEN Scheme versions prior to=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20
4.13, which allows an attacker to cause a denial of service by passing=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20
an improper list to an application that calls "length" on it.=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20

Original announcement:
http://lists.nongnu.org/archive/html/chicken-announce/2017-05/msg00000.html

Patch:
http://lists.nongnu.org/archive/html/chicken-hackers/2017-05/msg00099.html

Cheers,
Peter

--ZVOC9e0LfXEId8h2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJZL8DhAAoJEBEdufnLRYmwFJkH/2B6a5dhrhThLWgLzKCQhWZf
8mxaw+BAnxV2RBClhLxY8+egqnCsGAPatkw4qLsWIR6V4PIUssmQLcQup34dqUVm
VHGAC+y21KBDiKhQ7v/3l7ClR4jXbrvH8dRXGpX2SDeRoGkYoRUJNJE276hITByF
GJqZsyF2WaT6F4kcwY66UCgCVVi8dGn5K6SbHCdvwMvmp76GeTmfL//TkddreIwj
YPCiArxmj7/gsyNzejWSbxOur+5X1lZg6oidnSDMIG2np33K43RdkNQFCoqSfTlH
ZxUYaf71WdCaGovarhbjEHBtg8XoSo82d5S8OLtENYvCwNIw74gDrCH4JuaPxN0=
=6pnV
-----END PGP SIGNATURE-----

--ZVOC9e0LfXEId8h2--
