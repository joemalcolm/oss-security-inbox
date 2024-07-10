Received: (qmail 18123 invoked by uid 550); 10 Jul 2024 16:25:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16218 invoked from network); 10 Jul 2024 16:24:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=michel-slm.name;
	s=MBO0001; t=1720628641;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=u9ndWNUmYDSjskq/VGPR11ImKga7oWTFsCUdXUbaHc0=;
	b=gFBfvZRv6Itu8S9FlJVHsX6p8iZUNNifmk8DozpK2cNWXOGh6QZjh5x2OB94t1LnhRzj9g
	ylq0zhhplHbqIJRJFGjl6JdJWHwJEYpVXIE1hfhsisDO2Z7+epiPifzN+GBJ8rZDU+xa03
	sLIC5deuw1AoGTUcIJaZcV3SWYsYHVXagbmE9bs7uy/BbSDKbhNgLqR6D4EKFSpVs6AmfH
	NkdmJVxWxUs8p1p+PyOMRvk8OPQJybuQryW8O1CMp7jtpvUd1mf66J3uAKklwUdomit5WR
	RIj/LjuFAGGM/ld4JgrgNr/G0X6/DG1vJx+I5hee81BWtr6prdcCQCiME48kOw==
Date: Wed, 10 Jul 2024 11:23:56 -0500
From: Michel Lind <michel@michel-slm.name>
To: oss-security@lists.openwall.com
Cc: davide@cavalca.name, ngompa13@gmail.com
Message-ID: <Zo61nFk8VulWf7_J@michel-fedora-PC198L6J>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="z/u/cca2vRs+WeWB"
Content-Disposition: inline
Subject: [oss-security] linux-distros application for CentOS Project's Hyperscale SIG

--z/u/cca2vRs+WeWB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

I am submitting this application on behalf of CentOS Project's Hyperscale S=
IG.

Myself (Michel Lind), as well as Davide Cavalca and Neal Gompa (SIG co-chai=
rs), would be joining if approved.
  https://sigs.centos.org/hyperscale/sig/membership/


1. Be an actively maintained Unix-like operating system distro with substan=
tial use of Open Source components

  We actively maintain CentOS Stream Hyperscale https://sigs.centos.org/hyp=
erscale/communication/reports/. It is based on CentOS Stream with key packa=
ges upgraded or rebuilt with additional features enabled, intended for larg=
e-scale enterprise deployments but also potentially on modern desktops.

Hyperscale can be installed on x86_64 and aarch64 desktops via https://mirr=
or.stream.centos.org/SIGs/9-stream/hyperscale/images/experimental/ - and Ce=
ntOS Stream installations can be converted in place (see https://sigs.cento=
s.org/hyperscale/content/repositories/main/).

2. Have a userbase not limited to your own organization

  Our membership and deliverables are open to anyone who wishes to join; co=
ntributors have included companies such as Meta, Datto, Twitter/X, and Inte=
l, as well as individuals
=20=20
3. Have a publicly verifiable track record, dating back at least 1 year and=
 continuing to present day, of fixing security issues (including some that =
had been handled on (linux-)distros, meaning that membership would have bee=
n relevant to you) and releasing the fixes within 10 days (and preferably m=
uch less than that) of the issues being made public (if it takes you ages t=
o fix an issue, your users wouldn't substantially benefit from the addition=
al time, often around 7 days and sometimes up to 14 days, that list members=
hip could give you)

  Since we provide an overlay on top of CentOS Stream and EPEL, we generall=
y inherit updates as they became available - and monitor issues as soon as =
they are disclosed.

Between the three of us we have a track record of pushing EPEL security upd=
ates: https://bodhi.fedoraproject.org/updates/?search=3D&releases=3DEPEL-8&=
releases=3DEPEL-9&releases=3DEPEL-9N&releases=3DEPEL-8N&type=3Dsecurity&use=
r=3Dsalimma%2C+dcavalca%2C+ngompa

  We are increasingly provided updates that our users need before they are =
fixed in CentOS Stream, for example:
=20=20
  - pmix: https://cbs.centos.org/koji/buildinfo?buildID=3D50809 built on Se=
p 15 2023 addressing https://nvd.nist.gov/vuln/detail/CVE-2023-41915 from S=
ep 9 2023 (commit pushed for c9s on Nov 2 2023 - https://gitlab.com/redhat/=
centos-stream/rpms/pmix/-/commit/d674de0cb5d716940f01e937f2a7bb79fbd81f5c)
  - openssh: https://cbs.centos.org/koji/buildinfo?buildID=3D54523 built on=
 Jul 2 2024 addressing CVE-2024-6387 from Jul 1 2024 (fixed in Stream Jul 4)

4. Not be (only) downstream or a rebuild of another distro (or else we need=
 convincing additional justification of how the list membership would enabl=
e you to release fixes sooner, presumably not relying on the upstream distr=
o having released their fixes first?)

Our user base uses CentOS Stream in production, while the upstream project =
mostly uses it for integrating changes into upcoming RHEL releases; as such=
 we not only ship newer packages (e.g. kernel, systemd, qemu) with features=
 not enabled in CentOS Stream and RHEL (e.g. Btrfs) but we also need to pat=
ch security issues faster, given Stream receives urgent security fixes only=
 after they are released for RHEL.

See examples in previous points for some issues we fixed independently of u=
pstream distro - as we ship more packages in the future to support more use=
 cases, the need to release security fixes faster will only grow.

5. Be a participant and preferably an active contributor in relevant public=
 communities (most notably, if you're not watching for issues being made pu=
blic on oss-security, which are a superset of those that had been handled o=
n (linux-)distros, then there's no valid reason for you to be on (linux-)di=
stros)

We are individually members of oss-security, in addition to various distrib=
ution development lists

6. Accept the list policy (see above)

accepted

7. Be able and willing to contribute back (see above), preferably in specif=
ic ways announced in advance (so that you're responsible for a specific are=
a and so that we know what to expect from which member), and demonstrate ac=
tual contributions once you've been a member for a while

The three of us handle security related issues, with Neal Gompa focusing on=
 issues related to release engineering, and Davide and I on updates in gene=
ral especially those that are built with specific customizations.

8. Be able and willing to handle PGP-encrypted e-mail

We are able and willing

9. Have someone already on the private list, or at least someone else who h=
as been active on oss-security for years but is not affiliated with your di=
stro nor your organization, vouch for at least one of the people requesting=
 membership on behalf of your distro (then that one vouched-for person will=
 be able to vouch for others on your team, in case you'd like multiple peop=
le subscribed)

Jonathan Wright from AlmaLinux can vouch for us

Best regards,

--=20
 _o) Michel Lind
_( ) identities: https://keyoxide.org/5dce2e7e9c3b1cffd335c1d78b229d2f7ccc0=
4f2

--z/u/cca2vRs+WeWB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRdzi5+nDsc/9M1wdeLIp0vfMwE8gUCZo61lwAKCRCLIp0vfMwE
8lcxAQCQT1LuaDJeTdiDND3dcxqBXv4QAvfLttjd2NoPpNYo8AD/bLPXN6kqrzDJ
zUaLyXXGYSRkMgIgVptBl1cCvXkWBQE=
=97Wx
-----END PGP SIGNATURE-----

--z/u/cca2vRs+WeWB--
