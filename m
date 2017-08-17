X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1830" "Thursday" "17" "August" "2017" "14:24:47" "+0930" "Doran Moppert" "dmoppert@redhat.com" "<20170817045446.GA21510@sin.redhat.com>" "49" "[oss-security] CVE-2017-7555 augeas: crash/memory corruption when handling certain escaped strings" "^Date:" nil nil "8" "2017081704:54:47" "[oss-security] CVE-2017-7555 augeas: crash/memory corruption when handling certain escaped strings" (number mark "U       dmoppert@red Aug 17   49/1830  " thread-indent "\"[oss-security] CVE-2017-7555 augeas: crash/memory corruption when handling certain escaped strings\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18043 invoked by uid 550); 17 Aug 2017 04:55:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18016 invoked from network); 17 Aug 2017 04:55:03 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com F2F904792
Authentication-Results: ext-mx06.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx06.extmail.prod.ext.phx2.redhat.com; spf=fail smtp.mailfrom=dmoppert@redhat.com
Message-ID: <20170817045446.GA21510@sin.redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sdtB3X0nJg68CQEu"
Content-Disposition: inline
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]); Thu, 17 Aug 2017 04:54:52 +0000 (UTC)
Date: Thu, 17 Aug 2017 14:24:47 +0930
From: Doran Moppert <dmoppert@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2017-7555 augeas: crash/memory corruption when handling certain
 escaped strings
To: oss-security@lists.openwall.com

--sdtB3X0nJg68CQEu
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

A vulnerability was found in augeas <http://augeas.net/> that could
allow attackers to cause memory corruption possibly leading to arbitrary
code execution by passing crafted strings that would be mis-handled by
parse_name().  A patch created by David Lutterkort is available on the
following PR:

https://github.com/hercules-team/augeas/pull/480

Briefly, input strings ending with a whitespace char would be escaped
(aug_escape_name) then incorrectly trimmed in parse_name, leading to a
later loop stepping over the terminating NUL character.  Crashes in
libvirtd were observed.

This issue was discovered by Han Han (Red Hat) through fuzzing with the
Dice testing framework.

https://bugzilla.redhat.com/show_bug.cgi?id=3D1478373

--=20
Doran Moppert
Red Hat Product Security

--sdtB3X0nJg68CQEu
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBCgAGBQJZlSGWAAoJEGohqWcZR7qpS9wP/Axoh1q+EuX5FkrPGz8AmhFY
nbhEJfnnMDYUjDVgqtw6FnpLKWSOFJYaiiyrlFKQGxm8texvt619ddhwRpBng/JB
fmoqqMk/x+KWhiw7x9GD1tcE9uSDHeHHoBuha3YsV6QkaFZQytAkgm6qgqOb6yBl
oMs03uMad4EP4UvQJrgFUNHs2YtgSgEO68Y+hq37NH6FRu4SiV365kYnjEe4rh5i
vwpux72wvSdxn6ZIOYjIZ2TDJFu06K7vccG1zNW3b+u83ZWXqSdwqecmG/Ss1Uzv
kaak+RZGPqE68jWoc1x0WgrU0AYJQtfA1Ve7JIFam95fwQIOACspolG6nhopUsik
DLtZ+xqg9/m1c/KEIP4H5kM/3np7SXTLDCvf8t8V9Rb7bZzciY897N3lP7BDnbs7
WBx94tu4fqrLTIpSUvGrDrafqkYirVrTnztZfhUBV99jKiVxxZDC6eTNyA5BsiTx
UnpO5B9qc6r6bLnl03R/wHU/UZZaZcR2Uq7cA3BqMLpZqkqx+ednLO/BGMWENk+o
uMNkg7j5I0akVz+3jvCXV+FXvYwVzjB+Bv4rnUdXaWclfkzaWlC4ikttPJhmxx2M
6RLpuJHkrFaBTtAOf8eVEKK4i9yYkS+jogCrNjh8u9+B6yHfT8QoWP17PzBP2wdW
fjpL2Z6grHbXiVv4i2uH
=ax/B
-----END PGP SIGNATURE-----

--sdtB3X0nJg68CQEu--
