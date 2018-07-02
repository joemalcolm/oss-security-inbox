X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1465" "Monday" "2" "July" "2018" "16:09:48" "+0200" "Matthias Gerstner" "mgerstner@suse.de" "<20180702140948.GF8324@f195.suse.de>" "35" "Re: [oss-security] cinnamon: possible symlink attack in cinnamon-settings-users.py" "^Date:" nil nil "7" "2018070214:09:48" "[oss-security] cinnamon: possible symlink attack in cinnamon-settings-users.py" (number mark "        mgerstner@su Jul  2   35/1465  " thread-indent "\"Re: [oss-security] cinnamon: possible symlink attack in cinnamon-settings-users.py\"\n") "<20180702133709.GE8324@f195.suse.de>" ("<20180702133709.GE8324@f195.suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3864 invoked by uid 550); 2 Jul 2018 14:10:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32369 invoked from network); 2 Jul 2018 14:10:00 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20180702140948.GF8324@f195.suse.de>
References: <20180702133709.GE8324@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="o71xDhNo7p97+qVi"
Content-Disposition: inline
In-Reply-To: <20180702133709.GE8324@f195.suse.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Date: Mon, 2 Jul 2018 16:09:48 +0200
From: Matthias Gerstner <mgerstner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] cinnamon: possible symlink attack in
 cinnamon-settings-users.py
To: oss-security@lists.openwall.com

--o71xDhNo7p97+qVi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> The script cinnamon-settings-users.py runs as root (via polkit's pkexec)=
=20
> and allows to configure e.g. other user's icon files. These icon files
> are written to the respective user's $HOME/.face location. If an
> unprivileged user prepares a symlink pointing to an arbitrary location
> then this location will be overwritten with the icon content.

This was assigned CVE-2018-13054.

--o71xDhNo7p97+qVi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAls6MiwACgkQFMQFyXGS
NVOlsQ/9GPSYB4XTwPeSjc/U21pG91dr+zpyOJ+54sai5+qs8GuhXK3BusU/cWSU
i7gsbOIsav+ibSJE9U2aZlXbuyUvpwDvzmpuJ8uBrYYTRiqend0e+eRHdknenXhm
mekhoO6neTrFwkOEmMdb3idNNV0K+lP1cusDJw9GGmJEdaJ9g1Shp1NLFOmvWjqY
K5LI8b45pKN9GWW5PLShX0MxCMdxTy7y3oWKSnZyM9JCBwvL6EokA2vc1BQW3+ki
ChOQcpnz0jZCMSvzTyKcB74RuZFzW0Pc+a207qG52b3sXPIuVQ5fbbGVUOHC3vug
FvFbcg28RG4k6xbiM/AKWtNhZivPEfAMuIIRU/nxqWgrgQkwJWSGOYVCOMsSoUXw
EEQQoFyRVVC7L/PsaADEj+XpxvRT4BiEGHWAO6lUhdnqRH9i4xZ4xIBifxHTckUd
S5YWxwUB7cFV7jNVTyxBGD3XbAWXdmHhO+eEx4ECTHFreRf4280EhPqV+bTJ1mcY
PCsEA4DVHgBaYn+7ggrHZEHkWZz3fbCvF4wek0N6vtUSPxR1vpHUNsN4VqH0BaAQ
y+325SdikEQiPRy00cLNYkcFAICOpiJ7XvELNo5Vcd5YSDO0EO+9YhYjVQMaUF3Q
CtK3M+JR+We+DMiOh7uSfqkfLV1iiH4YGQwVO4/9P3sMu4LLVNY=
=Cpto
-----END PGP SIGNATURE-----

--o71xDhNo7p97+qVi--
