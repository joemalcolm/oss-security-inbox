X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3327" "Friday" "12" "May" "2017" "22:45:05" "+0200" "Florent Rougon" "f.rougon@free.fr" "<87tw4pere6.fsf@frougon.crabdance.com>" "103" "[oss-security] CVE-2017-8921: directory traversal vulnerability in FlightGear" "^Date:" nil nil "5" "2017051220:45:05" "[oss-security] CVE-2017-8921: directory traversal vulnerability in FlightGear" (number mark "U       f.rougon@fre May 12  103/3327  " thread-indent "\"[oss-security] CVE-2017-8921: directory traversal vulnerability in FlightGear\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29806 invoked by uid 550); 12 May 2017 21:13:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1773 invoked from network); 12 May 2017 20:45:17 -0000
Mail-Followup-To: oss-security@lists.openwall.com
Message-ID: <87tw4pere6.fsf@frougon.crabdance.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Date: Fri, 12 May 2017 22:45:05 +0200
From: Florent Rougon <f.rougon@free.fr>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2017-8921: directory traversal vulnerability in FlightGear
To: oss-security@lists.openwall.com

--=-=-=
Content-Type: text/plain

Hi,

Here is the info for CVE-2017-8921:

[Suggested description]
In FlightGear before 2017.2.1, the FGCommand interface allows
overwriting any file the user has write access to, but not with
arbitrary data: only with the contents of a FlightGear flightplan (XML).
A resource such as a malicious third-party aircraft could exploit this
to damage files belonging to the user. Both this issue and CVE-2016-9956
are directory traversal vulnerabilities in Autopilot/route_mgr.cxx -
this one exists because of an incomplete fix for CVE-2016-9956.

------------------------------------------

[Additional Information]
We are not aware of any such malicious resource. The fix will be in
FlightGear 2017.2.1 (expected in 1 or 2 weeks before the vulnerability
was found). There may be a stable update too meanwhile (2017.1.4) with
the fix, but I can't guarantee if so, and when.

This is not a duplicate of CVE-2016-9956.

------------------------------------------

[Vulnerability Type]
Incorrect Access Control

------------------------------------------

[Vendor of Product]
FlightGear (http://flightgear.org/)

------------------------------------------

[Affected Product Code Base]
FlightGear - Affected: releases earlier than 2017.2.1. Fixed in 'next'
branch (commit faf872e7f71ca14c567ac7080561fc785d8d2fd0), currently
referred to as FlightGear 2017.2.0 (this is *not* a release).

------------------------------------------

[Affected Component]
source file: src/Autopilot/route_mgr.cxx in the FlightGear repository,
executable: fgfs

------------------------------------------

[Attack Type]
Local

------------------------------------------

[CVE Impact Other]
Allows to overwrite any file the user has write access to, but not
with arbitrary data: only with the contents of a FlightGear flightplan
(XML).

------------------------------------------

[Attack Vectors]
Trick users into installing a resource that, when run, can execute
arbitrary FGCommands. For instance, a malicious third-party aircraft
could do that.

------------------------------------------

[Reference]
https://sourceforge.net/p/flightgear/flightgear/ci/faf872e7f71ca14c567ac7080561fc785d8d2fd0/

------------------------------------------

[Has vendor confirmed or acknowledged the vulnerability?]
true

------------------------------------------

[Discoverer]
Rebecca N. Palmer (FlightGear developer)

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEEltaD9t4j90O9Bqdx4W5C1BTo6IFAlkWHtEACgkQx4W5C1BT
o6JzBg//fZKGUiUSeRJD8vzm4hRY/wWCXyTc+OlNjZ5k3BsVeHeZ9opYXTKgaiEd
w4uaoQQh994IhCvpulN2W1CRCVia597lnGIuauRgks3h820puAMReJEAJjFFIc1X
2ZPswwqqhOCiALX2ai02IQnuz9Iv6qnR/dEhjvA5qqKRq+mxvnxHcwIzTUtxhRQz
xw0Y+BALVma9cUnj4J0lSxXUYeGvOp7YLNLoRBvJ/92xWu63VZS6jxlY7GMfi5WG
+dc9BTeGcTWcknRX5HJCvbwzqpQ6dfvyTpPb+HZanDVcgBj1b2LP0JGtzOobj4WP
HDk+r5CI380cton5FwTZMXuVNv7Q//ssNKJTqG9QptklJGBocNMUG0HGNhtyxLmB
9ChtqRhJdhHqn6j43TFxof1EIJMQejVp+4hOqLlR7fePMmZ671KUFvTyz5Rhqm9C
FcboGAei3349+dbvSUq2DnHymlnr+yK3/wkuzM+FlT6Ot7h6PiHTJTvKCNDD9ROK
ORpr0rwHfaNECZZNnGwyDNzhkQT+DyOmBfA+sgetaSslrLoru1DukH7pOomdEOV8
4oF8nCo3HZo41MNerEOO/a6R5kXYXltG1h2vYEHEgkZ5wgYosvcHWLYAlwkqmvEb
YaPJCVctPidd4+Hu1SW3ql5HKQDUDJBICQSLcnxAFYE/9Tae4mI=
=skHT
-----END PGP SIGNATURE-----
--=-=-=--
