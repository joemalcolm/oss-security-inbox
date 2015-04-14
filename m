X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1667" "Tuesday" "14" "April" "2015" "21:24:19" "+0100" "Ben Hutchings" "ben@decadent.org.uk" "<1429043059.3211.58.camel@decadent.org.uk>" "47" "[oss-security] TCP Fast Open local DoS in some Linux stable branches" nil nil nil "4" "2015041420:24:19" "[oss-security] TCP Fast Open local DoS in some Linux stable branches" (number mark "        ben@decadent Apr 14   47/1667  " thread-indent "\"[oss-security] TCP Fast Open local DoS in some Linux stable branches\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3339 invoked by uid 550); 14 Apr 2015 20:30:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30099 invoked from network); 14 Apr 2015 20:24:41 -0000
Message-ID: <1429043059.3211.58.camel@decadent.org.uk>
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-MWPrnU1FmI+Zjw7thT5L"
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 192.168.4.249
X-SA-Exim-Mail-From: ben@decadent.org.uk
X-SA-Exim-Scanned: No (on shadbolt.decadent.org.uk); SAEximRunCond expanded to false
Cc: 782515@bugs.debian.org
Date: Tue, 14 Apr 2015 21:24:19 +0100
From: Ben Hutchings <ben@decadent.org.uk>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] TCP Fast Open local DoS in some Linux stable branches
To: oss-security <oss-security@lists.openwall.com>

--=-MWPrnU1FmI+Zjw7thT5L
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

There is a local DoS triggered by use of the TCP Fast Open option,
specific to Linux stable branches, as a result of an incompletely
backported bug fix:

https://bugs.debian.org/782515
http://thread.gmane.org/gmane.linux.network/359588

The 3.16.7-ckt stable branch is definitely affected, and I believe but
haven't tested that the 3.10, 3.12, 3.13.11-ckt and 3.14 branches are
also affected.

Please assign a CVE ID for this.

Ben.

--=20
Ben Hutchings
Editing code like this is akin to sticking plasters on the bleeding stump
of a severed limb. - me, 29 June 1999

--=-MWPrnU1FmI+Zjw7thT5L
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIVAwUAVS13d+e/yOyVhhEJAQq54RAAzlLm8l7LtFuqym0O4a80b0bpn0MDozV/
Nacu1clcpmBlz89cQ0hgsrDFZJV+pa5HWzRxKSnlcgUc1HjZjpag7q573bnOyRGx
k4c9UE9S+b8bWEbBLNxzY7gfeid2wu6MDxdyjDN4ujbaRrgJQNlkjBCaK4cAMuTi
fIre6pDK/AQA3n17L9uWh1OuvHOsThe5/8Nn+0NabVB3eyjWga6LbFrWQLIV5RNv
tKDAAj7O1Tc7r04i+ZTpdZq4Abm/jsPWwCFuYrIRwDyuBYLIb5Xv8jkmn6kjFEGQ
s03Yfj0aqf923VGyJxMBxCRpHL8dGlsPXrLcHjfRhgO0xqKjdoovzySFhqti0OnN
aO0LHhZ1Rd8MVNGp0EImlS5p7Kc1pUMOonk13UrbcyhtI3qwJcBT0+k7I3kxqNCz
FGmybBaUX6Ayf0WoksWNRIFrVJgZQwj1YT0AouNBzaxm2tvEY9BoJVNp0UMuhhSY
k363SYys86FcSSm/dQcxCQskXub+yf50d4yv/pZ8+/+GgqZpUqMgC0a5XlXccQ7l
9wO4JJE0l9TU3HdGTh/jUzcZqncg7+3JmCkd0K8V0dNuXFEa3aYpymhfTl7BdHV4
r5m73RIrNYSU1DjIvQ52vOiItK6OHC1pneu1kFG9DoTWh9VKRWhVAqIF36uc8I97
L4NUc+/9OxI=
=iua7
-----END PGP SIGNATURE-----

--=-MWPrnU1FmI+Zjw7thT5L--
