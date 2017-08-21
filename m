X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3434" "Monday" "21" "August" "2017" "16:08:08" "+0200" "Matthias Gerstner" "mgerstner@suse.de" "<20170821140808.nwvjj5nmdmf45vro@f195.suse.de>" "100" "Re: [oss-security] tcmu-runner: multiple vulnerabilities in tcmu-runner daemon allowing local DoS, information leak and a memory leak" nil nil nil "8" "2017082114:08:08" "[oss-security] tcmu-runner: multiple vulnerabilities in tcmu-runner daemon allowing local DoS, information leak and a memory leak" (number mark "U       mgerstner@su Aug 21  100/3434  " thread-indent "\"Re: [oss-security] tcmu-runner: multiple vulnerabilities in tcmu-runner daemon allowing local DoS, information leak and a memory leak\"\n") "<20170724101204.GA22772@f195.suse.de>" ("<20170724101204.GA22772@f195.suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10118 invoked by uid 550); 21 Aug 2017 14:14:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7714 invoked from network); 21 Aug 2017 14:08:20 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Mon, 21 Aug 2017 16:08:08 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20170821140808.nwvjj5nmdmf45vro@f195.suse.de>
References: <20170724101204.GA22772@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="pm2pt7yi2yze3ixl"
Content-Disposition: inline
In-Reply-To: <20170724101204.GA22772@f195.suse.de>
User-Agent: NeoMutt/20170421 (1.8.2)
Subject: Re: [oss-security] tcmu-runner: multiple vulnerabilities in
 tcmu-runner daemon allowing local DoS, information leak and a memory leak

--pm2pt7yi2yze3ixl
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

CVEs have been assigned now:

> ------------------------------------------------------------------------
> glfs handler allows local DoS via crafted CheckConfig strings
> ------------------------------------------------------------------------
[...]
>   https://github.com/open-iscsi/tcmu-runner/commit/61bd03e600d2abf309173e=
9186f4d465bb1b7157

CVE-2017-1000198

> ------------------------------------------------------------------------
> UnregisterHandler dbus method in tcmu-runner daemon for non-existing
> handler causes DoS
> ------------------------------------------------------------------------
[...]
> - upstream fix: https://github.com/open-iscsi/tcmu-runner/commit/e2d95305=
0766ac538615a811c64b34358614edce

CVE-2017-1000201

> ------------------------------------------------------------------------
> UnregisterHandler D-Bus method in tcmu-runner daemon for internal
> handler causes DoS
> ------------------------------------------------------------------------
[...]
> - upstream fix: https://github.com/open-iscsi/tcmu-runner/commit/bb80e9c7=
a798f035768260ebdadffb6eb0786178

CVE-2017-1000200

> ------------------------------------------------------------------------
> Memory leaks can be triggered in tcmu-runner daemon by calling D-Bus
> method for (Un)RegisterHandler
> ------------------------------------------------------------------------
[...]
> - upstream fix: https://github.com/open-iscsi/tcmu-runner/commit/7a78eda5=
2d973d3edc06fea84ad874678d6055f0

CVE for this one is still pending

> ------------------------------------------------------------------------
> qcow handler opens up an information leak via the CheckConfig D-Bus
> method
> ------------------------------------------------------------------------
[...]
>   https://github.com/open-iscsi/tcmu-runner/commit/8cf8208775022301adaa59=
c240bb7f93742d1329

CVE-2017-1000190

also see my summary in comment at

https://github.com/open-iscsi/tcmu-runner/pull/200#issuecomment-323750247

Best regards

Matthias

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Dipl.-Wirtsch.-Inf. (FH), Security Engineer
https://www.suse.com/security
Telefon: +49 911 740 53 290

SUSE Linux GmbH=20
GF: Felix Imend=F6rffer, Jane Smithard, Graham Norton
HRB 21284 (AG Nuernberg)
On Mon, Jul 24, 2017 at 12:12:04PM +0200, Matthias Gerstner wrote:

--pm2pt7yi2yze3ixl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJZmulBAAoJEBTEBclxkjVTQKAQAK7XW12dBzYvAPiPXd4EKsPs
RBOEjb8B4X+az2OzJ7tI2jy/BBytBAWHTpLrCyJHdD0ShIVb/r8qlVSABCnz4LNq
AogSj/Zg9JrZ34cfQR2VXanXZKo8RB7Dq67wdeqsjSM22xylp8RW+rdAhMuo/KWh
cVWZ1RXTsMzhe4/EVs2f3WU9K5GjfWuuvHJAuA/moEcBxttFgJY/+JNmPZSBlCms
WQXV8ENIun8hSJVF+W3IIrftRNslcuqeVsHmsww7IGYm9SeWnqgq2kRRWhlQs+Cd
4m/YErf8bAFdOQu3SmASc4Zom4qXPNq4AYAEJdzZbBE3aMS7PxWGB/R7jsUmbT5X
SN3ZpjI4tFYFqkq0XJOPjHVXVws2Jhf5qp1uMEgvrH+3p46lqV02bBY1V+Q8r6RL
ApvNV9pk/7j6ZAzfCE0hT/LPesvj+kcF8tC7Z6zHuiT7grkNKqONdQBdh/qmeroM
xr41Psv6GxQ+JjatTf9kjv4i66mIbzAssol+x/9aSW5CP++Lhfjy+tcmDw0zGs9Z
rBNVexFmdzeI4nX8vQYOiYcDwfliwOCutxRDKG8DWfy2bOIV3x5yeVLUhg7smORH
IW3MlbZGlQui+2CKiYRXP3gGBdUNVpWlHB/0evUrdr/ni1m6cJoEVJOAX4RQ2GG1
X2kNt3M+qi0QkjtYIozp
=kmLF
-----END PGP SIGNATURE-----

--pm2pt7yi2yze3ixl--
