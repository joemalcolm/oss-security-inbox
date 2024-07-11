Received: (qmail 5351 invoked by uid 550); 11 Jul 2024 12:39:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31782 invoked from network); 11 Jul 2024 01:54:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=neilhanlon-com.20230601.gappssmtp.com; s=20230601; t=1720662850; x=1721267650; darn=lists.openwall.com;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=g/N3o4gWR8uH/LRFI+TqdnBJplwatIthu/4qLYHAwPA=;
        b=QcAT+07HbM8MbHdQBCuJOs6wqdYR7qZkZH/zEeaY8L/riSPfN6QOpL5abHQhNjpGJ5
         i8EmziWmA0l5va0Q06V4h+Qgyxa9znCLxOpwBwrh91WO70A3o4Egn9QxKm/7E9nMhtbO
         9zubOsk10Sq3HQc2RNQO0m9ZcdD73KwzkXH6cnsLdmkC/rYw6lrNonS6+Hh86erwicCH
         gGNinhL0e0eY5Rk0Rdgax1sdUW9rlfvAY6J2A65BhWg4K2bFZHI32Hv5OKA5++VTejqw
         6RFBEe0z+2ykn7sKmI2/baRZQa5XHXZ6fnOYMA7IBEo7revicv3JdXyOCrUJYtPDeenb
         AD7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720662850; x=1721267650;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g/N3o4gWR8uH/LRFI+TqdnBJplwatIthu/4qLYHAwPA=;
        b=wCtgfgQ0OmapOFT+fwrNLv104bgJYQvrOLbM8S7QC17X19O5/Ro8YYAQgU4YZjmjyk
         r/QzE/a12VyFV0jqvHncZOq2Rr8jJHZZ/wK31bUkqyTZmbb1uzRMwBhNO6JPJtKKnvnA
         Ht+3k6cSDWKnUlL3A8UaGzPPwPeXe02zyliWxejkewWBXAOT2lUJOCgXNj8F+HGgmhEQ
         Wnsi269HQwU7MySJbIqqqQV6ejDYNxFZMI8ccxp8nmXgSpKAM+vLopTOTbcMWQ58KWIJ
         wkfFQzDHizcauHsnTdAt2TTzztRI/YbInhSnp0LtW7Nhb/G/LnYO5pL5x/0McERhtFBQ
         GYUw==
X-Gm-Message-State: AOJu0YwxklItVALA3AICPvinMOiR8Ing5Mlm6RhtvuXwNnztZiwKr/j3
	+dzge9JJRAZ4b0JvUJgCn0KLK0ioxSpIccwNL8KasvIqoWxGjuBULe7Kz0vAVD/lMPyZWnweCtm
	JAA8Nsw==
X-Google-Smtp-Source: AGHT+IFK097hjVEwJxcv/XBda1rzktdtjiOo/19mFe8X6elbV0GsPqi4lrl8Cgq3KHps7CzjaXTSHA==
X-Received: by 2002:a81:8d0a:0:b0:646:49de:5dfd with SMTP id 00721157ae682-658ef4431ecmr65681797b3.25.1720662850248;
        Wed, 10 Jul 2024 18:54:10 -0700 (PDT)
Date: Wed, 10 Jul 2024 21:54:08 -0400
From: Neil Hanlon <neil@shrug.pw>
To: oss-security@lists.openwall.com
Cc: davide@cavalca.name, ngompa13@gmail.com
Message-ID: <swfoapbwx3uec2sslyw4gjsi6aggq3ag2ktlh3t5b22igtgiqk@nguq3v2oyhyg>
References: <Zo61nFk8VulWf7_J@michel-fedora-PC198L6J>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yparpz3kqskzbt5j"
Content-Disposition: inline
In-Reply-To: <Zo61nFk8VulWf7_J@michel-fedora-PC198L6J>
Subject: Re: [oss-security] linux-distros application for CentOS Project's
 Hyperscale SIG

--yparpz3kqskzbt5j
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 10.07.2024 11:23, Michel Lind wrote:
>I am submitting this application on behalf of CentOS Project's Hyperscale =
SIG.
>
>Myself (Michel Lind), as well as Davide Cavalca and Neal Gompa (SIG co-cha=
irs), would be joining if approved.
>  https://sigs.centos.org/hyperscale/sig/membership/
>
>
>1. Be an actively maintained Unix-like operating system distro with substa=
ntial use of Open Source components
>
>  We actively maintain CentOS Stream Hyperscale https://sigs.centos.org/hy=
perscale/communication/reports/. It is based on CentOS Stream with key pack=
ages upgraded or rebuilt with additional features enabled, intended for lar=
ge-scale enterprise deployments but also potentially on modern desktops.
>
>Hyperscale can be installed on x86_64 and aarch64 desktops via https://mir=
ror.stream.centos.org/SIGs/9-stream/hyperscale/images/experimental/ - and C=
entOS Stream installations can be converted in place (see https://sigs.cent=
os.org/hyperscale/content/repositories/main/).
>
>2. Have a userbase not limited to your own organization
>
>  Our membership and deliverables are open to anyone who wishes to join; c=
ontributors have included companies such as Meta, Datto, Twitter/X, and Int=
el, as well as individuals
>
>3. Have a publicly verifiable track record, dating back at least 1 year an=
d continuing to present day, of fixing security issues (including some that=
 had been handled on (linux-)distros, meaning that membership would have be=
en relevant to you) and releasing the fixes within 10 days (and preferably =
much less than that) of the issues being made public (if it takes you ages =
to fix an issue, your users wouldn't substantially benefit from the additio=
nal time, often around 7 days and sometimes up to 14 days, that list member=
ship could give you)
>
>  Since we provide an overlay on top of CentOS Stream and EPEL, we general=
ly inherit updates as they became available - and monitor issues as soon as=
 they are disclosed.
>
>Between the three of us we have a track record of pushing EPEL security up=
dates: https://bodhi.fedoraproject.org/updates/?search=3D&releases=3DEPEL-8=
&releases=3DEPEL-9&releases=3DEPEL-9N&releases=3DEPEL-8N&type=3Dsecurity&us=
er=3Dsalimma%2C+dcavalca%2C+ngompa
>
>  We are increasingly provided updates that our users need before they are=
 fixed in CentOS Stream, for example:
>
>  - pmix: https://cbs.centos.org/koji/buildinfo?buildID=3D50809 built on S=
ep 15 2023 addressing https://nvd.nist.gov/vuln/detail/CVE-2023-41915 from =
Sep 9 2023 (commit pushed for c9s on Nov 2 2023 - https://gitlab.com/redhat=
/centos-stream/rpms/pmix/-/commit/d674de0cb5d716940f01e937f2a7bb79fbd81f5c)
>  - openssh: https://cbs.centos.org/koji/buildinfo?buildID=3D54523 built o=
n Jul 2 2024 addressing CVE-2024-6387 from Jul 1 2024 (fixed in Stream Jul =
4)
>
>4. Not be (only) downstream or a rebuild of another distro (or else we nee=
d convincing additional justification of how the list membership would enab=
le you to release fixes sooner, presumably not relying on the upstream dist=
ro having released their fixes first?)
>
>Our user base uses CentOS Stream in production, while the upstream project=
 mostly uses it for integrating changes into upcoming RHEL releases; as suc=
h we not only ship newer packages (e.g. kernel, systemd, qemu) with feature=
s not enabled in CentOS Stream and RHEL (e.g. Btrfs) but we also need to pa=
tch security issues faster, given Stream receives urgent security fixes onl=
y after they are released for RHEL.
>
>See examples in previous points for some issues we fixed independently of =
upstream distro - as we ship more packages in the future to support more us=
e cases, the need to release security fixes faster will only grow.

Indeed, the Hyperscale SIG applies patches and versions of software that
have a different support and feature scope compared to CentOS Stream
Linux. Combined with its significant user base and existing strategy for
managing public vulnerabilities, it indicates that handling embargoed
releases would be managed professionally.

>
>5. Be a participant and preferably an active contributor in relevant publi=
c communities (most notably, if you're not watching for issues being made p=
ublic on oss-security, which are a superset of those that had been handled =
on (linux-)distros, then there's no valid reason for you to be on (linux-)d=
istros)
>
>We are individually members of oss-security, in addition to various distri=
bution development lists
>
>6. Accept the list policy (see above)
>
>accepted
>
>7. Be able and willing to contribute back (see above), preferably in speci=
fic ways announced in advance (so that you're responsible for a specific ar=
ea and so that we know what to expect from which member), and demonstrate a=
ctual contributions once you've been a member for a while
>
>The three of us handle security related issues, with Neal Gompa focusing o=
n issues related to release engineering, and Davide and I on updates in gen=
eral especially those that are built with specific customizations.
>
>8. Be able and willing to handle PGP-encrypted e-mail
>
>We are able and willing
>
>9. Have someone already on the private list, or at least someone else who =
has been active on oss-security for years but is not affiliated with your d=
istro nor your organization, vouch for at least one of the people requestin=
g membership on behalf of your distro (then that one vouched-for person wil=
l be able to vouch for others on your team, in case you'd like multiple peo=
ple subscribed)
>
>Jonathan Wright from AlmaLinux can vouch for us

Although I am not a frequent contributor to the oss-security list nor a
member of the distros list, I am happy to vouch for Michel, Davide, and
Neal. All three are respected members of various open source
communities. In my experience over the past few years, they have shown a
strong commitment to ensuring timely, secure updates across the Linux
ecosystem. I have no reservations about their inclusion in these lists,
especially considering their involvement in Fedora.

>
>Best regards,
>
>--=20
> _o) Michel Lind
>_( ) identities: https://keyoxide.org/5dce2e7e9c3b1cffd335c1d78b229d2f7ccc=
04f2



--yparpz3kqskzbt5j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvdBw7ReozAoY7yvtwW8Iew8cPNAUCZo87QAAKCRBwW8Iew8cP
NE0qAQCp6BbnVrK+TJ39lFfxEPQKhDZ2SP1jcoUuLf3DVCdK+QEA/s2BjE6FcV4F
srnCrPKCs+S0s90g7jJSGA2cG+UVtgo=
=0PqG
-----END PGP SIGNATURE-----

--yparpz3kqskzbt5j--
