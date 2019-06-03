X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1487" "Monday" "3" "June" "2019" "11:24:19" "-0500" "Federico Mena Quintero" "federico@gnome.org" "<878f6a682e3b533c003e3c06569784b1f442ad67.camel@gnome.org>" "42" "[oss-security] Crash / fix in bzip2" nil nil nil "6" "2019060316:24:19" "[oss-security] Crash / fix in bzip2" (number mark "U       federico@gno Jun  3   42/1487  " thread-indent "\"[oss-security] Crash / fix in bzip2\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Crash / fix in bzip2" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7509 invoked by uid 550); 3 Jun 2019 16:31:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3320 invoked from network); 3 Jun 2019 16:24:41 -0000
Message-ID: <878f6a682e3b533c003e3c06569784b1f442ad67.camel@gnome.org>
From: Federico Mena Quintero <federico@gnome.org>
To: oss-security@lists.openwall.com
Cc: Albert Astals Cid <aacid@kde.org>
Date: Mon, 03 Jun 2019 11:24:19 -0500
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-lzYf6TSnFDZ79yyVeP1G"
User-Agent: Evolution 3.30.4 
Mime-Version: 1.0
Subject: [oss-security] Crash / fix in bzip2

--=-lzYf6TSnFDZ79yyVeP1G
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

oss-fuzz found a crasher in bzip2, and Albert Astals Cid has written a
patch for it.  The full context of the bug is here:

https://gitlab.com/federicomenaquintero/bzip2/merge_requests/1

The patch itself is this:

https://gitlab.com/federicomenaquintero/bzip2/commit/15c918f1de00588321c857=
a10d0afdbaf96e4ce9

  Federico

--=-lzYf6TSnFDZ79yyVeP1G
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEimgzR293D4MftvsWbaDEzbyzCLMFAlz1SbMACgkQbaDEzbyz
CLMr/A//bV/AIu27a5kqvqGZeBKOUV66GHTqcPN0y99vAUm6FpTzrXxk1h4ml3VE
XkV6zNk6fPdzCuVQsiAkdHbR5xTreZl7Xd+tlSMXQorYTjq7lSaSNHrgLZJQcxau
tzHXfTP2zLH5my7kSf6DXpFGCeCKhbFd5hTk6ogjX1DRwe3Rh9kS5hcY4isDIlIh
cAZ2NRtU7NyMzJaVSpepeTBvQOhY72iqM8T3qsX7qpjtGnYStB3eBgJgwaqzZw6z
XqKRjipKPYi2pcAV3knT+wfy0Dcg4nH5fiBVh1wjNC+KFafL/1Tv8D3F9W/nU8nB
G0udEg+puT2knkfQQNA54l0YonBJcZSlDoKIpZSSK0Jd6+7TBlrHO/btsScg3/sh
UlWDJMjNzf+wSxjA10HCdsaeoeOgeXl+49I3m+IJLCBMnpNSEMfPf1xAym3xM4fo
hdEoNkDHY8PiuePOZJx4rYK23QakiZug0TAzOoeY+6pYysiejNQIu6N+pa5GlbKY
QmjW0xugnjKwxhnMFxLnDX1feRGejr/QwUX4kpghllgahCJXrUdP4qDRpArA/K65
lyW7LiGi+t+dl+eMz/EMObb7mzvajR4Nmi7Ojv1pIpS1gOwyIIrSqDNFydO8vn/2
SPcf+t1HSuJXoTcHQrUTkJ/Aid9udMUVCF8NZWBQA9fVvZNg01s=
=zl+7
-----END PGP SIGNATURE-----

--=-lzYf6TSnFDZ79yyVeP1G--

