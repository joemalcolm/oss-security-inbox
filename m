Received: (qmail 29808 invoked by uid 550); 10 Jul 2024 21:33:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20439 invoked from network); 10 Jul 2024 21:15:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1720646136;
	bh=41XI4DsMMQqV2nkUGESEofAIlQKquDtIl4wOPdDJFyo=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To;
	b=VnbF4kM2xnnr7oK2z0P9T4vdKPUnh4RaVBWF1URiXy3Qi3gmVwo1j0iQuN/z55STB
	 YpS7526aVUVIcYmgFjP87jAjP4vWCV0XJ/fyEiFlbmgOLhAF4nMOLZ2TC+S8+IMFXB
	 B9g6LHbNsMKiPv5R6AhU3H6Bx1sWb9TkXULkXEI48jD3IwGnY0YDyxE5O2mDUAaJCd
	 tQSZn0ZFVer0hCZ7qzdE5FCpAiQYvnbYAe5VtQZfHkf6fic7+FYaiqHFx8v7Rrxhwp
	 ixLeaPWUjdqBBlQx4yDZiEvvi4VO5S6CQ3TlYhrvUQFkr+74UUMRtKv2Ix8+JMcfsH
	 xFmDEdfsn7ffQ==
Date: Wed, 10 Jul 2024 16:15:33 -0500
From: Mark Esler <mark.esler@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <Zo759RRNseuva6zO@aeon>
References: <Zo61nFk8VulWf7_J@michel-fedora-PC198L6J>
 <Zo7mU_N9joNTZ4gV@itl-email>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="keuPC7vnSO5+L3WC"
Content-Disposition: inline
In-Reply-To: <Zo7mU_N9joNTZ4gV@itl-email>
Subject: Re: [oss-security] linux-distros application for CentOS Project's
 Hyperscale SIG

--keuPC7vnSO5+L3WC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 10, 2024 at 03:51:44PM -0400, Demi Marie Obenour wrote:
> On Wed, Jul 10, 2024 at 11:23:56AM -0500, Michel Lind wrote:
> > I am submitting this application on behalf of CentOS Project's Hypersca=
le SIG.
> >=20
> > Myself (Michel Lind), as well as Davide Cavalca and Neal Gompa (SIG co-=
chairs), would be joining if approved.
> >   https://sigs.centos.org/hyperscale/sig/membership/
> >=20
> >=20
> > 1. Be an actively maintained Unix-like operating system distro with sub=
stantial use of Open Source components
> >=20
> >   We actively maintain CentOS Stream Hyperscale https://sigs.centos.org=
/hyperscale/communication/reports/. It is based on CentOS Stream with key p=
ackages upgraded or rebuilt with additional features enabled, intended for =
large-scale enterprise deployments but also potentially on modern desktops.
> >=20
> > Hyperscale can be installed on x86_64 and aarch64 desktops via https://=
mirror.stream.centos.org/SIGs/9-stream/hyperscale/images/experimental/ - an=
d CentOS Stream installations can be converted in place (see https://sigs.c=
entos.org/hyperscale/content/repositories/main/).
> >=20
> > 2. Have a userbase not limited to your own organization
> >=20
> >   Our membership and deliverables are open to anyone who wishes to join=
; contributors have included companies such as Meta, Datto, Twitter/X, and =
Intel, as well as individuals
> >=20=20=20
> > 3. Have a publicly verifiable track record, dating back at least 1 year=
 and continuing to present day, of fixing security issues (including some t=
hat had been handled on (linux-)distros, meaning that membership would have=
 been relevant to you) and releasing the fixes within 10 days (and preferab=
ly much less than that) of the issues being made public (if it takes you ag=
es to fix an issue, your users wouldn't substantially benefit from the addi=
tional time, often around 7 days and sometimes up to 14 days, that list mem=
bership could give you)
> >=20
> >   Since we provide an overlay on top of CentOS Stream and EPEL, we gene=
rally inherit updates as they became available - and monitor issues as soon=
 as they are disclosed.
> >=20
> > Between the three of us we have a track record of pushing EPEL security=
 updates: https://bodhi.fedoraproject.org/updates/?search=3D&releases=3DEPE=
L-8&releases=3DEPEL-9&releases=3DEPEL-9N&releases=3DEPEL-8N&type=3Dsecurity=
&user=3Dsalimma%2C+dcavalca%2C+ngompa
> >=20
> >   We are increasingly provided updates that our users need before they =
are fixed in CentOS Stream, for example:
> >=20=20=20
> >   - pmix: https://cbs.centos.org/koji/buildinfo?buildID=3D50809 built o=
n Sep 15 2023 addressing https://nvd.nist.gov/vuln/detail/CVE-2023-41915 fr=
om Sep 9 2023 (commit pushed for c9s on Nov 2 2023 - https://gitlab.com/red=
hat/centos-stream/rpms/pmix/-/commit/d674de0cb5d716940f01e937f2a7bb79fbd81f=
5c)
> >   - openssh: https://cbs.centos.org/koji/buildinfo?buildID=3D54523 buil=
t on Jul 2 2024 addressing CVE-2024-6387 from Jul 1 2024 (fixed in Stream J=
ul 4)
> >=20
> > 4. Not be (only) downstream or a rebuild of another distro (or else we =
need convincing additional justification of how the list membership would e=
nable you to release fixes sooner, presumably not relying on the upstream d=
istro having released their fixes first?)
> >=20
> > Our user base uses CentOS Stream in production, while the upstream proj=
ect mostly uses it for integrating changes into upcoming RHEL releases; as =
such we not only ship newer packages (e.g. kernel, systemd, qemu) with feat=
ures not enabled in CentOS Stream and RHEL (e.g. Btrfs) but we also need to=
 patch security issues faster, given Stream receives urgent security fixes =
only after they are released for RHEL.
> >=20
> > See examples in previous points for some issues we fixed independently =
of upstream distro - as we ship more packages in the future to support more=
 use cases, the need to release security fixes faster will only grow.
> >=20
> > 5. Be a participant and preferably an active contributor in relevant pu=
blic communities (most notably, if you're not watching for issues being mad=
e public on oss-security, which are a superset of those that had been handl=
ed on (linux-)distros, then there's no valid reason for you to be on (linux=
-)distros)
> >=20
> > We are individually members of oss-security, in addition to various dis=
tribution development lists
> >=20
> > 6. Accept the list policy (see above)
> >=20
> > accepted
> >=20
> > 7. Be able and willing to contribute back (see above), preferably in sp=
ecific ways announced in advance (so that you're responsible for a specific=
 area and so that we know what to expect from which member), and demonstrat=
e actual contributions once you've been a member for a while
> >=20
> > The three of us handle security related issues, with Neal Gompa focusin=
g on issues related to release engineering, and Davide and I on updates in =
general especially those that are built with specific customizations.
> >=20
> > 8. Be able and willing to handle PGP-encrypted e-mail
> >=20
> > We are able and willing
> >=20
> > 9. Have someone already on the private list, or at least someone else w=
ho has been active on oss-security for years but is not affiliated with you=
r distro nor your organization, vouch for at least one of the people reques=
ting membership on behalf of your distro (then that one vouched-for person =
will be able to vouch for others on your team, in case you'd like multiple =
people subscribed)
> >=20
> > Jonathan Wright from AlmaLinux can vouch for us
> >=20
> > Best regards,
> >=20
> > --=20
> >  _o) Michel Lind
> > _( ) identities: https://keyoxide.org/5dce2e7e9c3b1cffd335c1d78b229d2f7=
ccc04f2
>=20
> I know that at least Neal Gompa is also a Fedora developer.  Would it
> be permissible for him to also handle security patches for Fedora, if
> Fedora is also affected?
> --=20
> Sincerely,
> Demi Marie Obenour (she/her/hers)
> Invisible Things Lab

Hi,

I am curious what this could mean for Fedora Asahi Remix [0], as the
applicants maintain both distros.

Is there interest in the Asahi SIG applying as well?

I heartily endorse the applicants membership request and appreciate
their work. Hooray for ARM \o/

Mark Esler

n.b. to clarify scopes: Asahi Linux [1] is an upstream to Fedora Asahi
Remix. Asahi Linux has partnered with and has members in the Asahi SIG
[2] to make Fedora Asahi Remix the flagship Asahi distro [3].

[0] https://fedora-asahi-remix.org/
[1] https://asahilinux.org/
[2] https://fedoraproject.org/wiki/SIGs/Asahi
[3] https://asahilinux.org/2023/08/fedora-asahi-remix/

--keuPC7vnSO5+L3WC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE0ZC278nRi4l3b3GjszvZgG6FIMYFAmaO+fIACgkQszvZgG6F
IMbd6Q/9EwROBchdAka9nfmE0ZxcGFILgZY0x2p32z6gVanjELV8406MTDMCuSpm
MxI4G5jMJmVn/jlF8LnZfoT4PjQRSJSm/FCl0zfRUDPIGMRmqJNHFhrowj1FC+8J
l23WsY+3Pr3s+VUlEwdoCEkGQrOApG2TLOYIaDpAHX73KYRzsk9V8q40+iPYbkKz
/3eQO+cirLGbQnQdiNbetdoUUkXb2JnZEbQ/wRvPNLFlJ6X5nA9ULGSBOyuUyLUX
xFn/gEQyTlU3bjI3iQdiLlfbgq5lUw1H/W4Mp4WA6GYA3j1/+bgFJb0fcesAQOGW
HuGelwlr7tunr4d5l64scuR47UwoCmzrTJzV+7ReBHuywZaN3Aj3NBZQXHkuKX2C
zH9uMwgqYaZJTvAjTM04da7LrEKfA9memRITsYtF8LbiL67OEFAkv2bjGITB4mXA
qRVL677n/3ztyd5dg+nLLjVMOzq+iq8bu8ILUAzEq4hWIGv98HiSd8YGHyrWb/IG
+ssmIvFCM02cIf6w8NxqcqokHeaHRMaiUVR3n1MaQz9eIkqaIWnRiMoux+EvCRBG
EJlonUDPTnx+gZ0zMBYSyM/fVq7lN2oRlWuUI7uETXT/WiJhA/SP4ibJPiyxSC8x
snH4Nyy1lIH6trg1kwAsYkPYrh8LuMvjenusAw4ORy2+BvKaX7Y=
=c3jD
-----END PGP SIGNATURE-----

--keuPC7vnSO5+L3WC--
