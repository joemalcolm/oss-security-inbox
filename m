X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3488" "Thursday" "23" "April" "2015" "17:37:48" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20150423173748.2c2a53d2@pc1.fritz.box>" "91" "[oss-security] tlsdate havoc ahead - default host randomizes tls timestamps" nil nil nil "4" "2015042315:37:48" "[oss-security] tlsdate havoc ahead - default host randomizes tls timestamps" (number mark "        hanno@hboeck Apr 23   91/3488  " thread-indent "\"[oss-security] tlsdate havoc ahead - default host randomizes tls timestamps\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32135 invoked by uid 550); 23 Apr 2015 15:37:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32067 invoked from network); 23 Apr 2015 15:37:36 -0000
Message-ID: <20150423173748.2c2a53d2@pc1.fritz.box>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.27; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-4187-1429803444-0001-2"
Date: Thu, 23 Apr 2015 17:37:48 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] tlsdate havoc ahead - default host randomizes tls timestamps
To: oss-security@lists.openwall.com

--=_zucker.schokokeks.org-4187-1429803444-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

It was pointed out to me that tlsdate behaved strangely for a couple of
people. The reason is that www.ptb.de - the default tls host
pre-configured in tlsdate - now seems to use randomized TLS timestamps.

Background: tlsdate is a replacement for timesetting tools like
ntpd/rdate that doesn't use ntp, instead it sets the time based on a
TLS timestamp.

However it became recently popular to hide the TLS timestamp to make
fingerprinting harder and not expose the time of servers. There are
plans to remove the TLS timestamp.


Anyway: It seems yesterday or today the operators of www.ptb.de (a
german government institution operating atomic clocks) decided to do
that on their servers. This means all default installations of tlsdate
may set the system time to random values.


Some distributions (e.g. Gentoo) have changed the default to
www.google.com, which seems wise (although I recently objected to
this change... always wiser afterwards). Google itself is using
tlsdate in chromeos, so they are probably aware of this problem and
won't randomize the timestamps.
Another alternative is to use tlsdate with http header timestamps
instead.

I urge all distributions to check what their implementations do and
patch them to use www.google.com (or do something else to fix it) as
soon as possible. I know Debian and Ubuntu have a problem. I haven't
checked others. I have recommended tlsdate as a safer alternative to
ntp in the past a lot.

Please note that there are two places where tlsdate has www.ptb.de
preconfigured - one in the default config for tlsdated and one
hardcoded into the tlsdate binary itself.


In other news: There's some interesting development going on in terms
of secure time. openntpd (the openbsd thing) has some nice solution
using tls timestamps as a boundary for ntp timesetting. This combines
the security of tlsdate with the precision of ntp.

And there is some work done in the IETF to create a secure version of
ntp:

https://tools.ietf.org/html/draft-ietf-ntp-network-time-security-08
https://tools.ietf.org/html/draft-ietf-ntp-cms-for-nts-message-03
https://tools.ietf.org/html/draft-ietf-ntp-using-nts-for-ntp-00


[1] https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D783174

cu,
--=20
Hanno B=C3=B6ck
http://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-4187-1429803444-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJVORHMAAoJEKWIAHK7tR5CchwP/2Mu/6aayPm78OFQzzfpNBw6
YdZuKgEWRrGbEcKObiiQgbBNvZpvsRExRQ7AAPx8oz/0+3/3I/aqfYmYKqZ7PjqP
rT8b9F7kUwwXjQHE1krHOa3NAM3SDXG+LPdUyJ3CZFn4iXHbxW/sFWW7AbkdYw/z
QZoMHjskqHaqSfL6v+YHrhuFGEMQ8S6I4j8/VCxsnU+mRHhQlM2F50V5Alu8svz7
liLRYFNPNzzg9R7+G+AZ020vjSNYAJvVfhGCe8u2Pu2Ilz9n6MY17A0qS6dGrq+D
VzlKl/amA+zNcWU9kMNrc43N3m2OD2Z6EMSV27VV+OUcPFeOJT94TeBdLM5JEXC9
Pu+5TwKkP/7k1JE/pJi0EoBpsOQqFma6o4jIGC2byTtsCadfh/LI6dcmB4XGpT0Z
fmMaP5qMSy5tewHlc72Ex7XW6TDiGA1tzn1Un7o+doZjOokAbI2aCWEJHWMt+nOZ
OFTH4sj7GsOYypbqDLKvZxbur+XwMBohNu3EM2+Bd89PVV4mCYqEYpZcc84qiEEC
btv/Bxd8eYvR1G7Kn33Io9BbQbh51daFauJ8vQRmkkgZwf346gscWXW7M6XLiqks
xD6UIYXZkLb0VOE5PJMs8nO+sv1qac+RlV5/7EECOPeSMKqkuJySPyZRJXZKa5/C
8qvtKv9vJ2gAYnrgRH4y
=0EWN
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-4187-1429803444-0001-2--
