Received: (qmail 26468 invoked by uid 550); 1 Oct 2023 16:49:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26450 invoked from network); 1 Oct 2023 16:49:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=nodmarc.schlittermann.de; s=2020-06-19; h=In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Cc:
	Content-Description:Content-ID:Content-Transfer-Encoding:Resent-Cc:Resent-To;
	bh=RDP3gUw6hpjmFU2KgcW+J/eu1m/jt8yyEBkyNFyNh/c=; b=fG0UoVJwWHlio83qbh06h7As0W
	k6WDj+T6umAfHMK/rzvefpP2eEqf2Pud077AsEh0uJwwtabe8J2XYjqWpC3DAUBbzflxG0nFb9uEx
	EAdvbgPxEvWraaxN7LbjEEgx/P7tcuAPhzZzt1oug8l9036W6lm38wdT5TSweoiTmNAVYxb2D5oU5
	f9/aYkSR8uYYkYURJHJWfMIGBn57gf8YVjNkLO9ztb0RWXdwdWODoGh9aCt9eot5qYQcOM5C4+43O
	EeA6cuez0dGjrqTSWxgscJqyn5CQBDNZtvjb3DOGX81AI409RwjvvbpbI47G6SP+UbHb4l1Y+bSYo
	fxXlb1dw==;
Date: Sun, 1 Oct 2023 18:49:06 +0200
From: Heiko Schlittermann <hs@nodmarc.schlittermann.de>
To: oss-security@lists.openwall.com
Message-ID: <ZRmjAky/SBs4aCIw@jumper.schlittermann.de>
Mail-Followup-To: oss-security@lists.openwall.com
References: <7b2e3fb3afc05aa39864e62b0c87a631b746f5c7.camel@runout.at>
 <ZRb180+B34Wmg1IM@jumper.schlittermann.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="QTkO3LhuYLnK6yOJ"
Content-Disposition: inline
In-Reply-To: <ZRb180+B34Wmg1IM@jumper.schlittermann.de>
Organization: schlittermann -- internet & unix support
X-Face: =y#&-VlCH8uT|8#-#JE_^c<:+qPbYxFD`}8`m)xjyA$93tpwm-vKsa(V,0?906(2VIVNQbU
 QzD%zhE+~-AA?\v-v.HY6]ebO4_$vY`l|||Q!EZT5*Xx/>Fj{8E_a.;;#<4S$>&T%n5()2Yt=R5FSC
 y:Na&@T{Rf`kPq^'ffPFA%`mP~>%-LU$d*]]{-%>j={&MsMND.">]H)&#AoSI~(U8Jk;v*;,Pf+l85
 X?H&`
X-Telegram: @HeikoSchlittermann
X-Threema: T5RPWMSS
X-Signal: +49.172.7909055
X-Phone: +49.172.7909055
X-SMS: +49.172.7909055
X-GPG-Fingerprint: E5CA 331D 44AB 8E4C 806F  DBEE 2610 1B62 F693 76CE
X-GPG-Key-ID: F69376CE
Subject: Re: [oss-security] Exim4 MTA CVEs assigned from ZDI

--QTkO3LhuYLnK6yOJ
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear Exim users,

thank you for your patience.  The following tries to provide an abstract
about the topics that arose during the recent hours.

Summary
-------
Six 0day exploits were filed against Exim.

None of these issues is related to transport security (TLS) being
on or off.

* 3 of them are related to SPA/NTLM, and EXTERNAL auth. If you do not use
  SPA/NTLM, or EXTERNAL authentication, you're not affected.
  These issues are fixed.

* One issue is related to data received from a proxy-protocol proxy. If
  you do not use a proxy in front of Exim, you're not affected. If your
  proxy is trustworthy, you're not affected. We're working on a fix.

* One is related to libspf2. If you do not use the `spf` lookup type
  or the `spf` ACL condition, you are not affected.

* The last one is related to DNS lookups. If you use a trustworthy
  resolver (which does validation of the data it receives), you're
  not affected. We're working on a fix.

Schedule
--------
Currently we're in contact with the major distros and aim to release
those fixes that are available as soon as possible. (Aiming Monday, Oct
2nd.) The below mentioned commits are currently available in a
protected repo to a restricted set of users only.

More Details
------------

ZDI-23-1468 | ZDI-CAN-17433 | CVE-2023-42114 | Exim bug 3001
------------------------------------------------------------
Subject:    NTLM Challenge Out-Of-Bounds Read
CVSS Score: 3.7
Mitigation: Do not use SPA (NTLM) authentication
Subsystem:  SPA auth
Fixed:      04107e98d, 4.96.1, 4.97

ZDI-23-1469 | ZDI-CAN-17434 | CVE-2023-42115 | Exim bug 2999
------------------------------------------------------------
Subject:    AUTH Out-Of-Bounds Write
CVSS Score: 9.8
Mitigation: Do not offer EXTERNAL authentication.
Subsystem:  EXTERNAL auth
Fixed:      7bb5bc2c6, 4.96.1, 4.97

ZDI-23-1470 | ZDI-CAN-17515 | CVE-2023-42116 | Exim bug 3000
------------------------------------------------------------
Subject:    SMTP Challenge Stack-based Buffer Overflow
CVSS Score: 8.1
Mitigation: Do not use SPA (NTLM) authentication
Subsystem:  SPA auth
Fixed:      e17b8b0f1, 4.96.1, 4.97

ZDI-23-1471 | ZDI-CAN-17554 | CVE-2023-42117 | Exim Bug 3031
-------------------------------------------------------------
Subject:    Improper Neutralization of Special Elements
CVSS Score: 8.1
Mitigation: Do not use Exim behind an untrusted proxy-protocol proxy
Subsystem:  proxy protocol (not socks!)
Fix:        not yet

ZDI-23-1472 | ZDI-CAN-17578 | CVE-2023-42118 | Exim Bug 3032
------------------------------------------------------------
Subject:    libspf2 Integer Underflow
CVSS Score: 7.5
Mitigation: Do not use the `spf` condition in your ACL
Subsystem:  spf
Remark:     It is debatable if this should be filed against
            libspf2.

ZDI-23-1473 | ZDI-CAN-17643 | CVE-2023-42219 | Exim Bug 3033
------------------------------------------------------------
Subject:    dnsdb Out-Of-Bounds Read
CVSS Score: 3.1
Mitigation: Use a trustworthy DNS resolver which is able to
            validate the data according to the DNS record types.
Subsystem:  dns lookups
Fix:        not yet
Remark:     It is still under consideration.

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -

--QTkO3LhuYLnK6yOJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEE0L/WueylaUpvFJ3Or0zGdqa2wUIFAmUZowEACgkQr0zGdqa2
wULriAf+M0A+BFDuPLiWxh0fT2c68s4dvO4GzSYSC90aZ6vAIAok7xA9ch0PbNEs
eNwvcaX6jhtoeGZlZbXU9RgGGxYE1a1j8rdeuCvdRt6KkJMk4din+eKwDA7zNe4T
t425qb0vBHDVkk4gyzKXNhL3AhIzREsINxgZPlYuh6Za2G93MUcMRtHYGYPA/qxV
gb/mhNMi2upvMnEZYo+28Mnmkx0RSOSo1+uQcSbuQiJMfMTyXAE2TOLxwQJ9Eezk
X8kCtxhE40DtxO5DSYRbVlvmryPMv3rpbHweND8lBy4g2ZtoQ1iXIJozxax1Oxy6
kL/xDcHOVjyoJ7d2Z1yXbyk0L+4iQw==
=E2nT
-----END PGP SIGNATURE-----

--QTkO3LhuYLnK6yOJ--
