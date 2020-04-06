X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2621" "Monday" "6" "April" "2020" "09:01:12" "-0700" "Steve Beattie" "steve.beattie@canonical.com" nil "67" nil nil nil nil "4" nil nil (number mark "U       steve.beatti Apr  6   67/2621  " thread-indent "\"[oss-security] CVE-2020-8834: Linux kernel Power8 conflicting use of HSTATE_HOST_R1 vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-8834: Linux kernel Power8 conflicting use of HSTATE_HOST_R1 vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19857 invoked by uid 550); 6 Apr 2020 17:15:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5335 invoked from network); 6 Apr 2020 16:01:28 -0000
Date: Mon, 6 Apr 2020 09:01:12 -0700
From: Steve Beattie <steve.beattie@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <20200406160112.GA863041@nxnw.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="azLHFNyN32YCQGCU"
Content-Disposition: inline
Organization: North by Northwest Consolidated Industries, LLC
X-Paranoia: Greetings CIA, FBI, MI5, NSA, ATF, Immigration!
X-Message-Flag: Repeal the DMCA! Real security is only possible  when subject
 to open critical review.
X-PGP-Key: http://www.NxNW.org/~steve/005E81F4.txt
Subject: [oss-security] CVE-2020-8834: Linux kernel Power8 conflicting use of HSTATE_HOST_R1
 vulnerability

--azLHFNyN32YCQGCU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

KVM in the Linux kernel on Power8 processors has a conflicting
use of HSTATE_HOST_R1 to store r1 state in kvmppc_hv_entry plus in
kvmppc_{save,restore}_tm, leading to a stack corruption. Because
of this, an attacker with the ability run code in kernel space of a
guest VM can cause the host kernel to panic.

There were two commits that, according to the reporter, introduced the
vulnerability:

  f024ee098476 ("KVM: PPC: Book3S HV: Pull out TM state save/restore
  		into separate procedures")
  87a11bb6a7f7 ("KVM: PPC: Book3S HV: Work around XER[SO] bug in fake
  		suspend mode")

The former landed in 4.8, the latter in 4.17. This was fixed without
realizing the impact in 4.18 with the following three commits, though
it's believed the first is the only strictly necessary commit:

  6f597c6b63b6 ("KVM: PPC: Book3S PR: Add guest MSR parameter for
  		kvmppc_save_tm()/kvmppc_restore_tm()")
  7b0e827c6970 ("KVM: PPC: Book3S HV: Factor fake-suspend handling out
  		of kvmppc_save/restore_tm")
  009c872a8bc4 ("KVM: PPC: Book3S PR: Move kvmppc_save_tm/kvmppc_restore_tm
  		to separate file")

Thus, the only upstream kernel affected is the 4.17 kernel -- Ubuntu's
4.15 kernels are affected because we backported 87a11bb6a7f7 to our 4.15
kernels. It does not appear to have been cherrypicked to any of the
upstream stable kernels.

Discovered by Gustavo Romero and Paul Mackerras.
Ref: https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1867717
CVE: CVE-2020-8834

--=20
Steve Beattie
<sbeattie@ubuntu.com>
http://NxNW.org/~steve/

--azLHFNyN32YCQGCU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEpgY7tWAjCaQ8jrvULwmejQBegfQFAl6LUkgACgkQLwmejQBe
gfQMOA/5ASqm2IdPphLWqzAuR917DheBzaqiFbF2rB0TjNP6l3Oo63fzpT41k0dQ
Gmtil6E8uCEO68iv17nsHI16bm07yAlxn5s88qPdTh7dgF3uvyuBFurZRypbWg2E
PbGLjeRUXVp9Hurh1VVnl4XObOxSuzbngdNNrh91RlLmkRKmCq8pB/g8ixJOKCEL
1/hPiKsuu8oRY5F+g2GyR9HbmYO3HlzqkvBwpF4iBS+ecBOa+Cpm/zz9mS0pqtoO
EFpzSJCxM00tbZRyzb4AeFUmcwSagc6HBgZ/44QbvqPyoLRScOP7eg7QccGgHETZ
xVurEFSGKpzJWprv4FUBzZ1e6x9vDVnYLYP3qCbbNDLruVIVQ1FNxTetedvXr1Io
HcDt/bvDSC+C6dKm7R+aFoWUKqgOCtY5775+3+3q7deg9R2Zs22xjE9LmQHN2bz7
19qHfmNN6TIZ3HdgfJnAwHlFJnG35rdplhWCAvorVieZHUiySwIwRXg/awcbgpMe
JLTcR7fmwsBr20U1065EPKqevotSO8QORiHWOxypKfiM4VBCijBMFznQNdoOlCdh
x//SsFOi0v7mWUaskpIhbOXJcY4lfZBss+Vb+in+NWEwxifP3zRqTYemyOZLHz6p
GEZaRiY1U74gx/45ak6ttq/Zec0MYlbIsZ2+urnrgfUX4cT2PK8=
=vln5
-----END PGP SIGNATURE-----

--azLHFNyN32YCQGCU--
