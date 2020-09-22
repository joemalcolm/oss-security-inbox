X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4120" "Tuesday" "22" "September" "2020" "22:34:23" "+0200" "Peter van Dijk" "peter.van.dijk@powerdns.com" nil "96" nil "^Date:" nil nil "9" nil nil (number mark "        peter.van.di Sep 22   96/4120  " thread-indent "\"[oss-security] [Fwd: [Pdns-announce] security advisories for Authoritative 4.3.1, 4.2.3, 4.1.14]\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [Fwd: [Pdns-announce] security advisories for Authoritative 4.3.1, 4.2.3, 4.1.14]" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24515 invoked by uid 550); 22 Sep 2020 21:57:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8072 invoked from network); 22 Sep 2020 20:34:36 -0000
Message-ID: <9b808b6d273b88bb2db281f8bea6b6920369242f.camel@powerdns.com>
References: <3695ddede72db895177656f1cf10c93dc1df2142.camel@powerdns.com>
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-6UEqWHE//O8YVP+hOxz5"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Date: Tue, 22 Sep 2020 22:34:23 +0200
From: Peter van Dijk <peter.van.dijk@powerdns.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [Fwd: [Pdns-announce] security advisories for Authoritative 4.3.1,
 4.2.3, 4.1.14]
To: oss-security@lists.openwall.com

--=-6UEqWHE//O8YVP+hOxz5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

-------- Forwarded Message --------
From: Peter van Dijk via Pdns-announce <
pdns-announce@mailman.powerdns.com>
Reply-To: Peter van Dijk <peter.van.dijk@powerdns.com>
To: pdns-announce@mailman.powerdns.com, pdns-dev@mailman.powerdns.com,=20
pdns-users@mailman.powerdns.com
Subject: [Pdns-announce] security advisories for Authoritative 4.3.1,=20
4.2.3, 4.1.14
Date: Tue, 22 Sep 2020 21:48:04 +0200

Hello,

Today we have released PowerDNS Authoritative Server versions 4.3.1, 4.2.3 =
and 4.1.14, containing a fix for PowerDNS Security Advisory 2020-05 [1].

Additionally, we are publishing PowerDNS Security Advisory 2020-06 [2] toda=
y (=E2=80=98Various issues have been found in our GSS-TSIG support, where a=
n unauthorized attacker could cause crashes, possibly leak uninitialised me=
mory, and possibly execute arbitrary code.=E2=80=99). Our GSS-TSIG support =
was never shipped in any packages by us or, to our knowledge, any other dis=
tributions. The GSS-TSIG code will be gone in version 4.4.0. We=E2=80=99ve =
chosen to leave the code intact for older versions, so that users that do r=
ely on it today can keep doing so, keeping in mind the risks detailed in Ad=
visory 2020-06.

Regarding 2020-05: An issue has been found in PowerDNS Authoritative Server=
 where an authorized user with the ability to insert crafted records into a=
 zone might be able to leak the content of uninitialized memory. Such a use=
r could be a customer inserting data via a control panel, or somebody with =
access to the REST API. Crafted records cannot be inserted via AXFR. This i=
ssue is resolved in the versions mentioned above. (4.1.14 changelog [3], 4.=
2.3 changelog [4])

Version 4.3.2 also contains various other bug fixes and improvements, pleas=
e see the changelog [5] for all details.

Tarballs and signatures are available at https://downloads.powerdns.com/rel=
eases/

Packages for various Linux distributions are available from our repository =
at https://repo.powerdns.com/

4.0 and older releases are EOL, refer to the documentation for details abou=
t our release cycles.

Please send us all feedback and issues you might have via the mailing list =
or our IRC channel, or in case of a bug, via GitHub.

1: https://docs.powerdns.com/authoritative/security-advisories/powerdns-adv=
isory-2020-05.html
2: https://docs.powerdns.com/authoritative/security-advisories/powerdns-adv=
isory-2020-06.html
3: https://doc.powerdns.com/authoritative/changelog/4.1.html#change-4.1.14
4: https://doc.powerdns.com/authoritative/changelog/4.2.html#change-4.2.3
5: https://doc.powerdns.com/authoritative/changelog/4.2.html#change-4.3.1

Kind regards,
--=20
Peter van Dijk
PowerDNS.COM BV - https://www.powerdns.com/
_______________________________________________
Pdns-announce mailing list
Pdns-announce@mailman.powerdns.com
https://mailman.powerdns.com/mailman/listinfo/pdns-announce


--=-6UEqWHE//O8YVP+hOxz5
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iQJQBAABCgA6FiEE+64DI4IcdwalyhUb3PUT+n7tGfMFAl9qX88cHHBldGVyLnZh
bi5kaWprQHBvd2VyZG5zLmNvbQAKCRDc9RP6fu0Z88SlEADUhwLQP++EyCr8SRNL
s0e8a+/wm0LExtZDrPXJ5NW3MLtoWPkLI26N6JXoUtdivEecxPc7aQgUw5UM8Bnb
J2PDag2nEgAC0QXan6liuq2grR6Kh+0h45msipZvTgZ9lIhtYPwCUDpXMIMEEq6k
gCLIHP41b1/R6aUGywiw8m5klmt/gkZUZPZg4JBcVr05lDk7Ez7JTD4clXblEpeI
Brz4DMXwAmzGcJJraCa3MsWB3cYJRYyg0d941/7d6aXk3awRZWHA21ofi2zClhS6
0+sp9rNu7TgGAX88xpqVNdvn8jLOrAFvSt+h0f7mPiYO587jLlYiWX7sSOxMEXGB
ttsjOKgvGQwDRYPR3L0r0R0VDrx1/9AUu/wJEV9k1AdGkPKdyWgt2k+/LFKqGN05
OsMUNsSkdXzhUJ24qUt2wbnXcXChf7sJsmDmnQIhpa2KJTWf8Gt/yrE+0OrqDjv6
rvZekT869BJXHRd0G05vxLog0VEuS7MMJn6BxzkkgGqBJkBwg9s3Ara/eKnl+OZ9
U19ektkF/M1FlYB+cJBS2s0xrhMjHNRE8FneOZGgpaj7FRQ70sGn7mQbgeTDJ6dD
DVzu2VruVS50/cM9tZMGlfPsv7qRwhdoXkg+pEA/W/JD7aNHRjQrQjJbvtdS9yy9
/gI++uPeCt/qA1tT2YzDld72Ig==
=s5Ro
-----END PGP SIGNATURE-----

--=-6UEqWHE//O8YVP+hOxz5--

