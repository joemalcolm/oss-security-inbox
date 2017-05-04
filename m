X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1482" "Wednesday" "3" "May" "2017" "17:55:20" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20170504005520.GD12174@hunt>" "41" "Re: [oss-security] rpcbomb: remote rpcbind denial-of-service" "^Date:" nil nil "5" "2017050400:55:20" "[oss-security] rpcbomb: remote rpcbind denial-of-service" (number mark "        seth.arnold@ May  3   41/1482  " thread-indent "\"Re: [oss-security] rpcbomb: remote rpcbind denial-of-service\"\n") "<CAO5O-EKoyVe5oxT3nx6pOYsHwhvp9SxcezkV-m5pnpw4Q_4j8A@mail.gmail.com>" ("<CAO5O-EKoyVe5oxT3nx6pOYsHwhvp9SxcezkV-m5pnpw4Q_4j8A@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21992 invoked by uid 550); 4 May 2017 00:55:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21971 invoked from network); 4 May 2017 00:55:34 -0000
Message-ID: <20170504005520.GD12174@hunt>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CAO5O-EKoyVe5oxT3nx6pOYsHwhvp9SxcezkV-m5pnpw4Q_4j8A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cHMo6Wbp1wrKhbfi"
Content-Disposition: inline
In-Reply-To: <CAO5O-EKoyVe5oxT3nx6pOYsHwhvp9SxcezkV-m5pnpw4Q_4j8A@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Wed, 3 May 2017 17:55:20 -0700
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] rpcbomb: remote rpcbind denial-of-service
To: oss-security@lists.openwall.com

--cHMo6Wbp1wrKhbfi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 03, 2017 at 08:55:23PM +0200, Guido Vranken wrote:
> This vulnerability allows an attacker to allocate any amount of bytes
> (up to 4 gigabytes per attack) on a remote rpcbind host, and the
> memory is never freed unless the process crashes or the administrator
> halts or restarts the rpcbind service.
> [...]
> An extensive write-up can be found here:
> https://guidovranken.wordpress.com/2017/05/03/rpcbomb-remote-rpcbind-deni=
al-of-service-patches/
>=20
> Exploit + patches: https://github.com/guidovranken/rpcbomb/

Hello Guido, nice find. Have CVE numbers been requested for this issue
yet? Have you investigated if ntirpc is affected too? Much of the code
looks similar:

http://sources.debian.net/src/ntirpc/1.4.3-3/src/rpc_generic.c/#L728

Thanks

--cHMo6Wbp1wrKhbfi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBCgAGBQJZCnv4AAoJEPMhclmdjS6XUXMIAJiR9x6C+FrFL3jisWbxj9eg
sbzM3IjoFTlriwfuW60qmZiJASWbBBx6v4eq1dR5sAp3ZZvGU80md2B6WiBVDp0g
v/xDmQCGJ9dS+shhOiYCuiDEItsF76C/mN2P3WLjTUjE8JaT+GEDN79bxDpmNTLV
9g29zQiU8040yMmRH9c3gay8Vz4mjHjFKQzmMbmb7lrpicsl9uuv5FKPLx/UQd/g
gvsaWTBltyS8iUW7Xk/EKHmlOOk1IBLxrWfqdxp/AlHl/QdH+8BniAYNWjadAyK0
+GV4nba0DI2JQSPYxdRk6SLVxEXDYnBu8dscXH/Gaa0WkjP6olrvN2Jqi6SE7Kw=
=6lVw
-----END PGP SIGNATURE-----

--cHMo6Wbp1wrKhbfi--
