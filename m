X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9507" "Tuesday" "21" "April" "2020" "16:40:05" "-0400" "Eli Schwartz" "eschwartz@archlinux.org" "<7b81066b-debd-a8df-98b4-f8ca9a1759c0@archlinux.org>" "197" "Re: [oss-security] Pacman package manager - taking untrusted input" nil nil nil "4" "2020042120:40:05" "[oss-security] Pacman package manager - taking untrusted input" (number mark "U       eschwartz@ar Apr 21  197/9507  " thread-indent "\"Re: [oss-security] Pacman package manager - taking untrusted input\"\n") "<20200421184747.GA93069@espresso.pseudorandom.co.uk>" ("<20200421184747.GA93069@espresso.pseudorandom.co.uk>") nil nil nil nil nil nil nil "Re: [oss-security] Pacman package manager - taking untrusted input" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6030 invoked by uid 550); 22 Apr 2020 07:18:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30210 invoked from network); 21 Apr 2020 20:40:23 -0000
X-Spam-BL-Results: 
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=archlinux.org;
	s=orion; t=1587501610;
	bh=wJ9OAjUhtOZ4FNeSDOmbwdNisZGqhC0cVlMqg60GwPY=;
	h=Subject:To:References:From:Date:In-Reply-To;
	b=g763CvQlPL4xPEw9UcfwpDz2OcJ/I1xPCsSXz/KSa5UcjHKeDbjEX9oD+w4REP+LH
	 bP8Xj9EB9+syRDL9Op35Tc/HgBA1koZ5wI4A7bLsGUNz/kGqlKtPgZytvITJfWSnY2
	 +RPteWCR6ajrxM5N72YrWcPZ/TqGWCNnmqUCBNe5/GbhKpO0yyIguE3zwotQ6QPZoe
	 HITP2pVtYttIH7eyldh5XLbjBf/6KJOVjoZp42dSZY00e3KYPl7oHAzsoPWrccnJfX
	 e2MSe/wMdosaiYkd3tlsxZeErQvffL0MBAf1pwtBtfowsbVyUjxcm4dtNuIcvDWMxh
	 e2UAa2mgDssKiUW1NzywQNMs7KkxYSHqVwdeqnRvaJNtCJXK/5IyeXoGKQE48UG05u
	 2jN+qQPRBaRLeFIC+bXPzXbCzTE3U6eBXulrSsFNDxI8BqQD/l9rBHh/pPEKGTbMR2
	 41FkF7RSFoRj4cZOpJ8H0jaStsnbJahINRXffi6IDq14gQPG3KdJGl+yw0BsXP2wzW
	 zQGpTVStD9I0tGMLPT0S5K6nvKJRuLFPdzUIdJ+TTQXHGQZFGB7g/2SVREZ3I465tn
	 yoHa0WsCigFwoFeidKcqIfHAMXJDO1ewLTcuDDomiTKE/JAurR+wPnueTA1T5VMm0y
	 WJSI5naMMV0EPOUlxgUVWFJ0=
To: Simon McVittie <smcv@debian.org>, oss-security@lists.openwall.com
References: <20200421184747.GA93069@espresso.pseudorandom.co.uk>
From: Eli Schwartz <eschwartz@archlinux.org>
Autocrypt: addr=eschwartz93@gmail.com; prefer-encrypt=mutual; keydata=
 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
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <7b81066b-debd-a8df-98b4-f8ca9a1759c0@archlinux.org>
Date: Tue, 21 Apr 2020 16:40:05 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200421184747.GA93069@espresso.pseudorandom.co.uk>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="dBO6I5PJXbPV1JUhljZOrQI56IgwelWrA"
Subject: Re: [oss-security] Pacman package manager - taking untrusted input

--dBO6I5PJXbPV1JUhljZOrQI56IgwelWrA
Content-Type: multipart/mixed; boundary="EOyTeQvY9CkXD0s1oyvsTEbdPnsL2uJB2"

--EOyTeQvY9CkXD0s1oyvsTEbdPnsL2uJB2
Content-Type: text/plain; charset=utf-8
Content-Language: en-US-large
Content-Transfer-Encoding: quoted-printable

On 4/21/20 2:47 PM, Simon McVittie wrote:
> On Tue, 21 Apr 2020 at 21:51:56 +0430, Amin Vakil wrote:
>> On 4/21/20 8:57 PM, jellicent@protonmail.com wrote:
>>> The code supports database signatures, so the real issue is the distro
>>> infrastructure.
>=20
> I interpret this as: pacman can accept either signed or unsigned
> databases, but the various distros that use pacman (such as Arch Linux)
> currently only publish unsigned databases in practice. Is that correct?

Correct.

However, some people publish thirdparty repositories. I do. My
thirdparty repo is generated wholly on my laptop by exactly one person
(me) and has database signatures, so the instructions for its use
include "set the per-repository SigLevel to DatabaseRequired". I would
generally encourage anyone who doesn't have to juggle security for
online signing keys, to do so. This is only a problem if you are for
example a distro and need to have an intake mechanism for built packages
by either packaging team members or buildbots, then sign the databases
with an online signing agent and securely manage that signing key.

> Can pacman be configured to *only* accept signed databases, so that a
> mirror containing an unverifiable database (unsigned, signed with a key
> that is not explicitly trusted, or with an invalid signature) is treated
> as an error? If it cannot, then there's an obvious downgrade attack:
> a malicious mirror could substitute an unsigned database and the pacman
> client would happily use that.

https://www.archlinux.org/pacman/pacman.conf.5.html#_package_and_database_s=
ignature_checking_a_id_sc_a

pacman supports a tristate setting here (SigLevel):

Required | Optional | Never

In the optional case, a bad signature is an error, but a missing
signature is skipped over and ignored as though Never was specified.

It can be set for package files, database files, or both. The
distribution default is to set it Required for package files, and
Optional for database files; every archlinux user is therefore checking
for database signatures, discovering they are not available, and making
use of the configured grace setting to proceed anyway. You could DoS all
arch users by hacking the mirror network and adding an invalid
signature, though if you have that level of access, there are easier ways...

> On Tue, 21 Apr 2020 at 17:41:42 +0000, jellicent@protonmail.com wrote:
>> An attacker need only find a bug in how Pacman does
>> parsing/reading of the database file to potentially get code execution
>> on the box as root.
>=20
> My understanding is that this is a risk, and at least arguably a design
> flaw, but not generally considered to be a vulnerability (CVE IDs,
> etc.) unless/until an unfixed parser bug with the necessary severity
> is found.

And indeed we have had two such bugs applicable to unsigned databases,
both fixed in current versions:

https://security.archlinux.org/package/pacman

Both of them required enabling non-default options in /etc/pacman.conf
and then downloading a maliciously forged database containing filenames
which were passed, unsanitized, into system(3). This isn't even a parser
bug, it's a bit more fundamental... also, of course, fixed as long as
you are using pacman >=3D 5.2 which we hope you are.

https://repology.org/project/pacman/versions

Arch is, as are most others. You can still get a vulnerable version of
pacman if you use:

- the unmaintained bootstrap package on Gentoo,
- the bootstrap package on *old releases* of Alpine or Fedora
- the unmaintained FreeBSD port
- Hyperbola (https://www.hyperbola.info/), an Arch Linux derivative

Disregard the incorrect NixOS information on repology, since yesterday's
NixOS 20.03 tag has the latest version of pacman:
https://github.com/NixOS/nixpkgs/commit/20605f8fedde0eb60bb7c79896981523d52=
3ded1

> Of course, that doesn't mean it wouldn't be a good idea to authenticate
> the database before parsing it: that would mitigate a lot of potential
> vulnerabilities.
>=20
> Something that might be considered to be a vulnerability already (or not,
> depending on the pacman and distro maintainers' threat models) is that
> an attacker could substitute a database that lists obsolete packages
> with known vulnerabilities. Those packages will presumably be validly
> signed by distro developers (because at one time they were considered
> to be the best version available). Presumably pacman won't normally
> downgrade from the version it has installed to a strictly older version
> from a mirror, but if a user installs a new (not currently installed)
> package using that mirror/database, they'll unknowingly be installing
> an older package that has known vulnerabilities.

Packages, once installed, are never downgraded via a sysupgrade unless
the --sysupgrade flag is specified twice. This is actually fairly common
since there's a lot of bad advice on the internet: https://xkcd.com/386/

We continue to try to educate users that you don't try downgrading
packages in order to force updates to happen faster, in much the same
way you don't run everything with sudo because it failed with, I dunno,
a missing shared library error. It's a work in progress.

It's possible to manually specify a package to reinstall it even if it
is a downgrade, but doing so will log a yellow:
"warning: downgrading package XXX (currentversion =3D> reinstall-version)"

(the same warning is logged for a double sysupgrade)

Installing packages for the first time is of course impossible to detect
and requires general downgrade-attack protection as discussed later.

> That form of attack is difficult to address in general, because it needs
> a revocation or expiry mechanism. apt-based distros are starting to
> address equivalent issues by setting a Valid-Until field on their archive
> metadata, so that clients will warn their user if presented with outdated
> archive metadata (the equivalent of pacman's database) - although this is
> somewhat awkward to deploy, because it requires a signing key to be
> made available on a regular basis, which conflicts with the idea that
> high-value signing keys should be kept offline when not in use.
Database signing would prevent package downgrade attacks, but not
database downgrade attacks.

As a rolling-release distro, we are recreating the database with updated
or new packages, many many times per day, so we will automatically do
Valid-Until equivalents (if implemented) without any explicit refresh task.

We have intentions and some preliminary code to add a similar timestamp
to pacman databases. Most likely it would then be up to the user to
configure how long after the timestamp they would like to continue to
trust the database (with a suitable vendor default).

This would ensure that even database downgrade attacks cannot be
performed. Note that if database signing were activated by policy but
timestamps were not yet implemented in code, users can still engage
their sense of suspicion to observe that a rolling release distro is
unlikely to go more than a day or two without updates to at least one of
the packages installed on the system. This is obviously non-ideal when
we can use timestamps, but the savvy user can nevertheless have DIY
protection.

(Again, this is irrelevant since databases are not signed.)

--=20
Eli Schwartz
Arch Linux Bug Wrangler, Trusted User, pacman developer


--EOyTeQvY9CkXD0s1oyvsTEbdPnsL2uJB2--

--dBO6I5PJXbPV1JUhljZOrQI56IgwelWrA
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEvSewel70XCra9w4EhIGKaBmvSpsFAl6fWiUACgkQhIGKaBmv
SpszKxAAqgU2oL4XGf3s1l3bVQ9Pj7WV6X/pqdE6G/BcuXRJ9o87FKvL+gbYIY4N
qFjEJaYYF4H7eQkoiwdwEfdNSwW+dgH0FeUunCW9aRoPgC+WO0OU6pNy+LBCKcQP
m/Oa0GJTTh/yzzKVg7fVUWtL1rqTUeBww6I/KwA4IgJ75Y9nRZVuHKFqqA8aqwEf
r297VifXEmB9ZYcD/FkpdW58e+SJJhz3KdcfMbBbyFDrfy9PWjO5xyasMauLiitH
NL7ATAiR9lj8GH0HABlWOL0FTJ2e8N+3nwV7CyIc/Q/CZkbx+7ZLmhmv8v22Gcmg
mNkoiB+5KJZXOeVPBgShXOWD+WwC0iEUqiZpim7x/2jbSi4qkJN8HkIWKTXnu3YA
FtUj2hW2pvOicdWrLsKC64HlzTxlxyYc0bWNqY2v6I8s3HegcPFJVr8nE1oDIBjx
75/U7AhuEJjLXsLkZgWNTuh6UaA/0BsPZrVYt166tYIXxVIbCBZlZD6dwLyJEB+x
eZZAPv7qDxXL4eMmiDG5cHlC6UAr9nafEPmYAQtwlp10+qj7CThV0j2I9NXrA9Us
kkAvq7lsZe06httgf3u5eOPgnRKEpRM3XushXxiVzhYoih+IS65roMvhQoKR/yOg
IG7ArXxlZKPkz7btc72UeeuRmhaQKc0pD3IgfvjX716oCu1kdo6JAjMEAQEKAB0W
IQRgQRMEwJ02YoNA7v/OsWfvtXIr1gUCXp9aJQAKCRDOsWfvtXIr1r11EAC7GAfN
73F9qVf2CHu5Aakt1CzMh9aH5W/c32AwvaoCKP0eFiE7jGrNfDr1yHFVzp5WE7J8
rKGHW1lqP5X9GISvWf2elCqxKtLL4T1C0wAmujwHsIcwNoDFR+PcowojajcNE3yR
Yu6kRo1wUJ3fVuqN1brQoYEriyC9emaazGGs/igIVWFIJf6kysqWGQWe6QoUPM+M
JVl98usdugmNrkuIj92vhguAmUbfTD6puw2Cks/YW1bDFpp//GNRnPGjq1lF9Cbl
ds8its4SEK1GXyHZPh5Ggq+/F4ki5raj5j21/3dd1DrgYqBijYFem8aHjnaBood6
x4n05YM1c21kkRBLn6P6onrG1FTvwrd/Fhz8p0JXCMfzWEkz+9zVU5x6OaKrZy6m
PdpbhbdHdYzGr9g/CzH/aK4OKwcKZuKdsX+Ti8zsSoi9iUrmL7K9uikRFhscVb2S
yYFmXohQGJosf3fM+JCOIXFXNXqkBb2+mzT1X5C3G8wiApKTczZwi2mW0jhlINXZ
0qUapSXzEvLDwnSIiidD0JeM9htyfU456t6vjDNnFenD+9MsGHylyziodtKjY6Xw
bRLIGVYOY0/SaxwbPQNag9jms51PxkuzHMvqVd/tXyy4vlc2zsLSmIofbjn7fP9s
ocNs9aed4hlZIz3HA6Oxor4K11qQW7TUFY1mow==
=xneq
-----END PGP SIGNATURE-----

--dBO6I5PJXbPV1JUhljZOrQI56IgwelWrA--
