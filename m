X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2891" "Thursday" "7" "December" "2017" "15:15:06" "+0000" "Jeremy Stanley" "fungi@yuggoth.org" "<20171207151506.GB13067@yuggoth.org>" "64" "Re: [oss-security] Recommendations GnuPG-2 replacement" "^Date:" nil nil "12" "2017120715:15:06" "[oss-security] Recommendations GnuPG-2 replacement" (number mark "        fungi@yuggot Dec  7   64/2891  " thread-indent "\"Re: [oss-security] Recommendations GnuPG-2 replacement\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16064 invoked by uid 550); 7 Dec 2017 15:15:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16046 invoked from network); 7 Dec 2017 15:15:19 -0000
Message-ID: <20171207151506.GB13067@yuggoth.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jho1yZJdad60DJr+"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Date: Thu, 7 Dec 2017 15:15:06 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Recommendations GnuPG-2 replacement
To: oss-security@lists.openwall.com

--jho1yZJdad60DJr+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2017-12-07 06:32:11 +0000 (+0000), halfdog wrote:
[...]
> For all steps regarding system startup, I switched to LUKS only,
> using detached headers for special features. For release signing,
> mail sign/encrypt, a good light-weight solution is still needed.
[...]

I continue to use gpg2 in a release signing context, but strip
symmetrical encryption from the private signing subkey with a custom
keyring due to it being used by a headless/automated CI system which
runs on virtual machines that get deleted as soon as the signature
is generated thus leaving keys in memory isn't a concern there (and
the master private key _is_ encrypted but only ever used to create
signing subkeys and never goes anywhere near the CI system).

Sounds like my use case is likely not your use case, so perhaps you
should look at the signify utility OpenBSD developed for this
purpose instead? It's included in Debian since Stretch under the
package name "signify-openbsd" and seems to work well; I've used it
semi-regularly as I tend to do a lot of cross-platform things in a
mixed Debian/OpenBSD environment.

For E-mail I'll confess I still use mutt's (well, neomutt's at
least) GnuPG integration, which has been working okay for me with
gpg2 on Debian. I haven't seen a lot of good OpenPGP implementations
besides GnuPG with at least equal levels of PGP/MIME integration
there. The obvious alternative is switching to S/MIME but you've
likely already considered that and the never-ending TTP vs WoT
debate, not to mention Debian as a community is fairly invested in
OpenPGP keys as a means of identifying and authenticating its
developers/maintainers.
--=20
Jeremy Stanley

--jho1yZJdad60DJr+
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQJ8BAEBCgBmBQJaKVr6XxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25zLm9w
ZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQ5N0FFNDk2RkMwMkRFQzlGQzM1M0IyRTc0
OEY5OTYxMTQzNDk1ODI5AAoJEEj5lhFDSVgpOLEQAIA3wBoQ2/EoTAwPFQ/IHJYZ
pFkHssrtZf24HKlfxX4GTmoJYQBjIhkc9waxyQZz98e62t3WhWsgYAe5ZT/1R31c
FB99eFm0qm7dQMhuz0D7LDLRDAJQzy+R6NKznJ+lKZXLSEfBPgJYSjSC1OgCBsC5
YGQ2z5jGuoSgPp3goHWn+2hwMQgabdbtv01BAKgOJkaQPEGA3py5N5yez2X/RHlP
1mXRkhlO6H+peRUpTvXdrfLZy3o1c7N+O1XD3bRX+Ci90PDGjp1Az8H5uwtIPyiw
358nslQmzoqrJy4sy/yenab+sj+ZbmK057UkTI5YIEzXoptg6Nd4l+HnFYOv3Vye
1XbhyLJqHoxUHU+PFJucGo2CgTvNrYTwfJmN6lJ/uEqQ22ArF+is29OwdzhG7xz8
biWaKLguXwYPZt5ZYaV/EoSuv+WlokfaJf06Nlh71v4nklWh4Veyd0Q0gR5y2Rj3
7g/kIQ7uKm7R+CI/vvHOJCnMD/MYez4FnJYu0hfxhkacjgL6zFKRquBkPvMUzz5J
HyNpDlzihVZYinHQ4rZAWLPAXtb0X36SheP86rBMxxZesjqnzn4aySMbRSP18GvX
hrdp6I0X0dPaTnc6DipgGyuGir855fendk2ncdpHxsvykCwhC+fiX6B3fs2Gf2/G
wZS8sI3wLOSNKQQiQ/rU
=O50F
-----END PGP SIGNATURE-----

--jho1yZJdad60DJr+--
