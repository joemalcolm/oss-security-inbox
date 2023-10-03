Received: (qmail 3810 invoked by uid 550); 3 Oct 2023 21:44:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3783 invoked from network); 3 Oct 2023 21:44:38 -0000
Date: Tue, 3 Oct 2023 21:44:24 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <20231003214424.prarc3aboi3ar7zk@yuggoth.org>
References: <E1qko5Z-0003cF-KD@xenbits.xenproject.org>
 <ZROMd1GCpD8uDtbE@itl-email>
 <20231003201212.GA24599@openwall.com>
 <1786f020-2af8-4adb-bb4c-5dc87c545dcd@citrix.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lgk3s2nvcv7xr6ql"
Content-Disposition: inline
In-Reply-To: <1786f020-2af8-4adb-bb4c-5dc87c545dcd@citrix.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: Re: [oss-security] Xen Security Advisory 439 v1 (CVE-2023-20588) -
 x86/AMD: Divide speculative information leak

--lgk3s2nvcv7xr6ql
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2023-10-03 22:37:08 +0100 (+0100), Andrew Cooper wrote:
[...]
> If you have a proposal for how you'd prefer it to be done, I'll see what
> I can do.  Perhaps BCC oss-security, or just send out a second mail?

When I send advisories, I prepare two basically identical E-mail
messages: one to the project's announcement list and one to
oss-security (signing both of them). It seems like this is the most
common approach to avoiding cross-posting between lists.
--=20
Jeremy Stanley

--lgk3s2nvcv7xr6ql
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmUcizJfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCntARAAjntV3rWV6kJjuu3FATC9JbyPtELf8bLij+eAttKRhoG544M0fVG/nycV
4ggtkwAD6KP6WFEswL6GCsgZWeP/o6AzJ6m3M0oL+ANvfac30WzHBUYEcVHdjO40
5C7VmpWMLkUm/w8mIkezzmRVELJWDX/hE2bxFkU2SYUEJxAeW5kC5NC6TZxxJmov
SIBz+9D5fUewkr4oGoC6pScHCW+0NYYOW8Sv/KjGxqR/2+ITrpJDjpn2qvc0tEvs
G+kY6LjhAScUTC0+s4BB+pO3Dk8jq131vo1yvGyFSN11Eg+OQJffqzC0no8exEAi
c1YO+9YXtgj4YZFYuEUZHoavimAkTHiUo2da8tN/thp3RouA0NwhKHy0YmacscAh
NxicbCZEFjLRXeeKzYBspxEUZqw0ED99TWUXnA69nBkph4E13s/0zzAtL4xoEvvQ
zplDZpiQj9muCSkrEj0FhwhGHfKrkx3ElUJJWU5NJ0KULY4jIHpb5x6I6VCh+MBl
9ylDeCyIBeCd+q88uw1/lzFOeZYPrTKqJ3wGUBj9ynj8CyljY74kv5P9K+W2J7nD
3J82CDbv9ujHNIB3nfFGI/0U+BXWpH/w36uw9WPs9/a2IUGtGEvojILBSPeDtTZA
jjeJQ4o5tdDXt6K4788jFAaG0MsgI7Z8bJIP+B3Ry15EbedCAwY=
=rT6F
-----END PGP SIGNATURE-----

--lgk3s2nvcv7xr6ql--
