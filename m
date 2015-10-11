X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3588" "Saturday" "10" "October" "2015" "20:55:52" "-0700" "Christine Dodrill" "me@christine.website" "<20151011035552.GA26094@fluttershy>" "104" "[oss-security] ircd-ratbox and Derivatives OOM by MONITOR Command" nil nil nil "10" "2015101103:55:52" "[oss-security] ircd-ratbox and Derivatives OOM by MONITOR Command" (number mark "U       me@christine Oct 10  104/3588  " thread-indent "\"[oss-security] ircd-ratbox and Derivatives OOM by MONITOR Command\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3617 invoked by uid 550); 11 Oct 2015 04:26:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22162 invoked from network); 11 Oct 2015 03:56:07 -0000
Date: Sat, 10 Oct 2015 20:55:52 -0700
From: Christine Dodrill <me@christine.website>
To: oss-security@lists.openwall.com
Message-ID: <20151011035552.GA26094@fluttershy>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="fUYQa+Pmc3FrFX/N"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] ircd-ratbox and Derivatives OOM by MONITOR Command

--fUYQa+Pmc3FrFX/N
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Elemental-IRCd Security Release: 2015-10-07
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

CVE-2015-5290

Elemental-IRCd reference code: e50b0d59-f3c5-4472-a3cd-e2e07731417c

Permanent link: http://elemental-ircd.com/security/e50b0d59-f3c5-4472-a3cd-=
e2e07731417c

Distribution of this document is unlimited and encouraged as long as it
remains unchanged.

## Summary

Elemental-IRCd is an Internet Relay Chat (IRC / RFC 1459) daemon intended
for stable, secure deployments for both private and public-facing users. It
provides quick messaging across servers, even when deployed on a global
scale. One of the recent goals of the project has been to limit memory
leaks and test functionality to ensure quality for all users.

While looking for resource leaks and other things to test inside
Elemental-IRCd git master, we stumbled on an unfortunate programming error
in how the MONITOR command was handled that can lead to a system
out-of-memory event if an attacker hammers at the MONITOR command over and
over.

## Affected Daemons

In our testing, the following IRC daemons were affected:

ircd-ratbox 3.0.8, SVN trunk and older
charybdis 3.5-dev and older
ircd-seven 1.1.3 and older
Elemental-IRCd 6.6.2 and older
Other derivatives of these daemons will be affected as well unless for some
reason they came across and fixed that issue before this release.

## Vulnerability Information

Public release date: 2015-10-07
CVE: CVE-2015-5290
CVSS v3:
CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H/E:H/RL:W/RC:C/CR:H/IR:L/AR:H/M=
AV:N/MAC:L/MPR:N/MUI:N/MC:L/MI:N/MA:H
CVSS score: 8.8 / 8.6 / 9.5
Attack complexity: Trivial (less than 30 lines of code)

## Notes

If applying these patches is somehow impossible, the attack can be
completely mitigated by unloading the m_monitor.so module using the
following command provided you have permission to load and unload modules:

    /MODUNLOAD m_monitor.so

The required privilege to do this is defined as the admin flag inside the
flags section of the relevant operator{} block in the configuration
(OLD:O:Line).

This patch can be applied at runtime and will automatically garbage-collect
any memory that has been leaked in the past.

A full set of technical details will be released as soon as it is confirmed
that major IRC networks affected by this have been patched.

---

Please see the above permanent link for more information, including the
links to patches for your preferred daemon.

--=20

            Christine Dodrill <me@christine.website>
       CF54 AAE3 62BF 9C9F B79F  AA18 799F 9134 8118 1111
                 https://christine.website

   "No matter where you are... everyone is always connected."
                        =E3=82=8C=E3=81=84=E3=82=93 =E3=81=84=E3=82=8F=E3=
=81=8F=E3=82=89

--fUYQa+Pmc3FrFX/N
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJWGd3IAAoJEOkDe2d85VAEm+EH/jMz9Ftw/qTom8sINUkSrzRa
Ez9JGrlhB2evvaLOlQGtmCd7EDe8n2qr5CGkgapQBcWSUNleN8cNNI1Hgiu60GWW
IK3b+e/8Jn7Vt3cVnBdJ+OORVOnnw+mmVZt7n1Cw1tAcA3nWdVJPbD6eKJTxIBMg
IRfjiCIT/gKIRqE7kw0kRccCW9/xkmqq2bOagARpLrgcjTMtTaqFZ7+j8qSXjCC5
BFyUqpupJMTeVdPtnLqDtlfla22OYYhlfF6LAT40/WaVzDmjqLaW1AMQXT3SLPcp
ZXwExJjgceO69ulAoL01Vja7Z/0WktB2Voar+0q9e0CQep+GRKuf8Htk57Q4SKY=
=YTb7
-----END PGP SIGNATURE-----

--fUYQa+Pmc3FrFX/N--
