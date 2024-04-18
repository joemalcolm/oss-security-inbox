Received: (qmail 5965 invoked by uid 550); 18 Apr 2024 16:47:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5947 invoked from network); 18 Apr 2024 16:47:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:Content-Type:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=KHPg2cGQXH4PD/WNPAIptCfG3Mz+7iUnrKDa5ZbBeL4=; b=iU2UgpypCqyrLf1I2F2/la3Hkh
	cCniJaNQ/Ku4d7eZYJ13Iruiq7rqdyMhlVgN3Quma2tCOh3eMs7ONYXKBNAtKgshC32HFmEQMdV7h
	IVvsQ2gJb1urSj9/VTLCs6+niZuRDSYuT2+8rKV/MpQcwY9uXNeHJqBKkro2xSgpSASrHb8W/JzB+
	ern10Mjus5T9oooPmO4H0j44WXQJRi0GLJ8lWEhMU3Mcwm1cSXXHJihpiW0HtOTX02qqYZxpspumR
	nZxmQUqANnV37XYSL08+mI+usXwG84MXBN57n4STsVkYE/1vmQGyWV80smb69+hE0vIf9dHK2/CyX
	LeXjO2OA==;
Date: Thu, 18 Apr 2024 17:47:18 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Cc: flatpak-security@lists.freedesktop.org, flatpak@lists.freedesktop.org
Message-ID: <ZiFOluH03O-77cFY@remnant.pseudorandom.co.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rvA4U607kIHOO84I"
Content-Disposition: inline
X-Debian-User: smcv
Subject: [oss-security] flatpak CVE-2024-32462 : Sandbox escape via RequestBackground portal
 and CWE-88

--rvA4U607kIHOO84I
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Flatpak is a system for building, distributing, and running sandboxed
desktop applications on Linux.

Gergo Koteles discovered a sandbox escape when using Flatpak in
conjunction with xdg-desktop-portal.

For patches and any updated information that becomes available, please see:
https://github.com/flatpak/flatpak/security/advisories/GHSA-phv6-cpc2-2fgj

Impact
=3D=3D=3D=3D=3D=3D

A malicious or compromised Flatpak app could execute arbitrary code
outside its sandbox.

Fixed versions
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

* flatpak 1.14.x >=3D 1.14.6 (stable branch)
* flatpak 1.12.x >=3D 1.12.9 (old stable branch)
* flatpak 1.10.x >=3D 1.10.9 (old stable branch)
* flatpak >=3D 1.15.8 (development branch)

Older flatpak branches such as 1.8.x are EOL and will not receive new
upstream releases.

Vulnerable versions
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

* flatpak 1.15.x before 1.15.8
* flatpak 1.14.x before 1.14.6
* flatpak 1.12.x before 1.12.9
* all versions before 1.10.9

Description
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Normally, the --command argument of flatpak run expects to be given a
command to run in the specified Flatpak app, optionally along with some
arguments. For example:

    flatpak run --command=3Dls org.gnome.gedit

The original implementation of this was subject to CWE-88: in Flatpak
versions that have this vulnerability, it is possible to pass a long
option name to --command=3D, such as --bind, and it will be misinterpreted
as a bwrap(1) option. For example, one may do

    flatpak run --command=3D--bind org.gnome.gedit / /host ls -l /host

Which will run:

    bwrap ...lots of stuff... --bind / /host ls -l /host

It is possible to pass an arbitrary `commandline` to the portal interface
org.freedesktop.portal.Background.RequestBackground from within a Flatpak
app. Normally this is safe, because it can only specify a command that
exists inside the sandbox; but when a crafted `commandline` is converted
into a --command and arguments, the app could achieve the same effect of
passing arguments directly to bwrap, and therefore achieve sandbox escape.

The solution is for Flatpak to use the -- argument to bwrap, which makes
it stop processing options, before appending the attacker-specified
command:

    bwrap ...lots of stuff... -- --bind / /host ls -l /host

which will attempt to run a command named `--bind` from the sandboxed app's
PATH (unlikely to work in practice).

The -- argument has been supported since bubblewrap 0.3.0, and all
supported versions of Flatpak already require at least that version
of bubblewrap.

A mitigation is that xdg-desktop-portal version 1.18.4 will no longer
allow Flatpak apps to create new .desktop files for commands that start
with -.

Test-case
=3D=3D=3D=3D=3D=3D=3D=3D=3D

1. Install any Flatpak app, for example org.gnome.Recipes

2. flatpak run --command=3D--help org.gnome.Recipes
   (replacing the app ID with whatever app you chose)

Good result (not vulnerable):

    bwrap: execvp --help: No such file or directory

Bad result (vulnerable): the same help text as `bwrap --help`.

--=20
Simon McVittie, Collabora Ltd. / Debian
on behalf of the Flatpak maintainers

--rvA4U607kIHOO84I
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEENuxaZEik9e95vv6Y4FrhR4+BTE8FAmYhTpMACgkQ4FrhR4+B
TE/4ChAAmjua5MDuf+zco71Z1Jf8NWsQ+qkX/KK0cfJ64VySPWlFHhDjjoMIWHEK
rILjuIprMQ+8F18XPV2RCNhOQHgpQAIG7o0h14V0xzfzCvDB2GMAqiHpg6kdxJrj
fAcp0ETo4/LuTYVi8/Qfp5RRuEHPMgWENoGfIkd/cbggou5uD3vfekPPhOhA2CK+
nyeL9NGH3z8N1mqUDCvXmbBTBflfpURPHDE3EgcDTBr7c92Jiq9lHJ9FqFmxEVeY
yjKmozomHaASgFqMFU8FTALfTsJjrefV1ufUO1ju3K65S4EQ8/yf36NHUBXZ1DXb
kM4M2VsKYL6ixPzMbl9/4Tfjyoj1MdTfZZvc9A1OD8Jul+fTIXNUILuhDO2CsVB+
611UUm6SzPnlvNbtWnT89oJJeeXSRl4mKzHw01Ig7mGWocYfpCBqt1VezKSOmn6S
itxUkjBNFPoaoU1HLrHAEf1mZEH4RqSyqj6eoD2zUMbleheKGHrpQOYGeGB+3LG6
8subbP8ZHIy0xx5Whe4zxPX8BLfEsPOIKCspjeIZlhmUTtxZmhDq4V6FhN+kVxHr
3QhuM5ATaAEzLN/5JfP9Ky668oNLJ4Ps7eIQu7eb7Vpr/LfGAX8uoE7K3mdzqbOz
UbfUWwnfYEoitEtpw95xzEKexVeSaSy3bp+dQuJvtnSumZvy8nE=
=6eHm
-----END PGP SIGNATURE-----

--rvA4U607kIHOO84I--
