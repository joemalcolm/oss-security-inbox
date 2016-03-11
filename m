X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2079" "Friday" "11" "March" "2016" "11:49:15" "+0800" "Paul Wise" "pabs3@bonedaddy.net" "<1457668155.3681.17.camel@bonedaddy.net>" "57" "[oss-security] debbugs for cve-assign@mitre.org?" nil nil nil "3" "2016031103:49:15" "[oss-security] debbugs for cve-assign@mitre.org?" (number mark "U       pabs3@boneda Mar 11   57/2079  " thread-indent "\"[oss-security] debbugs for cve-assign@mitre.org?\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16053 invoked by uid 550); 11 Mar 2016 03:49:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16030 invoked from network); 11 Mar 2016 03:49:33 -0000
Message-ID: <1457668155.3681.17.camel@bonedaddy.net>
From: Paul Wise <pabs3@bonedaddy.net>
To: oss-security <oss-security@lists.openwall.com>, cve <cve@mitre.org>
Date: Fri, 11 Mar 2016 11:49:15 +0800
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-qUBR4mlhFt/NQn29YGaj"
X-Mailer: Evolution 3.18.5.1-1 
Mime-Version: 1.0
Subject: [oss-security] debbugs for cve-assign@mitre.org?

--=-qUBR4mlhFt/NQn29YGaj
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I would like to suggest using debbugs for=C2=A0cve-assign@mitre.org.

debbugs is based on email so it is the lowest friction for researchers
and doesn't change their workflow except they now get an immediate CVE
after sending a detailed report to the submission address.

The Debian project doesn't have much of a problem with spam other than
spammers occasionally harvesting bug email addresses and replying to
them. This could be mitigated by not putting bug number email addresses
on the bug reports. Debian does that for transparency though. Spammers
haven't learnt to file bug reports yet though.

One thing that would need adding is support for private bugs and
authenticated commands to change bugs between public and private.

One other thing that would need adding is some support for the CVE ID
syntax. Nice URLs could be provided by mod_rewrite.

debbugs is also used by the GNU project.

--=20
bye,
pabs

http://bonedaddy.net/pabs3/


--=-qUBR4mlhFt/NQn29YGaj
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIcBAABCgAGBQJW4kA7AAoJEDEWul6f+mmjvK4QAI7nvcjR1qP8R5F9B2llN28Q
HSvOHGR+ZKc2GdvVuK81aIKHxgaTd/SAHQ2ui5vAQC0oVnY1k4ZSUbAnfFRHRRnX
Sl6QG+Gx/AQ9u9MPOaTGiAwy1xuJX9MJpsKaFsjMJOhsXC4xfCqAsEs0xhr+EEwF
NMR4jW5BtKrK1fq6i7+0YQMTCx3A+dqOp8d/YM29asxxBIBrs49fnSULDo5SXmp2
S65/HBVmvEH7FaHrYaolcjcv8RLGs+Ffe0361hcFDQu67TSDCbdfwqfiCAmwgwTv
cGKG6eWF2XkTMn1hkhdSMA51wwj8kB15pD1Qpe5Q97IpGqAaoQDjO89U49i6ialP
R7BrlazQpY700oks8ZbjxPSxjpMNGMusChxb4cE2ObMRHMdZXZjsS74HRmYCWiPb
sprnsLG1WG63h1x/tnU8KXxgJxoQVmc36WOjRBCsEHsHurM9VHHHgNTY2PJT0sXr
VnDmuamP7SsJ2+bjuq/mj60s9gLqoFsZQ/Pr+3BQ/f3XB61Zeyp/XqGYkq9IMlZy
NEikh3zmRcrBTuh46T623vpO7vmRRerBfiNZuITiz8CNHC/Gc1Z5BZmPIwfk5E4o
+AmC7lAABj6iMd7O9w0gl3x2GawtaY89o/E1VSwuiNbZE9D+q9y1waWH3gPmfrjj
WQO9i43nCDfD7JwqV9cR
=OWcm
-----END PGP SIGNATURE-----

--=-qUBR4mlhFt/NQn29YGaj--

