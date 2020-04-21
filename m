X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5246" "Tuesday" "21" "April" "2020" "21:15:10" "+0200" "Jelle van der Waa" "jelle@vdwaa.nl" "<6e208a52-10a1-3559-cf2e-44bca791941b@vdwaa.nl>" "115" "Re: [oss-security] Pacman package manager - taking untrusted input" nil nil nil "4" "2020042119:15:10" "[oss-security] Pacman package manager - taking untrusted input" (number mark "U       jelle@vdwaa. Apr 21  115/5246  " thread-indent "\"Re: [oss-security] Pacman package manager - taking untrusted input\"\n") "<20200421184747.GA93069@espresso.pseudorandom.co.uk>" ("<20200421184747.GA93069@espresso.pseudorandom.co.uk>") nil nil nil nil nil nil nil "Re: [oss-security] Pacman package manager - taking untrusted input" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17610 invoked by uid 550); 21 Apr 2020 19:33:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32039 invoked from network); 21 Apr 2020 19:15:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vdwaa-nl.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=80wJHrIXS0XbEX51bHB+h6rAPpI5PERAvhkINCSj6uw=;
        b=WN3In0arlKl649jPnGnEpy+V3rHo0HJr22YlDOnH/zktKdSjQg+iL70XowrOW9mWBz
         Z9XVD82SfiF+6OcU/406baZwAWNtXrCd2ZFIS86I2+znhDM2j/gG/gZ6tRvc85rZprSI
         5AtXf8B7Iwm2KzrACy18cNk+MARoB1TyZ81chAbVyKCUe7I8bs+NFY85SG378LTC0DTH
         CvmcGVYhvZEJYzcQ6o9QWCnEXY2VuVgxcTnc0JhJvV3lvrkEIJviiyPgZZNV7ZobV8fb
         psM6RNvMzQn0H3+hvMnCSyKor8o8lJQTOCLYqVXi7PWXXeTEE7vXl40efOc7G2QbaarP
         VqJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to;
        bh=80wJHrIXS0XbEX51bHB+h6rAPpI5PERAvhkINCSj6uw=;
        b=jwmaDtFbDbtNrF8Ega4n+4mLI1Q/gWo6TwcD+fUde1kZvNt+F8tp6boKiqZ0MuMGj/
         iyq73jJhIfg1Oi050mFdqgFmzKMvuTr5yrpCDci4alnatCr338+dWl7tsREFPeqHnbml
         H//POh0Ycuu1Su6a9ZabJvU4G7Cdf6jp68T4sLis9um/hBKmOqayqTPnl8jG329YkyWE
         K+VhJms5YVzN6Xzwrfv+ow1hwAGBIhao83B4nMjKwGN5w+jTLDqmbxoeyoSP2faHiWSz
         +/rkeAK6yPwoWRbpXujvAF1d3yCxyQVhbF/T6vQ3Q0JLk9qb9MSBoIzSZGDcWMULKiv2
         pCrw==
X-Gm-Message-State: AGi0Pua4LNHWVmD4w/X//fsQAGYz0euR2/JPwmpvm0Ov/2bFXr1TxowV
	M6Bc95iViAYCtDwAwXM7prUa3CiXBa5N7g==
X-Google-Smtp-Source: APiQypIKYVWwyeukvZAjT4OKps14jWtbC84G+zNUP5YsyvvUAcSYJQhXbFdOY/veLr2dEp1fzsZbqg==
X-Received: by 2002:adf:f704:: with SMTP id r4mr26290850wrp.5.1587496520704;
        Tue, 21 Apr 2020 12:15:20 -0700 (PDT)
To: oss-security@lists.openwall.com
References: <20200421184747.GA93069@espresso.pseudorandom.co.uk>
From: Jelle van der Waa <jelle@vdwaa.nl>
Autocrypt: addr=jelle@vdwaa.nl; keydata=
 mQENBE6QLAIBCAC3O6LmF+GKvOh7IV00TG+EKAQHAwjESnHGJOW58lKK7eAYn62ZM1uy0+6h
 yCMu5PD7+ND6U1gcgTTHYwNK8AaJt7yY4FRssgdcJk59uJBwROZtllotClJ893CuB6Wgr68b
 07gIRbENYrB8rEoGfpUG//8/ep7sY8PS03jnFb4ll6mPlUE2oQVdYOlXgF4f9qkkIi4SQeE2
 MTuERaOrDuUNDlroJ7Yfx3J/rL5Qjn578/TKCAxg0pns6VIA/P9spRGmLhT4zP+OxZXeSZme
 IxcwFdJJXHr4oGaZvqe1yHlMmKR98rrIfPWhkw2Ls/XIZIxf6prT0XyczbzBnC2y1JyNABEB
 AAG0IkplbGxlIHZhbiBkZXIgV2FhIDxqZWxsZUB2ZHdhYS5ubD6JATsEEwECACUCGwMGCwkI
 BwMCBhUIAgkKCwQWAgMBAh4BAheABQJUX8WhAhkBAAoJEMBghjN8UHc+mFwH/jjN+Qob4O36
 YiieajRwVLGuYdUDt9Z655oQYU8V4qbWf2tjUtqTYXrxLnaY6xQoYouRz9yFbh9dIKZb67ir
 7AeVgCOtWVesGxAlGH6EY5JBZcsN0v0ScsivqQAv/Mv+4HK+XM57YlyRagD8tkprYskioWHg
 OwQfXAO6nlm4BJHWO9bHJUMgiGs7I190IKQG7iLBnJuGjsOFuy5KTLpnv+w7twmz0H+pkUPe
 jVHfJlJWdN4v1PigpgpjOR6ZepSIggMk7dHsa6GNLUOzi61yYVFe60+EGXhwyJIqSt56a4oR
 jMUcXaOugGr+JwC8Eq7Pg2+aFk+8fbe0oUzZJucHGnC5AQ0ETpAsAgEIAK4Usb7B00WRxCZG
 HtM973F7V4OhOKv4kZKduxtu71bVUZsTuzn4h+m8guJ51uY/I2icUrN9gJG5aEzRqPuQi2L7
 KmZUjs3pscZWgUgiT8UZFDR6RuQ4k3CcWobsRCjYZdSblSZ8ccrLJE7xSbwKMXjAh2PEiaQT
 lS6wQbn6mHv4y3H9QVHs7+jXbmfHCxnVcwLqRmpuegSmezDaL5TlSc102voiXinhrWEZUvAB
 KDh6VuJ/60Y6zelCXVsEjRaApz90iXY1nifLhkHM8B2wG7Pum3V3X0Y0QTVD+z3EL1iq5mFu
 epKp//IOeeJN5iwHcRSJGy2s1oOzjRDyPv6v1AUAEQEAAYkBHwQYAQIACQUCTpAsAgIbDAAK
 CRDAYIYzfFB3PvDuB/0dI13hSYHW27c2Rq8BaGbIhXYYETtPD5B25/P1JJ5OQZkPmVq+vSHw
 uzUaDZHy3ZcwE+xFXzlkwXGdWos07JUGo74zV3HfeZxVEPv0HB9ACqQVU/JKjLZNj2SfhgzL
 4F+O4Zgdsf0YaZG09F5PbMvbhoCZLfAaKWz/4fLEfhrDJLhrphUyPDXosn0UxPkDv0iiixn4
 V+bEZ5/wd8dRWi58R/iND+gRGsBREm5SpzdhnsarwoX6YdsQ449379enDNUN7jV4C3Gkon2s
 VwI2ZZbS10cY8rFSAV/CJA2E9daRoz40DI0tgXgLBAVhy7y5HWZJsDZexU0HFKJfkDi7RUPj
Message-ID: <6e208a52-10a1-3559-cf2e-44bca791941b@vdwaa.nl>
Date: Tue, 21 Apr 2020 21:15:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200421184747.GA93069@espresso.pseudorandom.co.uk>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="69sVJgaDUNtFWdzkg5bEF0Kaq3YNCEBbc"
Subject: Re: [oss-security] Pacman package manager - taking untrusted input

--69sVJgaDUNtFWdzkg5bEF0Kaq3YNCEBbc
Content-Type: multipart/mixed; boundary="n53ZZeodt8P9UdNDCle9HqccuhVmfuRTS"

--n53ZZeodt8P9UdNDCle9HqccuhVmfuRTS
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 21/04/2020 20:47, Simon McVittie wrote:
> On Tue, 21 Apr 2020 at 21:51:56 +0430, Amin Vakil wrote:
>> On 4/21/20 8:57 PM, jellicent@protonmail.com wrote:
>>> The code supports database signatures, so the real issue is the distro
>>> infrastructure.
>=20
> I interpret this as: pacman can accept either signed or unsigned
> databases, but the various distros that use pacman (such as Arch Linux)
> currently only publish unsigned databases in practice. Is that correct?

This is correct for Arch Linux and this is also something the Arch Linux
team wants to work on and is held up by figuring out a 'sane' way to
sign a pacman database using gpg without compromising the signing key.

> Can pacman be configured to *only* accept signed databases, so that a
> mirror containing an unverifiable database (unsigned, signed with a key
> that is not explicitly trusted, or with an invalid signature) is treated
> as an error? If it cannot, then there's an obvious downgrade attack:
> a malicious mirror could substitute an unsigned database and the pacman
> client would happily use that.

It can using SigLevel =3D Required in pacman.conf, as can be found in the
man page http://jlk.fjfi.cvut.cz/arch/manpages/man/pacman.conf.5

There is however another scenario which could be used even if the
database was signed.

1. Wait till a package has a critical security issue (RCE in nginx for
example)
2. As malicious mirror withhold updates, ie. no longer sync the
repository with upstream
3. Since the mirror is not updated the user will stay on the vulnerable
version

As a sidenote this can be circumvented by the administrator wondering
why there are no updates (pretty rare for Arch :-) ) or running
arch-audit which checks if the system has any vulnerable packages
installed which hopefully gives away that the mirror is out of date and
should be reported and changed.

Note that we do remove mirrors which do not keep up from our mirrorlist,
but changing mirror is still a manual task.

> On Tue, 21 Apr 2020 at 17:41:42 +0000, jellicent@protonmail.com wrote:
>> An attacker need only find a bug in how Pacman does
>> parsing/reading of the database file to potentially get code execution
>> on the box as root.
>=20
> My understanding is that this is a risk, and at least arguably a design
> flaw, but not generally considered to be a vulnerability (CVE IDs,
> etc.) unless/until an unfixed parser bug with the necessary severity
> is found.
>=20
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
>=20
> That form of attack is difficult to address in general, because it needs
> a revocation or expiry mechanism. apt-based distros are starting to
> address equivalent issues by setting a Valid-Until field on their archive
> metadata, so that clients will warn their user if presented with outdated
> archive metadata (the equivalent of pacman's database) - although this is
> somewhat awkward to deploy, because it requires a signing key to be
> made available on a regular basis, which conflicts with the idea that
> high-value signing keys should be kept offline when not in use.

A pacman developer has proposed a patchset to implement an expiry for
repo database.

https://lists.archlinux.org/pipermail/pacman-dev/2019-December/023909.html

P.S. for reporting security issues regarding Arch Linux's infra,
packages and package manager security@archlinux.org is preferred to be
used :)


--n53ZZeodt8P9UdNDCle9HqccuhVmfuRTS--

--69sVJgaDUNtFWdzkg5bEF0Kaq3YNCEBbc
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEE5JnHn1PJalTlcv7hwGCGM3xQdz4FAl6fRkEACgkQwGCGM3xQ
dz4QowgAjXft09iXX7cLO2AqoMbusNdeP4+s98hfDJY3uOPqxpFkx1hx6wXkh1+R
l5A1nlkw2kO6aUZPt29HXHP9RNtDkEJSLzecyxWsumnnCwAjbN0AI0zBRMzl86Ja
IcKE6VTVfIDVuZmpplv3/jA9KPVVI0i/6CmjkRpxHKvNI6XlWg0NT95LGsXD2h0C
weGhAIsv2LVz+BEVJgts8PQhHz/cUWD4VmyZljShPRQAxZJyiZzK2qmRFguJcYEe
opddqP1kMuTA7ChN3WhUsal29snzem5+DqR/c5L8uMYmsP4OtClncHkRYrfgsD8d
dJyVOzxckvXPMx86mgxrIkLxXji/zg==
=2uLU
-----END PGP SIGNATURE-----

--69sVJgaDUNtFWdzkg5bEF0Kaq3YNCEBbc--
