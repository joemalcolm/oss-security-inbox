Received: (qmail 9508 invoked by uid 550); 22 May 2022 19:55:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8018 invoked from network); 22 May 2022 19:53:23 -0000
From: Sam James <sam@gentoo.org>
Content-Type: multipart/signed;
	boundary="Apple-Mail=_07EF7AB9-0719-46A2-833D-2F1712EBB49B";
	protocol="application/pgp-signature";
	micalg=pgp-sha512
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
Date: Sun, 22 May 2022 20:53:06 +0100
References: <20220515162740.GA20526@openwall.com> <YoKiGWAX4E/mbGWB@kroah.com>
 <20220522194644.GB21330@openwall.com>
To: oss-security@lists.openwall.com
In-Reply-To: <20220522194644.GB21330@openwall.com>
Message-Id: <80A23796-B927-434A-BC10-C71AE0CAE95E@gentoo.org>
X-Mailer: Apple Mail (2.3696.100.31)
Subject: Re: [oss-security] linux-distros list policy and Linux kernel

--Apple-Mail=_07EF7AB9-0719-46A2-833D-2F1712EBB49B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



> On 22 May 2022, at 20:46, Solar Designer <solar@openwall.com> wrote:
>=20
> On Mon, May 16, 2022 at 09:12:25PM +0200, Greg KH wrote:
>> Taking this a bit further, why is the kernel "special" for something
>> like this?  Why wouldn't this also apply to any other project with a
>> reasonable number of developers where you want additional review and
>> acceptance of changes before the world is notified that an issue was
>> fixed?  That allows issues to be fixed, and to be in place on users
>> systems before the issue is made public.
>>=20
>> I would imagine that projects like Kubernetes, or Jenkins, or Docker or
>> Mozilla or Chrome or other large systems would also fall into this
>> category.  Heck, smaller projects too, the size shouldn't matter, what
>> matters is that users have the ability to upgrade before security issues
>> are told to the world, ensuring that user's systems are safe.
>=20
> For issues commonly brought to (linux-)distros, we currently only
> encounter this sort of conflicting preferences with the Linux kernel
> community.  I guess some other projects also release silent fixes that
> are only later documented to have known security relevance.  Maybe our
> policy plays a role in non-reporting of such issues to distros, or maybe
> not.  For example, we generally do not receive reports of
> vulnerabilities in Firefox and Chrome/ium to the distros list, but I
> don't recall anyone ever expressing any unhappiness about that - neither
> those projects nor the distros.  So it's kind of fine?
>=20

I (and ajak) have expressed some frustration with how WebKit handles
their disclosures but that's not something you (or *-distros) is able
to control.

=46rom what I understand of Firefox and Chromium, they both have
sufficient CI abilities and internal review to not have the same kind
of problem the kernel has (with its open development model).

>> it's your list, not mine, if
>> you are tired of running it, I totally understand.
>=20
> A bit tired, yes, but that's in part because of us fighting each other's
> windmills.
>=20

Thank you for continuing to do it.

> Alexander

best,
sam


--Apple-Mail=_07EF7AB9-0719-46A2-833D-2F1712EBB49B
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQGTBAEBCgB9FiEEYOpPv/uDUzOcqtTy9JIoEO6gSDsFAmKKlKJfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDYw
RUE0RkJGRkI4MzUzMzM5Q0FBRDRGMkY0OTIyODEwRUVBMDQ4M0IACgkQ9JIoEO6g
SDt9UggAqZUZBdY1iUXlZU+a5zeuSdRbKwjukllLWBHXYLIuGnR2An0Skvc84qq9
rzBo/g2QA94nxYnaGwMY7Cfad7pVfICkrKdexvzAPunb1o8Yh+7yH1f0igEz/Lq9
/YrFJe9aQ8BlCDcF9LAdLvrl7H839uwz47V08AUAIX8XYqvHBDYli4mTg+xRD7nc
pt/zCvnxQyzQ3DZQ8dH+VoLh/C6tffcnuDau2jhz7WHuj/bwIZ2dqAlG+v6FkY/t
5pscDHqAWuMI/NXl1fWKpsCiT+614fr9x7dsYxpljiFKKpvATOSUunisUSlIkYwY
ovhKjH2FDAGt4l5Pf4HC6GEhBXnePw==
=E2M8
-----END PGP SIGNATURE-----

--Apple-Mail=_07EF7AB9-0719-46A2-833D-2F1712EBB49B--
