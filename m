X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4234" "Monday" "7" "December" "2015" "16:07:23" "+0100" "Andreas Stieger" "astieger@suse.com" "<5665A0AB.5050904@suse.com>" "109" "[oss-security] CVE-2015-7519: Phusion Passenger Header overwriting issue" nil nil nil "12" "2015120715:07:23" "[oss-security] CVE-2015-7519: Phusion Passenger Header overwriting issue" (number mark "U       astieger@sus Dec  7  109/4234  " thread-indent "\"[oss-security] CVE-2015-7519: Phusion Passenger Header overwriting issue\"\n") "<56573AB6.7080506@suse.com>" ("<56573AB6.7080506@suse.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30625 invoked by uid 550); 7 Dec 2015 15:08:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30567 invoked from network); 7 Dec 2015 15:08:17 -0000
References: <56573AB6.7080506@suse.com>
To: oss-security@lists.openwall.com
From: Andreas Stieger <astieger@suse.com>
Organization: SUSE Linux GmbH
X-Forwarded-Message-Id: <56573AB6.7080506@suse.com>
Message-ID: <5665A0AB.5050904@suse.com>
Date: Mon, 7 Dec 2015 16:07:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.4.0
MIME-Version: 1.0
In-Reply-To: <56573AB6.7080506@suse.com>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="cnHioiE15R6i5nCBEE9ckvpPdopDjupdi"
Subject: [oss-security] CVE-2015-7519: Phusion Passenger Header overwriting issue

--cnHioiE15R6i5nCBEE9ckvpPdopDjupdi
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


Header overwriting issue in Phusion Passenger
https://www.phusionpassenger.com/ - https://github.com/phusion/passenger
CRD was 2015-12-07 11:00 UTC / 12:00 CET.
Upstream developers were informed and agreed, and issued the text below and=
 the attached patch. Fixed in release 5.0.22.
Discovered by Moises Deniz, Michael Schr=C3=B6der, Adrian Schr=C3=B6ter of =
SUSE Linux.
SUSE bug: https://bugzilla.suse.com/show_bug.cgi?id=3D956281

https://github.com/phusion/passenger/commit/ddb8ecc4ebf260e4967f57f271d4f57=
61abeac3e

CVE-2015-7519 was assigned to this issue.

------------ issue -------------
1. Given the precondition that the SCGI protocol is used (in Passenger
this means Rack/Rails or Python), and an app depends on a header set by
a trusted server (here: Apache) that includes a dash, for example:
Foobar-User: user

2. It is possible for an untrusted remote client to set a "colliding"
header:
Foobar_User: impersonation

3. The colliding header appears different to the server (_ instead of -)
and is thus not overwritten but preserved.

4. Conversion of the headers for SCGI requires dropping the (_ -)
difference, which results in Passenger sending two headers with the same
key:
HTTP_FOOBAR_USER: user
HTTP_FOOBAR_USER: impersonation

The exploit is then that the value "impersonation" of the second
HTTP_FOOBAR_USER may overwrite the value of the first (if a hashmap is
used), making the application believe a different value was set by the
server.

Indeed, we can make request.headers["HTTP_FOOBAR_USER"] show
"impersonation" instead of "user", confirming the issue, which can have
security implications, e.g. if the header is used for authentication.

------------ affected use-cases -------------
As far as we can see, affected use-cases are:
- Passenger, with Apache (Nginx already filters) or standalone/builtin,
using a Ruby or Python app (Node.js/Meteor/io.js don't use SCGI),
whereby the app depends on a server-set variable containing one or more
dashes.

------------ resolution -------------
We propose a different patch; not in the apache module but at the point
where the SCGI conversion occurs. The main reason is that this covers
the second affected path: standalone mode using the 'builtin' engine.
See attached (N.B. the httpToEnv you patched is unreferenced code and
has now been cleaned up).

The patch has been committed to the (internal) cgi_header_collision
passenger branch and is pending merge to stable, to be included in the
upcoming 5.0.22 release (ASAP).

------------ side-effects -------------
Like the patch in the mod_cgi mailing list, this one still breaks
applications that depend on non-standard (e.g. underscored) client
headers. Similarly, the workaround is the same, rewrite the necessary
header(s):
SetEnvIfNoCase ^X.Underscored.Header $ ^(.*)$ fix_header=3D$1
RequestHeader set X-Underscored-Header %{fix_header}e env=3Dfix_header



--=20
Andreas Stieger <astieger@suse.com>
Project Manager Security
SUSE Linux GmbH, GF: Felix Imend=C3=B6rffer, Jane Smithard, Graham Norton,
HRB 21284 (AG N=C3=BCrnberg)






--cnHioiE15R6i5nCBEE9ckvpPdopDjupdi
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJWZaC6AAoJECzWqVXhWUVGYw4P/jP0FfiU5y+6AtmIl77lP+yt
dPfDjfcOLwBQXoyoJYM+sxZK7LlIFWaSWv8p6ZqHRi1tz4XSJNpVU3IGfjb241fH
/8AaAXYJOQlykZcHfhr8Iymb5htyLZiLmiGHKJhiG6WDkie5mLLB6aZPWNHeBT4L
fjdvW/MnjSpuheO4JxY+Ru3f0ExAw31e+iUGtOOlhXS0PG7J360ZqyJkkE8uC64J
Fx1vL0VzX5Nd3No4KBjMUOuFwl4k1chBKN5dyNNTG7xZ4pVtTO71vDv73OkBl0rM
SecfKP5KxWyeLBv/F3t3q86QkV9CSDNAXCY2bWXqAk3/RucgX5JJ+wkGI18VqylG
BUXivq9+2xvThOrFfThHH5+xEsnYnz3qpI5xryXTrSRHP3/rCtDC/sHbi7qFUZ5F
9FrxIV9M1ABsXVeSt7VLZs3iGt0x1MAMbHrCEccnLTPCJngMbfnqIsQcNr+TTPg5
nse13D4NfRYhtmBBq+wdyOgrsLSBefhNdgPf42YvpFcdcgMxRFlXf+c4IwWABGB8
1klkKkE7gzynXKpZLUxvHoZuK/pj8tujV+pDmJst+GflvjvgXWYzLJqEJeBAk+NI
kYqt6WyN11LXmMoIaYlu/7k0A2mcIxLkfetZ/Q+fOPk8a5Wkhd1auN/4Yz8WtC1B
4IWEBxB1BXwBxZ4i5czZ
=JsQI
-----END PGP SIGNATURE-----

--cnHioiE15R6i5nCBEE9ckvpPdopDjupdi--
