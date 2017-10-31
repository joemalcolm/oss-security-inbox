X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4145" "Tuesday" "31" "October" "2017" "14:44:28" "+0200" "Apostolis Hardalias" "ahardalias@census-labs.com" "<9e2e0dcb-62fa-d853-177e-af9c90918f72@census-labs.com>" "98" "Re: [oss-security] Fw: Security risk of vim swap files" "^Date:" nil nil "10" "2017103112:44:28" "[oss-security] Fw: Security risk of vim swap files" (number mark "        ahardalias@c Oct 31   98/4145  " thread-indent "\"Re: [oss-security] Fw: Security risk of vim swap files\"\n") "<20171031132352.2df6d2ad@pc1>" ("<20171031132352.2df6d2ad@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26308 invoked by uid 550); 31 Oct 2017 12:49:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21555 invoked from network); 31 Oct 2017 12:44:06 -0000
References: <20171031132352.2df6d2ad@pc1>
Message-ID: <9e2e0dcb-62fa-d853-177e-af9c90918f72@census-labs.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <20171031132352.2df6d2ad@pc1>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="NrCqU3Hoj1FCsrko7HSG0xeEHfAPkgtwH"
Date: Tue, 31 Oct 2017 14:44:28 +0200
From: Apostolis Hardalias <ahardalias@census-labs.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Fw: Security risk of vim swap files
To: oss-security@lists.openwall.com

--NrCqU3Hoj1FCsrko7HSG0xeEHfAPkgtwH
Content-Type: multipart/mixed; boundary="OaKI8eT6ts3Q0efX7vcREAueRSkBtDUGJ";
 protected-headers="v1"
From: Apostolis Hardalias <ahardalias@census-labs.com>
To: oss-security@lists.openwall.com
Message-ID: <9e2e0dcb-62fa-d853-177e-af9c90918f72@census-labs.com>
Subject: Re: [oss-security] Fw: Security risk of vim swap files
References: <20171031132352.2df6d2ad@pc1>
In-Reply-To: <20171031132352.2df6d2ad@pc1>

--OaKI8eT6ts3Q0efX7vcREAueRSkBtDUGJ
Content-Type: text/plain; charset=utf-8
Content-Language: el-GR
Content-Transfer-Encoding: quoted-printable

Running :help swap-file will indicate that you may change where swap
files are stored by default by adding a :set dir=3D~/.vim/swap-files in
your ~/.vimrc file.

Also, adding *.swp in your global gitignore file will save you alot of
trouble in the future.


On 10/31/2017 02:23 PM, Hanno B=C3=B6ck wrote:
> I just sent this to the vim dev list, but I guess it's interesting for
> oss-security, too.
>=20
> Begin forwarded message:
>=20
> Date: Tue, 31 Oct 2017 11:30:50 +0100
> Subject: Security risk of vim swap files
>=20
>=20
> Hi,
>=20
> I wanted to point out an issue here with vim swap files that make them
> a security problem.
>=20
> By default vim creates a file with the name .filename.swp in the same
> directory while editing. They contain the full content of the edited
> file. This usually gets deleted upon exit, but not if vim crashes or
> gets killed (e.g. due to a reboot).
>=20
> On web servers this can be a severe security risk. One can e.g. scan
> for web hosts that have swap files of PHP configuration files and thus
> expose settings like database passwords. (e.g. wget
> http://example.com/.wp-config.php.swp )
>=20
> In a scan of the alexa top 1 million I found ~750 instances of such
> files. I tried to inform affected people as best as I could. I also
> discovered such scans in my own web server logs, so I assume black hats
> are already aware of this and it's actively exploitet.
>=20
> I was wondering how to best avoid this on my own servers and I first
> thought about saving the swap files to tmp ( with "set directory").
> However on multiuser systems this creates another security problem.
> These files are world readable, thus instead of leaking information to
> the world it's now leaking information to other users on the same
> system. Thus even if one is aware of the issue it's nontrivial to get
> secure settings (I've now worked around this by having per-user tmp
> dirs with secure permissions.)
>=20
> I think vim should change the behavior of swap files:
> 1. they should be stored in /tmp by default
> 2. they should have secure permissions (tmp file security is
> a tricky thing and needs careful consideration to avoid symlink attacks
> and the like, but there are dedicated functions for this like mkstemp).
> 3. Ideally they also shouldn't leak currently edited filenames (e.g.
> they shouldn't be called /tmp/.test.txt.swp, but more something
> like /tmp/.vim_swap.123782173)
>=20


--OaKI8eT6ts3Q0efX7vcREAueRSkBtDUGJ--

--NrCqU3Hoj1FCsrko7HSG0xeEHfAPkgtwH
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEVpZy9xKkoeFT6KsV/GEOhSZiiYMFAln4cC0ACgkQ/GEOhSZi
iYPauA//Vgs8cKFIxlL7fQMACsV/oj2JAep7D3Np6u5Eh4sleQqFI57bKzqGG1sy
AhKwWqFo+IO/ITm9ect4zROWRUnBPqGSxQjQutefzVXl7LOmoEOTFfbO5PN+wZjO
c8T+5i74d7lzuO0C4+u9eP4nqx2vEi0PnR1tQs41i1Byaqk5/VN1VkJZKHWuePKF
8M/Z5ZxL1mb8PiCKqcuTf0pxUeza9S3YUSMJkjD9X2D8TiRUScTupMzLlekR7KFM
tr7Jgm8qpAbzB+pbyaAfoFh7fn/zFecoXk+HGu9GRv9iOF/1g2nlWRXeQk/hLat6
SeDnE/PIixW1UiVTug5XnqQyJIF0I0r+orWTD73ke40+afYBTq12XtSAOvbgyeSl
RUZbmS5qzav29YnMI9BGgjtFc1C3pI6oZOCpTpc2guh+YvAUP6ZuqZBsoMqcuPw5
fRTqlbutHjg/LkcEKSXd7P0E02z1HZZ/QFj0kO+5wE/X6OUuDCp5mmPkfI5X8sb/
79IsLorIeoRc2VPvZqcu9rcnVwG0vThznfN7qRzHgMjbyKXhpseHEfPhHijuKZLR
OYrJrhzsLeMzkNuE+GHYDsX6T40F2yHb47Sx1/4iTqUbqwBc9bROqPN0SuQKCUf0
U/jjEK5msyp2PFLHQus+WaV5k9iYsOpzskHH+5uwok4ZQVfxecM=
=Y/Om
-----END PGP SIGNATURE-----

--NrCqU3Hoj1FCsrko7HSG0xeEHfAPkgtwH--
