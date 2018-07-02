X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1647" "Monday" "2" "July" "2018" "16:38:01" "+0200" "Matthias Gerstner" "mgerstner@suse.de" "<20180702143801.GG8324@f195.suse.de>" "46" "Re: [oss-security] accountsservice: insufficient path check in user_change_icon_file_authorized_cb()" "^Date:" nil nil "7" "2018070214:38:01" "[oss-security] accountsservice: insufficient path check in user_change_icon_file_authorized_cb()" (number mark "        mgerstner@su Jul  2   46/1647  " thread-indent "\"Re: [oss-security] accountsservice: insufficient path check in user_change_icon_file_authorized_cb()\"\n") "<20180702141024.iudvf2tx7fsf3q66@jwilk.net>" ("<20180702122122.GD8324@f195.suse.de>" "<20180702141024.iudvf2tx7fsf3q66@jwilk.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11355 invoked by uid 550); 2 Jul 2018 17:30:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32029 invoked from network); 2 Jul 2018 14:38:13 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20180702143801.GG8324@f195.suse.de>
References: <20180702122122.GD8324@f195.suse.de>
 <20180702141024.iudvf2tx7fsf3q66@jwilk.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yzvKDKJiLNESc64M"
Content-Disposition: inline
In-Reply-To: <20180702141024.iudvf2tx7fsf3q66@jwilk.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
Date: Mon, 2 Jul 2018 16:38:01 +0200
From: Matthias Gerstner <mgerstner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] accountsservice: insufficient path check in
 user_change_icon_file_authorized_cb()
To: oss-security@lists.openwall.com

--yzvKDKJiLNESc64M
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

> >I think the easiest way to fix this is to normalize the user supplied=20
> >filename e.g. using realpath()
>=20
> Using realpath(3) for access control is almost always a mistake: this=20
> function expands symlinks, including attacker-controlled symlinks.

can you elaborate what your main worry of using realpath is in this
context?

It surely is better not to expand attacker controlled symlinks or
perform and system calls if it is not necessary. But I fail to see the
security issue of just calling realpath(3) on an attacker controlled
path.

Regards

Matthias

--yzvKDKJiLNESc64M
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAls6OMYACgkQFMQFyXGS
NVN2ThAAyxWTUKcMxl9Sxu6wB9INJLBv67zn86jDCkUfUMfxb0kBCVQt1qQfEGeQ
oMgxa5ehFzX5GBJ2asDCpo8omGwHTN+zQNOj6edg+Q3R/6Pzp3uDVZyvlsIJjIRW
xHUQpd69ViZzyzSCKqaHK4RjWFS/TPmKAmNlSOt7CeFpbXaJvUYn0600QUkufJ3S
Ja4WqOV/NXT+B1OG55RI1SlK+aNwGi0go7qZeTxc1klseHB7EsfmfyW9mlz++Mtq
quforX6ZmRyrjj91d2nQLZ2pv3SRdU0t3AARVO6vbLtVTBFkv9wEZ6fAWCQzqra9
Jc1RSJ88fT/o3DhamsGu2DKqPwFnHWsr69T2WxCTIap+lGYHIYrww6Prf6uwipBO
DZd/yXovYzovEOFG2KXpZ7HyNjElcYT1wVdjJexAoheciB6YF36X2JNL+vMaU8tX
5SsIA0ByCqTOWto/9egYvsUN5tHXG8vUYSjjmWIHFtCcaP7Lzdx1gcfU953FkjQ3
UEGyuKcS1vh/6gnk1+yi3j2x4d4jlM6h071FmzyWkOXGN3quMZw0ETiVS0M3i3oQ
TaHj6Yz0VnJlP9knLt+pyJ3cM1ze8XRrhdaNI19z6AZt229FHFdHp+REXj4a7Wku
zXLpSlEb5PBaPmlH+JS/StYwai8Vt7NV7p6wP4vgZLlFhIunOys=
=CKba
-----END PGP SIGNATURE-----

--yzvKDKJiLNESc64M--
