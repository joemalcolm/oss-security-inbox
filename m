X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1576" "Sunday" "14" "August" "2016" "12:50:11" "+0200" "Peter Bex" "peter@more-magic.net" "<20160814105011.GQ3971@scully.more-magic.net>" "45" "[oss-security] CVE request for buffer overrun in CHICKEN process-execute and process-spawn posix procedures" nil nil nil "8" "2016081410:50:11" "[oss-security] CVE request for buffer overrun in CHICKEN process-execute and process-spawn posix procedures" (number mark "U       peter@more-m Aug 14   45/1576  " thread-indent "\"[oss-security] CVE request for buffer overrun in CHICKEN process-execute and process-spawn posix procedures\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8028 invoked by uid 550); 14 Aug 2016 10:49:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8007 invoked from network); 14 Aug 2016 10:49:12 -0000
Date: Sun, 14 Aug 2016 12:50:11 +0200
From: Peter Bex <peter@more-magic.net>
To: Open Source Security <oss-security@lists.openwall.com>
Message-ID: <20160814105011.GQ3971@scully.more-magic.net>
Mail-Followup-To: Open Source Security <oss-security@lists.openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="A+KtNVtgI4x4SWvL"
Content-Disposition: inline
X-PGP-Key: http://www.more-magic.net/peter-bex.asc
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] CVE request for buffer overrun in CHICKEN process-execute and
 process-spawn posix procedures

--A+KtNVtgI4x4SWvL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello all,

I would like to request a CVE for a buffer overrun that
was detected in CHICKEN Scheme's "process-execute" and
"process-spawn" procedures from the posix unit.

CHICKEN preallocated an argument array of ARG_MAX items (or 256 if
that was undefined), and an environment array of ENV_MAX items
(or 1024 if that was undefined), and did not verify that the arguments
or environment lists were less than this size, resulting in a buffer
overrun if these lists were longer.

The full announcement can be found here:
http://lists.nongnu.org/archive/html/chicken-announce/2016-08/msg00001.html

The bugfix also fixed a memory leak in the same piece of code, which
could potentially be used to cause resource exhaustion/denial of
service situation.  Does this warrant another CVE?

The bug affects all releases of CHICKEN up to and including 4.11.

Cheers,
Peter Bex

--A+KtNVtgI4x4SWvL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJXsEzjAAoJEBEdufnLRYmwAFoH/jrjVsFBkuUql4fxpX10kXLJ
/zEoL3E+HQuDuhbRltsZF0KG9i+nT9ha++ug1pHQOe37EkJGzX6/M10U6DaIorZy
biFmikw/MAvfDb3QQAUa8qJLTVD8HHoiPAwm91kIkCssA4A98sk+Ls3qlp7PD1so
LzXlnkWkax4dHB9isKLD3PezXOwf4gMzSpoDlJpB7fKe+2ayBFSWEYwY9wFU+H63
p2eT7STbmMIFInkHpaznqBTMCCRrzAihcvw/uqjbXdGiifn7upfQkqrPTUzfy9jV
6Ymk2u0bTVAte0m/uzGKE9Kxpr0suRhtA6H4Kfcxs2j/5N/GSSREQ6oJGBBsO60=
=P0hI
-----END PGP SIGNATURE-----

--A+KtNVtgI4x4SWvL--
