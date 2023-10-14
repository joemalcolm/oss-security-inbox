Received: (qmail 32061 invoked by uid 550); 14 Oct 2023 12:53:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32034 invoked from network); 14 Oct 2023 12:53:43 -0000
Date: Sat, 14 Oct 2023 12:53:30 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <20231014125330.72sxum33ud5sizix@yuggoth.org>
References: <652920e5.c80a0220.3bcf7.2251@mx.google.com>
 <956475122.7707678.1697228495449.JavaMail.zimbra@hlrs.de>
 <CAEg-Je-uxMbiYDADX=+eyTQF+xnjAYA0u1HoygqDa+G=Y=4f-Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qwvvgnxlpo6fofgm"
Content-Disposition: inline
In-Reply-To: <CAEg-Je-uxMbiYDADX=+eyTQF+xnjAYA0u1HoygqDa+G=Y=4f-Q@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: Re: [oss-security] linux-distros list membership application - CIQ
 Rocky Linux Security Team

--qwvvgnxlpo6fofgm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2023-10-13 23:19:18 -0400 (-0400), Neal Gompa wrote:
[...]
> The point I'm making is that SIGs do not count because they cannot
> obey embargo regulations. No open project or community project can
> do that without having some mechanism for private controls, which
> is antithetical to the community process. They fundamentally are
> ineligible to join because they cannot keep anything secret.

This is the part of your argument I understand the least. Is your
objection specific to the Rocky Linux community's definition of the
term "Special Interest Group," or a preconceived notion on your part
as to what that term means more generally, or an opinion that
volunteer community members are simply incapable of maintaining
embargoes and only people employed by a company to that purpose are
able to do so reliably?

I participate in an open software community, as a member of subteam
on a SIG with a mandate to perform vulnerability management on
behalf of the rest of the community. We set and manage the project's
embargoes and coordinate its public disclosure process (including
supplying advance notice to the linux-distros list as well as other
downstream stakeholders).

When we've experienced premature disclosures, it's been because
developers under the employ of a particular distribution have felt
pressured to notify their managers or employer's security group
about the fixes they're writing, reviewing or testing in violation
of our embargo policies, not because of a failure on the part of of
SIG members. If anything, involving people employed by a commercial
distribution is a greater liability than involving community
volunteers who are not under those same sorts of pressures.

There are a number of tools which help provide long-term
transparency for such activities, including using a defect tracker
that supports eventually switching private reports to public,
following a published process for intake and coordination efforts,
community maintenance of testsuites which can be run locally on
developers' systems to test proposed fixes in private, agreeing on
conventions for a private code review process, etc.

Yes, trying to maintain the secrecy of embargoes is at odds to
participating in an open community project with publicly accessible
code review and CI/CD systems, it's been the subject of conference
talks I've given in the past, but it's not impossible to balance
these competing forces. I don't see how that would be different in a
GNU/Linux distribution than for any other large project.
--=20
Jeremy Stanley

--qwvvgnxlpo6fofgm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmUqj0NfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCmC5Q//RQID42clFxSOUjpOvmmE2rinXYcASMVU6GvH03aRFECYfwQSOo0FLuJQ
+SltI8BgJCEgGVVaznTukCU6qZ02TarJSabg55/dLhXEKvpSvDIBQ/xt3BwVUeev
ZwDLdQpP660IHd/lliealiIFAEwnPHLluoa7RFXpKSbOy5HSUWgu/fGBGFxxC4W2
+kZSFH8tseHnlDTmVpzFECYCjLcwbQKZZHF8aVG4IuLMY8/nllXTvGYDTxLXFEGO
v2Feb7SrMgAP41XU9KcJ/sislyrZJtIXPiCloQ/WWK6cr3pZocO8YkircAc3iRIV
ZuYyvDsQ4er0X6ojYQtt0qjzYyHYQbt8oGD1jOawvs8/CiQv16xFMQcI5rKDEFqb
MIugHKeItwiXV1pjiGuTzRD0V5yzDXjcJP+HlA2JeI5tGBC8ClARZ89LEiDnqHjq
CsdGsHKJY5XlGqddhhyuPftPVsV9tGz43K+OnEDIE6Q/OBy/xymTUoaxVzKeVXb0
FYZGqauSKZx3k9NAXb+W022IkWy6Mmw0ZluxxzUXQeF+b9xmkBPL33JBx+zKQqxc
2TfegYGozUhR7OvUuwoDhFqdSn5uJJvyifRuPMraXhCszMQr07FFj4K+qHPdBXNa
3I7fRumxsvsWYHFk+CHiWUvMJVIDvLz4VJ1IMrh8+gJ0ncJLF3M=
=0V9W
-----END PGP SIGNATURE-----

--qwvvgnxlpo6fofgm--
