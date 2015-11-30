X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2088" "Monday" "30" "November" "2015" "17:04:22" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151130220422.09CD46C0211@smtpvmsrv1.mitre.org>" "48" "[oss-security] Re: CVE request for keepassx password database export" "^Cc:" nil nil "11" "2015113022:04:22" "[oss-security] Re: CVE request for keepassx password database export" (number mark "        cve-assign@m Nov 30   48/2088  " thread-indent "\"[oss-security] Re: CVE request for keepassx password database export\"\n") "<1448877939.5015.30.camel@debian.org>" ("<1448877939.5015.30.camel@debian.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26574 invoked by uid 550); 30 Nov 2015 22:04:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26543 invoked from network); 30 Nov 2015 22:04:34 -0000
In-Reply-To: <1448877939.5015.30.camel@debian.org>
Message-Id: <20151130220422.09CD46C0211@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, dev@keepassx.org, siretart@tauware.de
Date: Mon, 30 Nov 2015 17:04:22 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request for keepassx password database export
To: corsac@debian.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> it seems that keepassx 0.4.3 export function are a bit buggy. Starting an
> export (using File / Export to / KeepassX XML file) and cancelling it leads to
> KeepassX saving a cleartext XML file in ~/.xml without any warning.
> 
> This was reported privately to the Debian security team today, but it was
> actually reported publicly earlier in the Debian BTS. Unfortunately the
> maintainer didn't acknowledge the bug or forwarded it upstream, apparently.
> 
> It's not a terrible bug per se because leaking a user password file on purpose
> would still require a lot of social engineering skills, but it still look like
> it should get a CVE (an user explicitly cancelling the export surely doesn't
> expect its passwords to be there in a hidden file.

> https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=791858

>> canceling export operation creates cleartext copy of all of the user's
>> KeePassX password database entries

>> with Debian's default umask, the file is even world-readable in 
>> multiuser machines

Use CVE-2015-8378.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWXMX0AAoJEL54rhJi8gl568AQAMPk+Vtell3O4tGMdvlKi2RE
BOXFZA9wA6TtVqFWtQ+Kbgsi70ix2Cwc+vVvZIunPyAWGXaQ5jb9XtZ0G0YQ/K8O
/SIsOIgaObO59DPI8JUWvb7Pfj5C3ltb80gIV5+G/3exeWeEp4F8Q9T9SglZhpga
Av351FYWgkHS28l2Kgh832nrAl3aRjMOGxhgw758oXaU7IeJzSAtRv79fDMBuziR
7yQ8M7uD/VO9ZJSt1BPzMluz+B5cPzUqSuhxVor4SvxIxhFQWmo4eAiy3d4CD2Qr
B2qp77ity537ZXto/L4fPomAoZZbB9nEJJCaudWvdlCVj859KKiUU6zW6T89HvB1
iBo3p0N+4WDTe2/btkfXh0OFizmC2XP1qSR5BqfgoRCBNTohSAf/Al67d8RoZpx+
sLAZwCWs8w8z0RZsHvkexPv7V9BTOn5enzDrEqvdBsO5CPWdIuY+CVo0WWuo53ag
ESufvOqo8awLO+XDuI+3GXcKYPFAKrrreBiIeHS3NgT/mkXQT8OkhqUnQk10j0Z0
TK5k9zoMhPEu2MOJDbvJdbtgEFe1He2ZdsjlAGrWd8V5fzCTA7Sf/tH5Hz6GiJft
ZppT3OTzmNokQ2QR4xE5M0RwAnxxnfu0hsGqvLblajX0eG/6YpoOybqy/WOemaok
mS14P6ybQKUxW+XbN9YK
=kZt7
-----END PGP SIGNATURE-----
