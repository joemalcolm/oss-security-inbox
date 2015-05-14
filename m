X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3283" "Thursday" "14" "May" "2015" "10:21:10" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<5554CB76.3070509@redhat.com>" "77" "[oss-security] Potential issue in NTP -A option" nil nil nil "5" "2015051416:21:10" "[oss-security] Potential issue in NTP -A option" (number mark "        kseifried@re May 14   77/3283  " thread-indent "\"[oss-security] Potential issue in NTP -A option\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24210 invoked by uid 550); 14 May 2015 16:21:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24189 invoked from network); 14 May 2015 16:21:26 -0000
Message-ID: <5554CB76.3070509@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="m19mC0SEoNTkCCLwBWBiPNT0AKXGqjAnk"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Date: Thu, 14 May 2015 10:21:10 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Potential issue in NTP -A option
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
        Assign a CVE Identifier <cve-assign@mitre.org>,
        Harlan Stenn <stenn@ntp.org>

--m19mC0SEoNTkCCLwBWBiPNT0AKXGqjAnk
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Miroslav Lichvar noticed that the -A option (disable auth) in ntpd:

However the documentation seems to conflict slightly, in man ntpdc we have:

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
disable [ flag ] [ ... ]
These commands operate in the same way as the enable and disable
configuration file commands of ntpd. Following is a description of the
flags. Note that only the auth, bclient, monitor, pll, pps and stats
flags can be set by ntpdc; the pll_kernel and pps_kernel flags are
read-only.

auth
Enables the server to synchronize with unconfigured peers only if the
peer has been correctly authenticated using a trusted key and key
identifier. The default for this flag is enable.
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

and in man ntpd we have:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
       -A      Do  not require cryptographic authentication for
broadcast client, multicast client and symmetric passive associations.
This is the same operation as the dis=E2=80=90
               able auth command and almost never a good idea.
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

In testing Miroslav found that -A disables all authentication checks
including those used for mode 7 control messages (e.g. the stuff ntpdc
sends).

I contacted Harlan to see if he could shed any light on this, he agrees
the docs should be updated, and both himself and I are not 100% sure
about assigning a CVE here. I can see arguments going both ways, but
ultimately I think it's enough of a gray area that it's probably best to
let Mitre weight in. The main argument against would be "-A disables
auth, don't do that" and the main argument for would be "the docs make
it sound semi safe, so like an advertised security feature that doesn't
work, that qualifies it for a CVE".

This can also be patched in source to force auth to be used, but then,
if -A is truly intended to disable all auth that would break that
feature (which is arguably dangerous, but also useful, much like debug
and information disclosure issues).

--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993


--m19mC0SEoNTkCCLwBWBiPNT0AKXGqjAnk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJVVMt2AAoJEBYNRVNeJnmTB3EP/3lxYqBnEuoqgmvXKngfTmvF
VcOZzBTm+unNZTdH6te3r16HrN9gxMdhJd8QncR80be+nV1pgjms2a17Wgoq/ZLC
At/NoyrOUZRV53HaTIkygTmJqAPWc6NP3J3ca9UCAGAwqjuV9gpESzAhzV7335Fj
CaWC9dVctjWTZVe0/ooVkUCwsCgxT8ikO7JTtlhfb3ZaWqBWXr/ivtuGCD/igXPV
EWKdCxTw9mmviFTOSoY9M3scJjuw2/SbRGJTtvmt918txy1MnOTOJQnAJxlGuK3H
j3xS3VJlS+a/kGc2cgDkeCrtc697uTcCdv+ccEpxlTZn62QRpmJAQ8rOkgeT9+Uw
p4isqPZtYZEsn/fxtxHH+9xxkk7m3t/zoMR6wW2E/TehwOtNNQ5001/o1KPEU76Q
5fvZQb8ZH6dwfOcU9UfxeMH5k4EYE6hS/CkWlJXr3K9nlrzmYNIFc0buKkaov2Z8
orqtEQiSHxV+6IOWlR1srUvtEI94vB3Iu0TittK0GzxPBs0i8IqLibNmZizE0nAV
mnPI2HgMd2Qw39vst3j/pig8HJ7YhHCG6+/b4bgpVXvjlArKAPpjNNSiPx8hxNd1
fzElNSbz9BnTK3JcDmxNJOwQGbs1bHsjxWbkLrXh687VQm8pW40UiRmBNwzwpRTL
U+AZWwbcuLYRWe8NmaIq
=Sc3J
-----END PGP SIGNATURE-----

--m19mC0SEoNTkCCLwBWBiPNT0AKXGqjAnk--
