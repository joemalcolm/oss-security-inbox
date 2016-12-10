X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3193" "Saturday" "10" "December" "2016" "01:49:34" "+0100" "Mathieu Pasquet" "mathieui@mathieui.net" "<20161210004933.GB25012@Kelewan.lan>" "83" "Re: [oss-security] CVE Request: MCabber: remote attackers can modify the roster and intercept messages via a crafted roster-push IQ stanza" nil nil nil "12" "2016121000:49:34" "[oss-security] CVE Request: MCabber: remote attackers can modify the roster and intercept messages via a crafted roster-push IQ stanza" (number mark "U       mathieui@mat Dec 10   83/3193  " thread-indent "\"Re: [oss-security] CVE Request: MCabber: remote attackers can modify the roster and intercept messages via a crafted roster-push IQ stanza\"\n") "<20161209201906.ltauap7fydkc62f6@eldamar.local>" ("<20161209201906.ltauap7fydkc62f6@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28377 invoked by uid 550); 10 Dec 2016 01:10:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20023 invoked from network); 10 Dec 2016 00:49:58 -0000
X-Virus-Scanned: Debian amavisd-new at mfilter29-d.gandi.net
X-Originating-IP: 5.51.204.241
Date: Sat, 10 Dec 2016 01:49:34 +0100
From: Mathieu Pasquet <mathieui@mathieui.net>
To: oss-security@lists.openwall.com
Message-ID: <20161210004933.GB25012@Kelewan.lan>
References: <20161209201906.ltauap7fydkc62f6@eldamar.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="IS0zKkzwUGydFO0o"
Content-Disposition: inline
In-Reply-To: <20161209201906.ltauap7fydkc62f6@eldamar.local>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [oss-security] CVE Request: MCabber: remote attackers can modify
 the roster and intercept messages via a crafted roster-push IQ stanza

--IS0zKkzwUGydFO0o
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 09, 2016 at 09:19:06PM +0100, Salvatore Bonaccorso wrote:
> Hi
>=20
> Sam Whited discovered that MCabber versions 1.0.3 and before, was
> vulnerable to an attack identical to Gajim's CVE-2015-8688 [1] which
> can lead to a malicious actor MITMing a conversation, or adding
> themselves as an entity on a third parties roster (thereby granting
> themselves the associated priviledges such as observing when the user
> is online).
>=20
> The issue was fixed in the 1.0.4 release, with patch found at [2].
>=20
> Can a CVE be assigned for this issue?
>=20
> Regards,
> Salvatore
>=20
>  [1] https://gultsch.de/gajim_roster_push_and_message_interception.html
>  [2] https://bitbucket.org/McKael/mcabber-crew/commits/6e1ead98930d7dd0a5=
20ad17c720ae4908429033/raw

>  [3] https://bugs.debian.org/845258

Hello,

I would like to mention that when Sam mentioned it to the MCabber team,
I investigated the slixmpp [1] codebase to see if we we were equally
vulnerable. It appeared that the default roster mechanism already has a
check in place, but it creates a general event before then, which could
be received by another handler to re-implement a Roster differently
(like we do in poezio [2]).

This specific bug has been corrected in [3] and [4], which are available
in slixmpp 1.2.3 (all previous versions are affected).

I=E2=80=99m not sure if this specific part warrants a CVE, as it is quite a
specific case (but people could send arbitrary roster pushes to poezio
before then), but I thought it would be good to mention. If it is
considered a real security flaw, I have to say that SleekXMPP [5] [6] is
also affected, and I will patch it if needed.

Regards,
Mathieu

 [1] https://github.com/poezio/slixmpp
 [2] https://github.com/poezio/poezio / https://poez.io
 [3] https://git.louiz.org/slixmpp/commit/?id=3Dffdb6ffd69522bb14760eca1965=
11ac69a158831
 [4] https://git.louiz.org/slixmpp/commit/?id=3Dffd9436e5cca9f92ed11683173a=
696972da2360b
 [5] https://github.com/fritzy/SleekXMPP
 [5] https://github.com/fritzy/SleekXMPP/blob/develop/sleekxmpp/clientxmpp.=
py#L112-L115

--=20
Mathieu Pasquet (mathieui)

--IS0zKkzwUGydFO0o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEqNX3CaXe9Dnz12IoxZ+Ezu/WFuMFAlhLURkACgkQxZ+Ezu/W
FuMG1g/+Omt58zoIM/WIoLFtUjjuVqoOx1oIywxIz0dlHNCO7gozcVlWIzbJe1fO
oeGfUiehLHcwuWjF8a+I7VoLf8N4o7v5ITmSF+wa2LHOKq8RvUWs82AMo7H+iHpx
5snibBuZSVuM8Ysp14Ex/G3ni9ZoaqcHBKF6UrfNuTntCwID8Cl50qKrdOqXJABS
Ug5rvp7en5sN4YfO2Olk2zR799TiWSpPoHGswvzQSp9R1uyelqOTE1wi4dP7sQx8
lnugrfKRoAAPfDojoLH34jnRZS6gR2MgvSgwl8LRv92DkgFBS8yUhFZ8hugz1hPh
B3GnuVKCi+bMTuqTlMtn91Y+mPoApd3j2FZaaeHcQTX/VKRiMZdjd7Eb3825Mo/n
YhHD9ST6+fOkO2vvprLeVaXSe8ZG93SaVNGSrB5wjZzKMqgYf5Miqm1caIDAtQdn
jIDwKUgwqt9Vb0MaWi+gx9jjw3vypCaQf9BbxcbiPt7dQQK0Pv8WqgUn/y2QYUwq
hExJ+DLnASOiOnDOvcbkYG/dUAaNWhVlXSSAKDYvQYh5FTvDEjA2UxFR54isuNPF
seclvwM4qLNEWUgoxMgvnrwka+p32FjtSaqqngk0ZWN8HUlAd9qB6Gn2EgZ4OeaT
+uf9funazCIc81k7PgHHIy9Hw+37d2wMFfUrGmz84wqwFKPrluU=
=vUDN
-----END PGP SIGNATURE-----

--IS0zKkzwUGydFO0o--
