Received: (qmail 14328 invoked by uid 550); 26 May 2022 17:04:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14306 invoked from network); 26 May 2022 17:04:45 -0000
Date: Thu, 26 May 2022 17:04:32 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <20220526170432.m2o2srztnidk7jyw@yuggoth.org>
References: <trinity-5f3c0fdf-d83f-422e-9a05-c4ead66e42e1-1653077676864@3c-app-gmx-bap52>
 <20220521154759.GA15268@openwall.com>
 <trinity-4c518dcc-751b-4893-82dc-b2f80734eb9d-1653430844824@3c-app-gmx-bap13>
 <20220524232155.GA2264@openwall.com>
 <trinity-3f5f7066-5ba5-45cb-b229-a2207e9fe209-1653583477988@3c-app-gmx-bap49>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nzj53if3kz67ipm2"
Content-Disposition: inline
In-Reply-To: <trinity-3f5f7066-5ba5-45cb-b229-a2207e9fe209-1653583477988@3c-app-gmx-bap49>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: Re: [oss-security] CVE-2022-1729: race condition in Linux perf
 subsystem leads to local privilege escalation

--nzj53if3kz67ipm2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2022-05-26 18:44:38 +0200 (+0200), Norbert Slusarek wrote:
[...]
> Overall, as a researcher I would prefer having a way just to
> inform distros of a bug, *without* being subject to these
> requirements.

Problem is, at least some of the distribution representatives don't
want to be privy to indefinitely secret information like exploits,
as that's also a liability for them. They're willing to tolerate it
for a brief period, but don't wish to be responsible for keeping
your secret forever.
--=20
Jeremy Stanley

--nzj53if3kz67ipm2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmKPsxpfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCmcQw/8DipAR1C5MsHm3TFO0aIKbymZ31j5lXNyy7CGbb/8qPNAPvgtdA3kwoXR
0jRKWPVGjdPwblZ/6u5gAPxJoN054MhsRDfxMY1RLW8gnAh4c/j0Z01vCBaCqG5R
hUbytiTw1xP6lDTvPNhHzX3sraIxwmz9SWXujQ+GPf3JgOT+OYrMguU/1m3vwzCQ
jsukjKv6L03THjNk0bA/2trsfRaN3y0QkkXc/Pnnc7ZgOcxhaZfSm3LXx8L4I1qu
nYgze9T1MofLbfyCIeyCjBzkFDRcbw5bso0Dx7mJFnRgyzESRJfs3HqVA3FVV1Q8
T2vVE5D/fENJjOlNVzQ/XMVA1fH17b5rcWW77HdARCpqe9Z7PMuggBVyJRK/N+Ko
SntlOLZyG1jr76z+Q7qjgIOLo2i3+p+xKWRFICWx8Vb1LXdpf/Xxb58fwMuXo3Qb
HbKOrpiV8It/i0m/fjmJTRBibIrB0HL3cb6k9RX6wFTuDgBo3nTeOGN63VzxF223
ZW7MOFDyvfBg4zOoKHz8CPNquoMLVCaDO+fC1I1IxtonpMUxUD3QtcxReJTgChwV
E1oyYNNuL3nr9V6DO/ok2yn7fE/OuH1rvMUM6Scp9M4Ge4L6EiFBtk3bdKiQc5xt
delu7yKQ7eNVoQaFXez/akXJ+6cie0ZcWWbzW9YNxpnFeRQbxxw=
=tPL1
-----END PGP SIGNATURE-----

--nzj53if3kz67ipm2--
