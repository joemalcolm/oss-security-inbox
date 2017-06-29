X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2375" "Thursday" "29" "June" "2017" "23:07:14" "+0200" "Andreas Stieger" "astieger@suse.com" "<7c90b43f-1031-2c1f-943f-e2f2a0d1d486@suse.com>" "66" "Re: [oss-security] CVE Request: unrar: VMSF_DELTA filter allows arbitrary memory write" "^Date:" nil nil "6" "2017062921:07:14" "[oss-security] CVE Request: unrar: VMSF_DELTA filter allows arbitrary memory write" (number mark "        astieger@sus Jun 29   66/2375  " thread-indent "\"Re: [oss-security] CVE Request: unrar: VMSF_DELTA filter allows arbitrary memory write\"\n") "<20170621122001.GA3350@intrepid>" ("<20170621122001.GA3350@intrepid>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30370 invoked by uid 550); 29 Jun 2017 21:07:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30335 invoked from network); 29 Jun 2017 21:07:41 -0000
References: <20170621122001.GA3350@intrepid>
Organization: SUSE Linux GmbH
Message-ID: <7c90b43f-1031-2c1f-943f-e2f2a0d1d486@suse.com>
MIME-Version: 1.0
In-Reply-To: <20170621122001.GA3350@intrepid>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="51qXcrXRJSvxd7LQGNltxw0oU7pws8pUb"
Date: Thu, 29 Jun 2017 23:07:14 +0200
From: Andreas Stieger <astieger@suse.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: unrar: VMSF_DELTA filter allows
 arbitrary memory write
To: oss-security@lists.openwall.com

--51qXcrXRJSvxd7LQGNltxw0oU7pws8pUb
Content-Type: multipart/mixed; boundary="krcc7PAuWTVlBIUkrlswCHhGTSqW1cKIX";
 protected-headers="v1"
From: Andreas Stieger <astieger@suse.com>
To: oss-security@lists.openwall.com
Message-ID: <7c90b43f-1031-2c1f-943f-e2f2a0d1d486@suse.com>
Subject: Re: [oss-security] CVE Request: unrar: VMSF_DELTA filter allows
 arbitrary memory write
References: <20170621122001.GA3350@intrepid>
In-Reply-To: <20170621122001.GA3350@intrepid>

--krcc7PAuWTVlBIUkrlswCHhGTSqW1cKIX
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Hi,


On 06/21/2017 02:20 PM, Alexander Bergmann wrote:
> It was reported that unrar fixed a VMSF_DELTA memory corruption issue in
> there latest version unrarsrc-5.5.5.tar.gz. This problem was reported to
> Sophos AV in 2012 but never reach upstream rar.
>
> https://bugs.chromium.org/p/project-zero/issues/detail?id=3D1286&desc=3D6=
#maincol

In clamav's libunrar, this is
https://github.com/vrtadmin/clamav-devel/commit/d4699442bce76574573dc564e7f=
2177d679b88bd

Andreas

--=20
Andreas Stieger <astieger@suse.com>
Project Manager Security
SUSE Linux GmbH, GF: Felix Imend=F6rffer, Jane Smithard, Graham Norton,
HRB 21284 (AG N=FCrnberg)



--krcc7PAuWTVlBIUkrlswCHhGTSqW1cKIX--

--51qXcrXRJSvxd7LQGNltxw0oU7pws8pUb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEELRFTXKGyY4WwZ7oiLNapVeFZRUYFAllVbBAACgkQLNapVeFZ
RUZPcw//QMBRJsv39M/kwTnuDZyn5JeH0MTJOUlY2noW5pGtoYwtrFX5HGXxpAXj
7X9k262T37IiiWB6L9sKO6xq1TOkVm5Ksi+zdX6MlCWFrm1AWdKEV6KHl6gnd2+B
d7tx/okLu/JhdODIWUyQulFSGpO/ojI7KwKotCpXot03IHsOoncQTpJEZte8f1e0
GLECoZvFVZx7jlym9vLQwOGfeLgueJDIXGvwDXgSidWPloFKDbO7k9IaIxbQTe4Y
LSpv4l5k5w1hC46fPKxBmH1EiFWftahanMGXibeRtjyuM/PyXThgzmatEUAJ94Kj
lWVnsdnP1VwO3e4I/WqNvQmrNMACbQDD2WxQmwqCMxSpVmfyXl8oDkCyIw3nbG22
9Z0Zr3ftwUQsQMep0taxBf/ViAevBSoh4HtPw6Ir8MqFZCry+utaGhSKA3axwzv7
TZnrpPdcpHegLh1IHwen8g41AvV7FmpP6CaDSUJen8uGt36rHNevQzG7AyOqukNb
dp1EO68g3HUcUe8eGG0ZWBbQqQPu/6kFJloeyQKkAtEMS+xtxLUmL3TkIB/U5jp4
jq4OolKXfqCaZi9zlzSThj5sEhF3lJJdo/0M6EOGbYSUfdCo8tDyTPiW3kp5BKng
yTKpBh7lA4o5KguxMQTKe9J57aN8CRU1UliJpaDH0+crkrArvjE=
=yf1w
-----END PGP SIGNATURE-----

--51qXcrXRJSvxd7LQGNltxw0oU7pws8pUb--
