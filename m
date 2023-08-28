Received: (qmail 13839 invoked by uid 550); 28 Aug 2023 18:54:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13818 invoked from network); 28 Aug 2023 18:54:04 -0000
Date: Mon, 28 Aug 2023 18:53:50 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <20230828185350.pw5nasedkujiatvp@yuggoth.org>
References: <20230825222359.GA10424@openwall.com>
 <ZOuqk2+3EMBV3pPy@1wt.eu>
 <20230828180518.GA29293@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lth4fjknv33urxog"
Content-Disposition: inline
In-Reply-To: <20230828180518.GA29293@openwall.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: Re: [oss-security] linux-distros list policy and Linux kernel, again

--lth4fjknv33urxog
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2023-08-28 20:05:18 +0200 (+0200), Solar Designer wrote:
[...]
> So the real problem may be that (linux-)distros is misunderstood
> as permanently-private rather than temporarily-private.
> Unfortunately, I don't know how to address that reliably.  Even
> with automated delayed publication, some people would initially
> have the wrong idea... maybe unless they have to pass through a
> web page with the public archives before finding the posting
> address?
[...]

I know a defect tracker is (perhaps a lot) different from a mailing
list, but on one of the larger projects where I act as a
vulnerability coordinator we have a policy which includes a maximum
embargo duration. The project uses defect trackers which have the
ability to switch reports between public and private visibility, and
on intake of any initially private report a vulnerability
coordinator calculates the date of the embargo expiration and
notifies everyone involved in that discussion what that date is (in
our case by prepending a disclaimer to the report description which
also includes policy items like reminders not to redistribute while
the embargo is in effect). Our instructions on how to report
suspected vulnerabilities also mention this policy.

While we've occasionally had to redact some report content in cases
where users unwittingly attached sensitive data, I don't think we've
encountered a case of reporters being surprised that the content of
their reports will eventually be exposed to the public. Before
putting a limit on how long reports could remain private, we had
cases of some reports sitting unfixed or even uninvestigated and
effectively ignored by developers of the affected subsystems for
years. We determined, as a project, that it was better to have a
forcing action so that the community would at least be aware of
potential defects, and could perhaps even assist in making progress
on some of them where the usual maintainers lacked time or interest
in doing so.

Maybe another significant difference is that our embargoes have an
expiration 6.5x longer than that of the linux-distros ML, and we
have (on rare occasion) granted extensions of up to a week or two in
cases where there was active work underway but thorough testing and
vetting required a little additional time. To your point though, our
vulnerability coordinators are generally the ones to notify the
linux-distros ML of upcoming publications, and our documented
process includes a reminder not to notify that list until just prior
to a scheduled disclosure (generally no more than 5 business days in
advance), in order to comply with the list's policy.
--=20
Jeremy Stanley

--lth4fjknv33urxog
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmTs7ThfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCn8ixAAlymSMxgNwnURwaTvBDyWoSdDPrJXOqMPWIw2eWr5Xw94QaRjrYPBYjmZ
f2qh8q0G4kG1VQttdZ2DRi72PHoRrx940iVSMeuAarhI79PFkYngcC1Oz3coiI4Y
fbaOU2FM+4apeffBpYcUSbYKKuzwTmifBsYd6dtFmcsGnsF79DrZNhvsjxffLpdZ
OlwGHh55jCGDazzezkhBbYdf4uCTlvtOnDKyTrxmd8WB2sp7VYX/NPqHduXUfP/O
JwUVfyShpLwW8iKqpd2gAkQZMyVMbJOMRydI48oFYZ/TOQifGONAn2EK3xp2ZGBj
Tg2pHYm96kN6OkRlHXv0Ee7nZayK/bAZuZ6nMfAOFfo899pT3bd0TIc3SzBrKpvg
kMxkR/EYvlRZhgYMBYrcN5+giyqmhsVrGcJ2qf0e/wKIEIjAhehQZY5lrAyAfxTr
txQEaJ7Wi/s/C0Efn51LVUJEK3aQ27d54nOp+GgqR/1fpLkLgy4c89znBv7j816+
s2BVQcAv3Q3I11Mx8Z4iGLF2PNCP4K5rjkAH1KWwHzVEOt5bPLvx5NfiPo2uPJTU
nSOpqQZE7IKZ8daDD66x3UHcwVVoUCcM4y/F5QEF0DqBikfRZvxdFVzwAEslqtcp
kJ4A8mffqtq9cM003rGpXC7sg1hgtBuCoqHweyeWZ+JsjcMYbbI=
=3uoA
-----END PGP SIGNATURE-----

--lth4fjknv33urxog--
