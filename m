Received: (qmail 7881 invoked by uid 550); 10 Jul 2024 20:00:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28086 invoked from network); 10 Jul 2024 19:51:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:cc:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1720641109;
	 x=1720727509; bh=0DgH03g8Qbq+46Zui8NW1RnhTjYvEdN9FuzwFbcshBg=; b=
	l7HaP54PsnTz4VYG+qzw+F1iBHFGee/LVm/A7Be7qlP+agq+f3rLc9JMAam40Mt2
	l0QHw1WwVR5WIgDPteMh/be2l+3HHUZ2obJzUDMcaZmlGG9b7FLgeG9D8em/pbIz
	vqq65mMHra36rdW+8QcA03c3hnQjDTEPQMGzZm6JNhB5PrLmMEyLNIWSN2zGsArj
	dZamg+iFMHnnSzEt6lN0zWYfmsYQPgTcK76ST80NqQ5TvQq415wfls//HWAJfN0S
	KDSY0UNCgt9F6IeZl2fsyfRX3isL1Mo2pKjQnxSI7XNaou+lXs56PoXrzv7BG8/9
	Jom72jzsf68b0gS4yraWvw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1720641109; x=1720727509; bh=0DgH03g8Qbq+46Zui8NW1RnhTjYv
	EdN9FuzwFbcshBg=; b=UXNcw3VoSAlur2KnqoV6XXYYr/AnwE5b1yLZJbZdId+b
	DzTzaH4ax+m3PiBXMWAA+j3LwyAGA3UchyISw42Lmlcgy5M/p1Mkw9ka28AWwS3S
	bvi3zu52f435uaAk1AQoiLwPaT9M4dhlzXrtjYHr8HBigQLkXji3HjAAasy3ge8r
	MD8zsL7NDF6TFqqmyryejVaeekDkwaSO7jTC70qlRrZL70w90R/iJ8i4gnrTDKjE
	Ef/f7NXRF7dFJv+PA8s6tHrR2+UifUt3RIbVB0cvccPPTUq6SRhFpKGyaVsHw75H
	bb4Aw6VhCo8ukiE9iNBRz/FgJDg26ux8onggKdXmTQ==
X-ME-Sender: <xms:VOaOZvIS58AxEys89K0X8aFIrIFM_VJhX1Zo_X8_Y4I9HvU9VmuiIA>
    <xme:VOaOZjKZdlhxE05TKSKn7QFgd9_97TW82nHSv2EIsd77JlhRGij9Wv9PtG0e0rE3a
    0T6A1MWAdWE1LY>
X-ME-Received: <xmr:VOaOZnt-msWaNaQ-_Zpy-YwLqKuj5eIu05Jd-Zaki63V264laUMqJ79kpruIVyH6N9n_kAaO2OB50-f1xrY3oK-JesVWB1otV_r0F3fDpW-qldkI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrfedvgdekvdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecufghrlhcuvffnffculddqiedmnecujfgurhepfffhvf
    evuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepffgvmhhiucforghrihgvucfq
    sggvnhhouhhruceouggvmhhisehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomh
    eqnecuggftrfgrthhtvghrnhepteejveeitdfhtddtfffhkeffvefhfffhueeuhedvhfek
    veffgeetudetueektdeunecuffhomhgrihhnpegtvghnthhoshdrohhrghdpfhgvughorh
    grphhrohhjvggtthdrohhrghdpnhhishhtrdhgohhvpdhgihhtlhgrsgdrtghomhdpkhgv
    hihogihiuggvrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrg
    hilhhfrhhomhepuggvmhhisehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomh
X-ME-Proxy: <xmx:VOaOZobIsXh1INbpIoKMqg6jQwrV_oZ5CQNcomici7qBZKjKyzvLfQ>
    <xmx:VOaOZmaJpmmUcX7hrL0yNxFUOMuS9Tvzy-EWk48ypPxYu-PPmSxX5w>
    <xmx:VOaOZsDASDq1FKEZkmO76lJwJhCmk7_mktlX-HjdY4w1pE8HbDQEjg>
    <xmx:VOaOZkYjxNEtFuvPO9KUp6GkZsa8fCvvRUGRIOaTAXLwyTYMpWZyRw>
    <xmx:VeaOZlkdVwDRhgEcbEsFXU1YlyeZSfyZEe_7cOYBR_gzjmRVH8a4Z6te>
Feedback-ID: iac594737:Fastmail
Date: Wed, 10 Jul 2024 15:51:44 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Cc: davide@cavalca.name, ngompa13@gmail.com
Message-ID: <Zo7mU_N9joNTZ4gV@itl-email>
References: <Zo61nFk8VulWf7_J@michel-fedora-PC198L6J>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mjngtihEYEBVzgJq"
Content-Disposition: inline
In-Reply-To: <Zo61nFk8VulWf7_J@michel-fedora-PC198L6J>
Subject: Re: [oss-security] linux-distros application for CentOS Project's
 Hyperscale SIG

--mjngtihEYEBVzgJq
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Jul 2024 15:51:44 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Cc: davide@cavalca.name, ngompa13@gmail.com
Subject: Re: [oss-security] linux-distros application for CentOS Project's
 Hyperscale SIG

On Wed, Jul 10, 2024 at 11:23:56AM -0500, Michel Lind wrote:
> I am submitting this application on behalf of CentOS Project's Hyperscale=
 SIG.
>=20
> Myself (Michel Lind), as well as Davide Cavalca and Neal Gompa (SIG co-ch=
airs), would be joining if approved.
>   https://sigs.centos.org/hyperscale/sig/membership/
>=20
>=20
> 1. Be an actively maintained Unix-like operating system distro with subst=
antial use of Open Source components
>=20
>   We actively maintain CentOS Stream Hyperscale https://sigs.centos.org/h=
yperscale/communication/reports/. It is based on CentOS Stream with key pac=
kages upgraded or rebuilt with additional features enabled, intended for la=
rge-scale enterprise deployments but also potentially on modern desktops.
>=20
> Hyperscale can be installed on x86_64 and aarch64 desktops via https://mi=
rror.stream.centos.org/SIGs/9-stream/hyperscale/images/experimental/ - and =
CentOS Stream installations can be converted in place (see https://sigs.cen=
tos.org/hyperscale/content/repositories/main/).
>=20
> 2. Have a userbase not limited to your own organization
>=20
>   Our membership and deliverables are open to anyone who wishes to join; =
contributors have included companies such as Meta, Datto, Twitter/X, and In=
tel, as well as individuals
>=20=20=20
> 3. Have a publicly verifiable track record, dating back at least 1 year a=
nd continuing to present day, of fixing security issues (including some tha=
t had been handled on (linux-)distros, meaning that membership would have b=
een relevant to you) and releasing the fixes within 10 days (and preferably=
 much less than that) of the issues being made public (if it takes you ages=
 to fix an issue, your users wouldn't substantially benefit from the additi=
onal time, often around 7 days and sometimes up to 14 days, that list membe=
rship could give you)
>=20
>   Since we provide an overlay on top of CentOS Stream and EPEL, we genera=
lly inherit updates as they became available - and monitor issues as soon a=
s they are disclosed.
>=20
> Between the three of us we have a track record of pushing EPEL security u=
pdates: https://bodhi.fedoraproject.org/updates/?search=3D&releases=3DEPEL-=
8&releases=3DEPEL-9&releases=3DEPEL-9N&releases=3DEPEL-8N&type=3Dsecurity&u=
ser=3Dsalimma%2C+dcavalca%2C+ngompa
>=20
>   We are increasingly provided updates that our users need before they ar=
e fixed in CentOS Stream, for example:
>=20=20=20
>   - pmix: https://cbs.centos.org/koji/buildinfo?buildID=3D50809 built on =
Sep 15 2023 addressing https://nvd.nist.gov/vuln/detail/CVE-2023-41915 from=
 Sep 9 2023 (commit pushed for c9s on Nov 2 2023 - https://gitlab.com/redha=
t/centos-stream/rpms/pmix/-/commit/d674de0cb5d716940f01e937f2a7bb79fbd81f5c)
>   - openssh: https://cbs.centos.org/koji/buildinfo?buildID=3D54523 built =
on Jul 2 2024 addressing CVE-2024-6387 from Jul 1 2024 (fixed in Stream Jul=
 4)
>=20
> 4. Not be (only) downstream or a rebuild of another distro (or else we ne=
ed convincing additional justification of how the list membership would ena=
ble you to release fixes sooner, presumably not relying on the upstream dis=
tro having released their fixes first?)
>=20
> Our user base uses CentOS Stream in production, while the upstream projec=
t mostly uses it for integrating changes into upcoming RHEL releases; as su=
ch we not only ship newer packages (e.g. kernel, systemd, qemu) with featur=
es not enabled in CentOS Stream and RHEL (e.g. Btrfs) but we also need to p=
atch security issues faster, given Stream receives urgent security fixes on=
ly after they are released for RHEL.
>=20
> See examples in previous points for some issues we fixed independently of=
 upstream distro - as we ship more packages in the future to support more u=
se cases, the need to release security fixes faster will only grow.
>=20
> 5. Be a participant and preferably an active contributor in relevant publ=
ic communities (most notably, if you're not watching for issues being made =
public on oss-security, which are a superset of those that had been handled=
 on (linux-)distros, then there's no valid reason for you to be on (linux-)=
distros)
>=20
> We are individually members of oss-security, in addition to various distr=
ibution development lists
>=20
> 6. Accept the list policy (see above)
>=20
> accepted
>=20
> 7. Be able and willing to contribute back (see above), preferably in spec=
ific ways announced in advance (so that you're responsible for a specific a=
rea and so that we know what to expect from which member), and demonstrate =
actual contributions once you've been a member for a while
>=20
> The three of us handle security related issues, with Neal Gompa focusing =
on issues related to release engineering, and Davide and I on updates in ge=
neral especially those that are built with specific customizations.
>=20
> 8. Be able and willing to handle PGP-encrypted e-mail
>=20
> We are able and willing
>=20
> 9. Have someone already on the private list, or at least someone else who=
 has been active on oss-security for years but is not affiliated with your =
distro nor your organization, vouch for at least one of the people requesti=
ng membership on behalf of your distro (then that one vouched-for person wi=
ll be able to vouch for others on your team, in case you'd like multiple pe=
ople subscribed)
>=20
> Jonathan Wright from AlmaLinux can vouch for us
>=20
> Best regards,
>=20
> --=20
>  _o) Michel Lind
> _( ) identities: https://keyoxide.org/5dce2e7e9c3b1cffd335c1d78b229d2f7cc=
c04f2

I know that at least Neal Gompa is also a Fedora developer.  Would it
be permissible for him to also handle security patches for Fedora, if
Fedora is also affected?
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--mjngtihEYEBVzgJq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmaO5lIACgkQsoi1X/+c
IsFqzg/8C3LIVX5bRpBFqPcgSrPJSQmkPt8yb71TdvD891gx+0rwhtC2DN+yop8F
Jo08wWaHRhEhB/+7WRyzgrrMH0sdO4dGnlcaZFe5Pd+e9TNVEGciJa1N/WPuh6iD
VIHeNu0dL7bWlddRr6cnbYiWmt10zrIsZF3hWqUNI3aDEDB1bAbIdPkoppiu1e77
AyEUkWf9M+luLwyqUSJ3pbQJM9tiiztwdPHKrd7vTm+tggNK3B0pPk1Pikg7dzmb
mENte2tD5VlMwlBYOg3okub4p56UaIz1DeCfucPb2g8PLluMwU3KHD7oORisfgEt
IxtKiQsp/cT4qUGJENbEUB0qi6YmLDzajYdzkdR2rEV3z0V0GkS39v2itGkPE3SY
Wc1kQ+tN1/OVP6dmkRtVwJkteRt+CQ0mn/KuUvaSNQ4M+Kpz36CxEbut3NaceJr9
U0EbrDuT/AQEtklJC9cbtrfu3H4EJujdXjviiw+BdzLSOSCVQEn5BeLGg3IJK80b
3qDKjQwk1uWByuoj++k3A6bl/6Pdtxad0OXXRJYROSBLvZPcmilJBSa+aEfgehm4
FzTcSH6PV2iBxzyWEl1sHr7ylKIdEhZxA5c0DbXNSwQ8Q3RnYh02Rn8MInA5UAiQ
R365nhUgPFZ9DNHIhC/UvV9OeQHr5FAtEz+DJY/n8won00fzLxo=
=t6xl
-----END PGP SIGNATURE-----

--mjngtihEYEBVzgJq--
