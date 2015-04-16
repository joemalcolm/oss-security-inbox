X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3405" "Thursday" "16" "April" "2015" "13:17:07" "-0500" "Tyler Hicks" "tyhicks@canonical.com" "<20150416181706.GB7120@boyd>" "92" "Re: [oss-security] Re: Problems in automatic crash analysis frameworks" nil nil nil "4" "2015041618:17:07" "[oss-security] Re: Problems in automatic crash analysis frameworks" (number mark "        tyhicks@cano Apr 16   92/3405  " thread-indent "\"Re: [oss-security] Re: Problems in automatic crash analysis frameworks\"\n") "<CAJ_zFk+-9p4GH3-Z4qcyrURbMA9oMphOXZOE43PXVMLOCdpW1w@mail.gmail.com>" ("<20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org>" "<552D3A20.8040909@canonical.com>" "<CAJ_zFkLtZteX-ge_=9jE8KHxDmKZ=7cwWUmwkHwGHbnCpiQWZA@mail.gmail.com>" "<CAJ_zFk+7eV52Ui1+aV+BKhc68zKi3pmPsgPmFoOsw8Qg6dHPAQ@mail.gmail.com>" "<CAJ_zFkLA=Qn_exvDW8Rym1jx_jS0vo=vuTJ7ON71qk8BSB=1dw@mail.gmail.com>" "<20150414221607.GA5795@boyd>" "<CAJ_zFkLHirkfhNbHGne8V_n2RJ_kS_LL7MLA8_Sw3Tp-Q85T8Q@mail.gmail.com>" "<CAJ_zFkLAM+5DpyS4L6aqiyKT4AZY7fbW+5M7+=rBYNcE-Cr6aw@mail.gmail.com>" "<CAJ_zFk+-9p4GH3-Z4qcyrURbMA9oMphOXZOE43PXVMLOCdpW1w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32686 invoked by uid 550); 16 Apr 2015 18:17:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32665 invoked from network); 16 Apr 2015 18:17:22 -0000
Message-ID: <20150416181706.GB7120@boyd>
References: <20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org>
 <552D3A20.8040909@canonical.com>
 <CAJ_zFkLtZteX-ge_=9jE8KHxDmKZ=7cwWUmwkHwGHbnCpiQWZA@mail.gmail.com>
 <CAJ_zFk+7eV52Ui1+aV+BKhc68zKi3pmPsgPmFoOsw8Qg6dHPAQ@mail.gmail.com>
 <CAJ_zFkLA=Qn_exvDW8Rym1jx_jS0vo=vuTJ7ON71qk8BSB=1dw@mail.gmail.com>
 <20150414221607.GA5795@boyd>
 <CAJ_zFkLHirkfhNbHGne8V_n2RJ_kS_LL7MLA8_Sw3Tp-Q85T8Q@mail.gmail.com>
 <CAJ_zFkLAM+5DpyS4L6aqiyKT4AZY7fbW+5M7+=rBYNcE-Cr6aw@mail.gmail.com>
 <CAJ_zFk+-9p4GH3-Z4qcyrURbMA9oMphOXZOE43PXVMLOCdpW1w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="CdrF4e02JqNVZeln"
Content-Disposition: inline
In-Reply-To: <CAJ_zFk+-9p4GH3-Z4qcyrURbMA9oMphOXZOE43PXVMLOCdpW1w@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: oss-security@lists.openwall.com,
	Assign a CVE Identifier <cve-assign@mitre.org>,
	security <security@ubuntu.com>,
	=?iso-8859-1?Q?St=E9phane?= Graber <stgraber@ubuntu.com>
Date: Thu, 16 Apr 2015 13:17:07 -0500
From: Tyler Hicks <tyhicks@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Problems in automatic crash analysis
 frameworks
To: Tavis Ormandy <taviso@google.com>

--CdrF4e02JqNVZeln
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2015-04-15 20:05:30, Tavis Ormandy wrote:
> On Wed, Apr 15, 2015 at 12:55 PM, Tavis Ormandy <taviso@google.com> wrote:
> > On Wed, Apr 15, 2015 at 11:48 AM, Tavis Ormandy <taviso@google.com> wro=
te:
> >> FWIW, I verified this is exploitable.
> >>
> >
> > Here's the script I used to verify, it should create the file
> > /etc/rootfiletest. By using the partial trick or creating parse
> > errors, this is easy to turn into a root shell.
>=20
> It looks like there's a new patch here:
> https://launchpadlibrarian.net/203416094/apport.diff
>=20
> In get_parentns_pid code, it looks like it has the same problem as
> before in that there's no guarantee ppid isn't recycled (possibly by
> root). Also, you can easily get an untrusted process reparented to
> init. If you're not convinced of this, try this:
>=20
> $ bash -c 'sleep 600 & echo $!; disown -ah'
> 28396
> $ egrep '(PPid|Name):' /proc/28396/status
> Name: sleep
> PPid: 1
>=20
> I'm almost certain it's not possible for the core_patten handler to
> perform any meaningful analysis on the parent process.
>=20
> This code is definitely not sufficient:
>=20
>         os.chdir("/proc/%s/" % ppid)
>         ...
>         with open("status", "r") as fd:
>         ....
>                             if line.startswith("Uid:"):
>=20
>=20
> Because you can just wait for ppid to be recycled before the chdir().
> The UDS inode validation is a neat idea, but I don't think it works -
> the obvious case is reparenting to init and then using one of the
> inode numbers init uses, but even if you special-case init, pid
> recycling is possible.
>=20
> I saw the duplicate inode checks, but that doesn't work....it's racy,
> and you can just use a netlink socket or similar.
>=20
> Once you've passed this check, it's a controlled lxc.Container() and
> you can use my previous PoC to verify that is exploitable.

We've decided to disable support for gathering crash reports of
containerized processes (see USN-2569-2).

We may reintroduce the feature, with a different implementation, in the
future. The current idea is described in this feature bug:

  https://launchpad.net/bugs/1445064

Please leave any comments on the proposed design in the feature bug.

Many thanks for thinking through the old implementation and follow up
patches, Tavis.

Tyler

--CdrF4e02JqNVZeln
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVL/yiAAoJENaSAD2qAscKcqwP/iw2Lj+m/N5Ldgzzh1tcyqWC
Dykeac63sXIZWJgu7nUVTU16SVS5sxCgFrlmwe2pJfwI6QtvEn0rPruFvpLe96d7
sfDDlOU7bHrvNwsmxhnKwez6DkOQVHDkHvEd97+bdTzg9ML/ywQURbYBo5UDqkmK
STWR0KbG8r6X4OslARRHVflDGpEgVG6UXHjAazQExQRVJEDybyJbl0SHCBBuxkCI
YLQv9LskqEjum6uA4knNpbCyFRcDitIak4IFoKRbcjSvMCLU5ZuoBLQzicqCqSoh
si1rQLkObogJadti5tUnKl3ZL1bpx1QF7W6zH++o/8/bW4nYFnoM4PY3UcifHUKg
yipvctAEX4LMiLtx1ubj7GeD1fuLhCz461fZtCxg6Ncejob1HE2QI/iofT5Fvhao
ViMkcL2NyhMI5iAPsdEjbP3RSjy80NXlxbmZd5zSXHigsTTm0H+0Dh9H5Kr1rj0n
6g6WsAtr8i9D8ev8HK7MNfOtxJsyHhYGRr6Zq5/gQkr+YD1/YCY588EMfSzv2Qgp
P31T9yPMtQvSNX4WbOcdJhZBNf7RxQZke1wFeN5WnN0AC8uTbezx/1CXmAm2fhsY
qtGc+Qx2e0FCAYjGuxCDk/1+UH3bpxcpoXw1F8vLj0i30VyNqPIpmXYniV7cPVaC
Z4L5vOYMavFvScfl2VVv
=zSNx
-----END PGP SIGNATURE-----

--CdrF4e02JqNVZeln--
