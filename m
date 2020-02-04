X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1776" "Tuesday" "4" "February" "2020" "14:09:19" "+0100" "Matthias Gerstner" "mgerstner@suse.de" nil "51" nil "^Date:" nil nil "2" nil nil (number mark "        mgerstner@su Feb  4   51/1776  " thread-indent "\"Re: [oss-security] CVE-2020-7221: mariadb: possible local mysql to root user exploit in mysql_install_db script setting permissions of /usr/lib64/mysql/plugin/auth_pam_tool_dir/auth_pam_tool\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2020-7221: mariadb: possible local mysql to root user exploit in mysql_install_db script setting permissions of /usr/lib64/mysql/plugin/auth_pam_tool_dir/auth_pam_tool" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15364 invoked by uid 550); 4 Feb 2020 13:09:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14311 invoked from network); 4 Feb 2020 13:09:31 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20200204130919.GD11664@f195.suse.de>
References: <20200204102604.GB11664@f195.suse.de>
 <20200204122711.GA16946@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="oj4kGyHlBMXGt3Le"
Content-Disposition: inline
In-Reply-To: <20200204122711.GA16946@openwall.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Tue, 4 Feb 2020 14:09:19 +0100
From: Matthias Gerstner <mgerstner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2020-7221: mariadb: possible local mysql to
 root user exploit in mysql_install_db script setting permissions of
 /usr/lib64/mysql/plugin/auth_pam_tool_dir/auth_pam_tool
To: oss-security@lists.openwall.com

--oj4kGyHlBMXGt3Le
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Feb 04, 2020 at 01:27:11PM +0100, Solar Designer wrote:
> > I personally suggest the following directory mode instead:
> >=20
> > root:mysql  0750 /usr/lib/mysql/plugin/auth_pam_tool_dir
>=20
> Why not simply
>=20
> root:mysql 04710 /usr/lib/mysql/plugin/auth_pam_tool
>=20
> without the directory?  I see only one reason: it's a bigger change
> relative to the current implementation, which is more work now, but
> perhaps this cleanup is worth it longer-term.

yes, exactly. I don't want to diverge too much from what upstream does
at the moment.

When this doesn't matter then your suggestion is the better one and
would be the cleaner approach for upstream to follow.

Cheers

Matthias

--oj4kGyHlBMXGt3Le
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAl45bP8ACgkQFMQFyXGS
NVPA1A//euZU2rf4rWj4rWvEgs6nBM9gSPGMU273vulsbeNFpKfDfSsLCjeC3b1H
a9/oe9+e4G7N5p9a9PhMd/6nVHpLYtvvQQ/VbEw1axrP1sWSPoeK7Qw/RPtyRpbr
edcUD2Bg38g6BdTqyqAyngcztuE3MWTT6+utzNmFTJVLeW02gBiOr+c62APXOQ3P
pNibaaE4c8HY7QdUbJEuzjWScnKJrQzGnxvvbrzST0JqkadgQ4ahJ23ofwKJNIAo
XfHhdE37bUjcCYImLOuwqwRyPaa72ikfs9iFmUBRKfsv7acgQOxxXU9xUEykpTZt
ZO+pEpCk1wDnDttSCkULUTQGxzoNJS6IQd1vjJWeEKIHPZ/sOhKb12OrJqKRCQ+M
lc8r4H8Sx62pUK+exKCt04XVhnl8Jrm7SnX08fGxfAqJ0/Dw8tfDSjhXgeVpVbLk
N5IyemD0yt87U6yy2AwpW4p3/ARcq4s5TVLhPsW4UgfQxKFhlOgMzoHHXtRq8Be6
WwFiTgiQOg6ek5jwMOU6uadOULUrrOGGGk4rr3mon2jcDc2N/aU/4URKj1VpaQGb
/Uo4RTrioKdcO78HwJciVZUswkK769zp8tIeeW025LSu+5gPex9/Ii55AqZ2hQNV
sqsqMGKJ+YSR3EcGOIMR7aPrviMOuL80MAQNDTreJ10bkgw68YY=
=k2K4
-----END PGP SIGNATURE-----

--oj4kGyHlBMXGt3Le--
