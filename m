X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2628" "Friday" "29" "May" "2015" "15:00:35" "+0200" "Enrico Zini" "enrico@enricozini.org" "<20150529130035.GA28407@enricozini.org>" "74" "[oss-security] [CVE-2015-0839] hp-plugin binary driver verification" nil nil nil "5" "2015052913:00:35" "[oss-security] [CVE-2015-0839] hp-plugin binary driver verification" (number mark "        enrico@enric May 29   74/2628  " thread-indent "\"[oss-security] [CVE-2015-0839] hp-plugin binary driver verification\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9854 invoked by uid 550); 29 May 2015 13:07:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7409 invoked from network); 29 May 2015 13:00:47 -0000
Message-ID: <20150529130035.GA28407@enricozini.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="PEIAKu/WMn1b1Hv9"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Date: Fri, 29 May 2015 15:00:35 +0200
From: Enrico Zini <enrico@enricozini.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [CVE-2015-0839] hp-plugin binary driver verification
To: oss-security@lists.openwall.com

--PEIAKu/WMn1b1Hv9
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

background history:

2015-03-10: I reported this issue to the Debian security team
2015-03-12: The Debian security team assigned CVE-2015-0839 from the
            Debian pool
2015-03-16: I reported this issue upstream, privately, at
            https://bugs.launchpad.net/bugs/1432516
2015-05-29: There has been no reply from upstream so far, so I am making
            a public report.
=09=20=20=20=20
The issue:

I was forced to run hp-plugin to download a binary driver for the new
printer, and I noticed this bit:

  Downloading plug-in from:
  Receiving digital keys: /usr/bin/gpg --homedir /home/enrico/.hplip/.gnupg=
 --no-permission-warning --keyserver pgp.mit.edu --recv-keys 0xA59047B9
  Creating directory plugin_tmp
  Verifying archive integrity... All good.

The use of a short key ID worries me, because it is now trivial to
generate keys with arbitrary key IDs, and gpg --recv-keys will happily
download all those it finds. Also, pgp.mit.edu is a keyserver where
everyone can upload arbitrary keys.

You can run "gpg --recv 70096AD1" to play with multiple keys having the
same key ID.

I assume hp-plugin is open to downloading and verifying plugins signed
by any key that one can verify that have that short key ID, and that
with that and some fiddling with DNS one can cause systems running
hp-plugin to download and run malicious code.

A quick fix would be to use the full fingerprint instead of the key id.


Regards,

Enrico

--=20
GPG key: 4096R/E7AD5568 2009-05-08 Enrico Zini <enrico@enricozini.org>

--PEIAKu/WMn1b1Hv9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJVaGLwAAoJEAPWVoyDcnWp2g8P/1tSedj7tHbUtZF+cRxEXidg
JXcguYDDDt1s4esnJ60EqoW7aSS7ymh25SItoOPTiOfVx0cvwqWOFESljG4mnHqZ
w+XRysBzQXPs7wp4CN8JuQCjYBLWM7Zwurc8MQIKRAz0zQD+mbMANt9AXLoHJeoo
lACQFfj2G1Yi2W7n1tZ6CgOjvfQV/nZtpVQR2+kpPKEP2OFwCcx4/7LLHtTsLBxj
2Sl3OzBW/HWC5sn1OQnvbN4T0b8ruUSBeuVS9UO6gN+1b91ZgWsAmju0+O8v80n6
CsP1wl46yL0jTgym/M7dGUu3Gel+R04L3xW6u/cEEltOf16+ypEVaLxJspoetnBK
dDUMwCpc+WsxlHdgBFRU53STaqzbSUcHhCIfJxgXgv0w7JszGF5DDesgeIYdBvmk
qGudrhODMMudgoIla59B7hJnsZNDJpIcEDl/Gcpi2zRUSKuekedhjvX/5+2UyN98
Tbv6sme1p1hL2uY0V6vHtKKeAhes0uIUurNTdUmDpeczUB+JrZMH5ySi1WRte3SC
DmP0TUzf/nNsW5tiHsjj1OiQfenvXpemFQ6KMedlc12+hYHeXuMAwj08UKAslWLf
OOvzAMIsPe4f1/YGL3PhvnL2fhPmZoHqTPQ8g2LYtXdDDLCyvQa2SZ1WaB55ubVL
abC1NO99/XtOtcLOyUFP
=eVbN
-----END PGP SIGNATURE-----

--PEIAKu/WMn1b1Hv9--
