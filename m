X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3728" "Friday" "27" "January" "2017" "23:49:09" "+0100" "Kristian Fiskerstrand" "k_f@gentoo.org" "<d5fa87a7-b2b0-a8f5-35d6-61b82a1bb9da@gentoo.org>" "91" "[oss-security] Re: Gentoo: order of installed packages may result in vary directories permissions, leading to crontab not requiring cron group membership as example." nil nil nil "1" "2017012722:49:09" "[oss-security] Re: Gentoo: order of installed packages may result in vary directories permissions, leading to crontab not requiring cron group membership as example." (number mark "U       k_f@gentoo.o Jan 27   91/3728  " thread-indent "\"[oss-security] Re: Gentoo: order of installed packages may result in vary directories permissions, leading to crontab not requiring cron group membership as example.\"\n") "<8bd5339f-080c-310d-9a68-3f91f725b3f7@gmail.com>" ("<8bd5339f-080c-310d-9a68-3f91f725b3f7@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23591 invoked by uid 550); 28 Jan 2017 12:14:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26255 invoked from network); 27 Jan 2017 22:49:31 -0000
References: <8bd5339f-080c-310d-9a68-3f91f725b3f7@gmail.com>
To: KARBOWSKI Piotr <piotr.karbowski@gmail.com>,
 oss-security@lists.openwall.com
Cc: security-audit@gentoo.org
From: Kristian Fiskerstrand <k_f@gentoo.org>
Message-ID: <d5fa87a7-b2b0-a8f5-35d6-61b82a1bb9da@gentoo.org>
Date: Fri, 27 Jan 2017 23:49:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.6.0
MIME-Version: 1.0
In-Reply-To: <8bd5339f-080c-310d-9a68-3f91f725b3f7@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="LNK6WmVSwjgnFQJrsmkhUTa02EfN3sJHQ"
Subject: [oss-security] Re: Gentoo: order of installed packages may result in vary
 directories permissions, leading to crontab not requiring cron group
 membership as example.

--LNK6WmVSwjgnFQJrsmkhUTa02EfN3sJHQ
Content-Type: multipart/mixed; boundary="auINaRNt7RIugEqQusf7a91oHMjOPxI6e"
From: Kristian Fiskerstrand <k_f@gentoo.org>
Reply-To: k_f@gentoo.org
To: KARBOWSKI Piotr <piotr.karbowski@gmail.com>,
 oss-security@lists.openwall.com
Cc: security-audit@gentoo.org
Message-ID: <d5fa87a7-b2b0-a8f5-35d6-61b82a1bb9da@gentoo.org>
Subject: Re: Gentoo: order of installed packages may result in vary
 directories permissions, leading to crontab not requiring cron group
 membership as example.
References: <8bd5339f-080c-310d-9a68-3f91f725b3f7@gmail.com>
In-Reply-To: <8bd5339f-080c-310d-9a68-3f91f725b3f7@gmail.com>

--auINaRNt7RIugEqQusf7a91oHMjOPxI6e
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 01/27/2017 10:59 PM, KARBOWSKI Piotr wrote:
> Hi,
>=20

Hi Piotr,

> The packages in Gentoo often utilizes Portage's functions like keepdir
> to create a directories, with specified permissions. One of the examples
> is 'cronbase', which the only purpose is to setup
> /etc/cron.{hourly,daily,weekly,monthly} and /var/spool/cron.
>=20
> The /var/spool/cron is meant to have root:cron 750, which makes the
> crontab usable only for the users that are members of cron group.
>=20
> As for the /etc/cron.{hourly,daily,weekly,monthly} they're meant to be
> root:root 750.
>=20
> If, for instance, a mlocate package will be installed before cronbase,
> due to installing /etc/cron.daily/mlocate, the /etc/cron.daily will end
> up with 755 permissions. After than when crontab package is installed,
> due to usage of portage's keepdir function, the directory in temporary
> directory will be installed as root:cron 750, but during the merge
> process to rootfs no directory permissions will be merged, leaving the
> /etc/cron.daily as 755.
>=20
> On one system after installing set of packages, the /var/spool/cron
> ended up being cron:root 755, which results in possibility for any local
> user to actually create the crontabs (including system users like nginx,
> mysql, and so on).
>=20
> The way a (directory) ownership and permissions are handled in Gentoo
> seems to be flawed, it's not clear to me whatever Portage should
> provided a soluton to that, or the ebuilds authors should make sure to
> always depends, in case of touching cronbase directories, on the
> cronbase package, to ensure that it's installed prior to installing
> them. Nonetheless I do believe this issue is worth CVE.
>=20
> -- Piotr.

Tracking this in https://bugs.gentoo.org/show_bug.cgi?id=3D607430

please keep in mind that this is already discussed in (at least)
https://bugs.gentoo.org/show_bug.cgi?id=3D396153
https://bugs.gentoo.org/show_bug.cgi?id=3D141619
https://bugs.gentoo.org/show_bug.cgi?id=3D58611

You might want to work with the portage team on a solution
--=20
Kristian Fiskerstrand
OpenPGP keyblock reachable at hkp://pool.sks-keyservers.net
fpr:94CB AFDD 3034 5109 5618 35AA 0B7F 8B60 E3ED FAE3


--auINaRNt7RIugEqQusf7a91oHMjOPxI6e--

--LNK6WmVSwjgnFQJrsmkhUTa02EfN3sJHQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEtOrRIMf4mkrqRycHJQt6/tY3nYUFAliLzmUACgkQJQt6/tY3
nYUX8gf+PY5wsZZbxkp+QmSZjaip/drO9iIhqd2eQLERR0Ha+V/GC6z06yAYfG7f
fSy4zVNYtDinTGX4pQRmxA9n6/1VzKdU6Jwf/TLJbzGQfqv2eRSpIlUvcQEC79FK
glVknbbJFVYIDhTLfaM070blsWEVnoaKL77KZk0KaHlVC0qycpGutTqZ0PYy4Ytx
5+ZHABzm2ehjsutm/QDezUQgtvvFzZkabs+zCc2kZ1/vtMRYISq6Z2HS9a1X+19U
vcsrtvNUhrU0ttUKiySdMe9PVBe6KJKF+VTcBKggL5kyDf84cM1K974jyvbCwbD1
7Kj8D021Msx0ecGmRAZyh3neU96gCA==
=5Xhf
-----END PGP SIGNATURE-----

--LNK6WmVSwjgnFQJrsmkhUTa02EfN3sJHQ--
