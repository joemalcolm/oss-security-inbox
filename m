X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2087" "Tuesday" "13" "October" "2020" "10:23:52" "-0700" "Steve Beattie" "steve.beattie@canonical.com" "<20201013172352.GA66549@nxnw.org>" "64" "[oss-security] CVE-2020-16119 - Linux kernel DCCP CCID structure use-after-free" nil nil nil "10" "2020101317:23:52" "[oss-security] CVE-2020-16119 - Linux kernel DCCP CCID structure use-after-free" (number mark "U       steve.beatti Oct 13   64/2087  " thread-indent "\"[oss-security] CVE-2020-16119 - Linux kernel DCCP CCID structure use-after-free\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-16119 - Linux kernel DCCP CCID structure use-after-free" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9579 invoked by uid 550); 13 Oct 2020 17:26:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7863 invoked from network); 13 Oct 2020 17:24:06 -0000
Date: Tue, 13 Oct 2020 10:23:52 -0700
From: Steve Beattie <steve.beattie@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <20201013172352.GA66549@nxnw.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ibTvN161/egqYuK8"
Content-Disposition: inline
Organization: North by Northwest Consolidated Industries, LLC
X-PGP-Key: http://www.NxNW.org/~steve/005E81F4.txt
Subject: [oss-security] CVE-2020-16119 - Linux kernel DCCP CCID structure use-after-free

--ibTvN161/egqYuK8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

CVE-2020-16119 - Linux kernel DCCP CCID structure use-after-free

Hadar Manor reported that by reusing a DCCP socket with an attached
dccps_hc_tx_ccid as a listener, it will be used after being released,
leading to a denial of service or possibly code execution.

It was introduced by:

 2677d20677314101293e6da0094ede7b5526d2b1 "dccp: don't free
 ccid2_hc_tx_sock struct in dccp_disconnect()"

Proposed fixes have been posted to:
  https://lore.kernel.org/netdev/20201013171849.236025-1-kleber.souza@canon=
ical.com/T/

To mitigate this on systems that have DCCP enabled but do not
use it, block module autoloading via adding the following to
/etc/modprobe.d/blacklist-dccp.conf:

   alias net-pf-2-proto-0-type-6 off
   alias net-pf-2-proto-33-type-6 off
   alias net-pf-10-proto-0-type-6 off
   alias net-pf-10-proto-33-type-6 off

Alternatively, to prevent the dccp module from being loaded entirely,
add:

  blacklist dccp
  install dccp /bin/false

Thanks.

--=20
Steve Beattie
<sbeattie@ubuntu.com>

--ibTvN161/egqYuK8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEpgY7tWAjCaQ8jrvULwmejQBegfQFAl+F4qQACgkQLwmejQBe
gfSXcg/+LOtX8wwnWgnmNIoQQBsG4vnJ/SJnrLW2uTjkAnIzSWViuqhtaCn838LN
Nyfn1davQaGkPAJhSOKTnCdHEvUQYn+fXDP6RlHqkx+3GNSe4kToeu+a+/g7zuP/
ZQ45zEeiqBhGmQzg7ST6559B5hAwAQFyxXYvbfo5pyxiANCRQfRtirt6ThYPEzEJ
Lu2co2ehVnAPpScAs+82aK76jRPCJZWUAjJtuHk1P9NlcusziDiA+7mAiItyJ43R
O4ba4qnPpQtsD2pGKcgXzs9GQNP7vZmwd+NtnezMv+ElBUn2nfKPl/+tMjsCvfCn
prmR9CsDwBiW179guxFzOux+YBoUvdAiRJ5jW6LqkViZa2I2rmV2xSJKDR+H6dZG
0dw5OMbyEUtmkWK0J4Ssu8ql26Xb/Fav3EQ6vF1Xq+/8uk8MFvbsIS+LSVAgtbdf
MwgHhGpOOcifkt58TsOUjHHgaU2kNEliOqtZGqSHL8nk7y9oEtwnUAh0+kb46S5R
0dJq384OoXJcl1b2kpmrdjuhY4I+t8G/ddfOcasLFgi3bd0L6adsHp2yX3QzdZkW
2PD22lfhklPc2LIknOS56hSoIsD7DRlW9FNZh2Hfb4oAnM+HfcZLfFlvEzIOBeRp
6vFcnTgu2nHnOs8jbZTAau7FG2AAj8HtLQPcQBGidIFjAfNQXuE=
=FttB
-----END PGP SIGNATURE-----

--ibTvN161/egqYuK8--
