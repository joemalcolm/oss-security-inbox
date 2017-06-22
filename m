X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2400" "Wednesday" "21" "June" "2017" "20:26:05" "-0400" "Mike O'Connor" "mjo@dojo.mi.org" "<20170622002605.e4sfvdxi2hugl6o7@dojo.mi.org>" "56" "Re: [oss-security] Qualys Security Advisory - The Stack Clash" "^Date:" nil nil "6" "2017062200:26:05" "[oss-security] Qualys Security Advisory - The Stack Clash" (number mark "        mjo@dojo.mi. Jun 21   56/2400  " thread-indent "\"Re: [oss-security] Qualys Security Advisory - The Stack Clash\"\n") "<20170621212742.GA28766@grsecurity.net>" ("<20170619152843.GC7769@localhost.localdomain>" "<14558692.afnJ5aRU9J@wanheda>" "<20170621122526.GA32701@grsecurity.net>" "<20170621135727.GA12852@openwall.com>" "<20170621212742.GA28766@grsecurity.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14158 invoked by uid 550); 22 Jun 2017 11:46:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7829 invoked from network); 22 Jun 2017 00:26:37 -0000
X-PGP-Key-Fingerprint: 8F 85 89 E1 A2 FC EB D2  27 49 56 1E CC DF C9 C1
X-Organization: noitazinagrO-X
X-AS#: 26096
Message-ID: <20170622002605.e4sfvdxi2hugl6o7@dojo.mi.org>
References: <20170619152843.GC7769@localhost.localdomain>
 <14558692.afnJ5aRU9J@wanheda>
 <20170621122526.GA32701@grsecurity.net>
 <20170621135727.GA12852@openwall.com>
 <20170621212742.GA28766@grsecurity.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="jxtsxw3qh7j7ngze"
Content-Disposition: inline
In-Reply-To: <20170621212742.GA28766@grsecurity.net>
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.2.3 (angus.mystery.com [127.0.0.1]); Wed, 21 Jun 2017 20:26:23 -0400 (EDT)
Date: Wed, 21 Jun 2017 20:26:05 -0400
From: "Mike O'Connor" <mjo@dojo.mi.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - The Stack Clash
To: oss-security@lists.openwall.com

--jxtsxw3qh7j7ngze
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

:Still, if OpenBSD was able to resolve the issues necessary after=20
:notification without leaking full details to the public, shouldn't=20
:this have been possible for the other projects without an embargo,=20

Several open-source distros fixing the same flavor of issue in the
same timeframe might've raised suspicions in a way that one distro
alone wouldn't have.  Heck, I've tracked down embargoed security
issues just from what multiple closed source vendors documented in
their release notes.

:My take on the embargoing process (outside of what's already mentioned
:on https://grsecurity.net/an_ancient_kernel_hole_is_not_closed.php ):
:I've always been concerned by the fact that smaller distros seem to=20
:be barred from distros-list membership; it seems the arrangement=20
:lends itself too much to enabling the marketing of the larger=20
:companies and in fact perhaps even disincentivizing their investment=20
:in security as the embargo process enables them to skirt much of the=20
:public pain they'd otherwise have to experience (for in this=20
:instance what was a completely avoidable problem).  I get the practical
:reasons for the policy (increased leak risk, major distros often do
:the actual fixing work, etc) but from a level of principle it's always
:rubbed me the wrong way.

In the past, I've proposed that the embargo mailing list archives
themselves have an "embargo", after which they become public.  That
way, there's after-the-fact transparency, and it gives the folks who
care a good idea of what happened.  Is there anything sensitive at
this point in, say, the March 2017 linux-distros archives??=20=20=20

-Mike

--=20
 Michael J. O'Connor                                          mjo@dojo.mi.o=
rg
 =3D--=3D=3D--=3D=3D--=3D=3D--=3D=3D--=3D=3D--=3D=3D--=3D=3D--=3D=3D--=3D=
=3D--=3D=3D--=3D=3D--=3D=3D--=3D=3D--=3D=3D--=3D=3D--=3D=3D--=3D=3D--=3D=3D=
--=3D
"Well done is better than well said."                           -Ben Frankl=
in

--jxtsxw3qh7j7ngze
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQBVAwUBWUsOnZEu6kwgW799AQK+QgH7B1VlEx9fVTecuAILb/OOhux/juvMN2Td
npG++cKDfWNQfmIljjk5x1S9EFeEhDazh+MyKFP12xNqmW62SoiYXg==
=TCBL
-----END PGP SIGNATURE-----

--jxtsxw3qh7j7ngze--
