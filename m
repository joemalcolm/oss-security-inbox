Received: (qmail 3869 invoked by uid 550); 10 Dec 2025 12:51:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3798 invoked from network); 10 Dec 2025 12:51:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=nodmarc.schlittermann.de; s=2020-06-19; h=Content-Type:MIME-Version:
	Message-ID:Subject:To:From:Date:Cc:Content-Description:Content-ID:
	Content-Transfer-Encoding:In-Reply-To:References:Resent-Cc:Resent-To;
	bh=c/AwTwAc2WOH5rr5ixib9NEsiA770SI9kOzPDU8Szqo=; b=dtavRzSsKhJxoD3W0Q0q/7RRtk
	ux0TJqcyhv5utUj0w1dboK3bpxxw3kYcAOdqeQpqgydzyJ0sTHpt5Qc1MuvdNDv6C3+GPBq8g4+u7
	LSVNy1iEISRmBH7XgeCPXt46gGwQn6MLmNpNuDLM0BMvon8gYqO+vocAzlTWF8IxfBVbLTdgvP4oc
	OQjmlw1NoYfthkeiG1x9EiWsWK87pZmRTr2bR+HoMCeQTY4+E+nDKyZ6t7hiM1KrLllsRbk3YrjTL
	3xuLw7TbqeXn7ZStdPWO7U8unEQFXs02B3J8+/eOiIkUFT9T657aQDQHiu2XHRI4gLbqJf2VYhyEh
	nVghkauw==;
Date: Wed, 10 Dec 2025 13:51:13 +0100
From: Heiko Schlittermann <hs@nodmarc.schlittermann.de>
To: oss-security <oss-security@lists.openwall.com>
Message-ID: <aTlswbw7mu0DyFec@jumper.schlittermann.de>
Mail-Followup-To: oss-security <oss-security@lists.openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="YXxyv8kS8G0qSkSR"
Content-Disposition: inline
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
Subject: [oss-security] EXIM-Security-2025-12-09.1: Exim 4.99: Remote heap corruption

--YXxyv8kS8G0qSkSR
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear Exim users,

we got reported two possible (related) vulnerabilities in the
latest 4.99 release. From the original report:

,---
| In vulnerable configurations, a remote, unauthenticated attacker can
| achieve heap corruption. I was unable to develop an end-to-end exploit
| chain for remote code execution, but it may be possible with further
| work.
`---

We do not publish any further details yet, until the fix goes public.

While we do not support older versions, please note, that 4.98.1 is not
affected. Other versions might or might not be subject to the same
attack vector.

2025-11-22: we received a report to security@exim.org
2025-11-25: acknowledged the report to the reporter
2025-12-10: this notification

~2025-12-15: publish the fix via the distros repo (accessible for the distr=
o packagers)
~2025-12-18: publish the fix via the default repo (accessible for the publi=
c)

Once the fixes passed internal testing, we'll update the schedule and send
another notification about the coordinated release date(s) for distros and
the public.

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--=20
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -

--YXxyv8kS8G0qSkSR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE3ZjZI1nenjwmY/KRaX8O3WgJn28FAmk5bL8ACgkQaX8O3WgJ
n281VA/9G4J9qRlJ/jJAIoXuNOIlvYrKXX5sfRaz0NO1okTYB9KeY1V4pBkakoAO
mdYbFeXH/t97+if8OmrVN+jpbULyjgHsnadHn0SI9XU3jV3DNyYjsjLnmyg4yy8e
W+oQZu+0PH4/4XHM+d0eYHAugBpjZeVk+uZrJXhwFFab4pvv0RI3fysOAg4xELkS
9f73N5A1fMNv8lahU/GM91CT+uAgCaEebvY4sm+5TP4odp0IE3eXRN6eZI27CbZH
k483vecXGrvhBFbx1beojjRH58+oAtB1f9s8MR0BJj8V59OMeLv0ym6pomcZdocg
dfPvq32d1bb7aJbgoRuAFPct3KfeEh7mK6BxYZQ9HUjndtaue065VTtHORD7vpbh
lnvK1S0L5XQm3KLgfk3uk+HjknF1r24S7WWyYrjP7gbJCpr4RzxIWMXIU0sYyRP+
8a3v1DV3FwWN5kSw3xjVOTW9ScFP/68FzkM57whh9LwapGLiOqvhgWAd34DiNTfS
JvJIF/Y3loGaSIeoTlYVHZd4M+3i+vOKVR4czksjUE8izBtKueyw/IF3NQOyeE0f
hyO8mocZkgcb5BXEiK5pMUdhufv+Wsg2+7vzCkDEGYAJiiKdPpX/tzOQOn6Cw9/G
nMpl9uNAJIk/FPUehy5PMiYqvLIWw5c1cGRfAi0VcGcfcQXReZ0=
=8RPf
-----END PGP SIGNATURE-----

--YXxyv8kS8G0qSkSR--
