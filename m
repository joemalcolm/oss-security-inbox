X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4622" "Sunday" "29" "January" "2017" "20:21:37" "-0500" "Leo Famulari" "leo@famulari.name" "<20170130012137.GA20854@jasmine>" "109" "[oss-security] FW: [DSA 3775-1] tcpdump security update]" "^Date:" nil nil "1" "2017013001:21:37" "[oss-security] FW: [DSA 3775-1] tcpdump security update]" (number mark "        leo@famulari Jan 29  109/4622  " thread-indent "\"[oss-security] FW: [DSA 3775-1] tcpdump security update]\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20390 invoked by uid 550); 30 Jan 2017 09:44:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7949 invoked from network); 30 Jan 2017 01:21:49 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=famulari.name; h=
	content-type:date:from:message-id:mime-version:subject:to
	:x-me-sender:x-me-sender:x-sasl-enc:x-sasl-enc; s=mesmtp; bh=1sZ
	EaTr2ZlDJOknu2b7He2sqHk4=; b=0vceWPPmEsSCJZHfLNI6rDADtg30zKqX5aS
	/wzWhgOcxfqXDLxbVdFh1kbnFencDqBNVCGGYksAuhTZhLqNKFFK2zfXRORzvBww
	23DQ8GnXVhgBN/RbSJepWWRiuGSHkzakt0QEUAAga0CdVE/qrTek+AkSiBqxo9YQ
	Xj+//I1w=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:message-id
	:mime-version:subject:to:x-me-sender:x-me-sender:x-sasl-enc
	:x-sasl-enc; s=smtpout; bh=1sZEaTr2ZlDJOknu2b7He2sqHk4=; b=efGBg
	1S15g7MkMfAjjZ3uXNOBRMTjkxh80aZBb9J3fcu0bOMs5LtWZK6wpCB90DBIfq1b
	ewXkPQ/utXpb7vX5vie5F9tuGmr6S5LHdTg/guvGxSWiRMyjyxXbgr0KefpxXYK/
	qgKzjUXspZtmi6vRIcR2Vq5pUqPXYXtB8oHEyE=
X-ME-Sender: <xms:IpWOWEWqHWLzVdttswkCC-vI5he7FtdzCrj-V3_mceyiR8QwNCwBDA>
X-Sasl-enc: G8TprZWPut+2VA3GkBCQN9EtREt804oUezlFQwLTK27k 1485739298
Message-ID: <20170130012137.GA20854@jasmine>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fUYQa+Pmc3FrFX/N"
Content-Disposition: inline
User-Agent: Mutt/1.7.2 (2016-11-26)
Date: Sun, 29 Jan 2017 20:21:37 -0500
From: Leo Famulari <leo@famulari.name>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] FW: [DSA 3775-1] tcpdump security update]
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--fUYQa+Pmc3FrFX/N
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

I'm forwarding a Debian security advisory regarding tcpdump.

The reason that I'm forwarding it is that I'm unable to find an upstream
source for this new release, 4.9.0.

It doesn't appear on tcpdump web page nor has it been tagged in their
public Git repo:

http://www.tcpdump.org/#latest-release
https://github.com/the-tcpdump-group/tcpdump/tags

Can anyone provide some insight?

----- Forwarded message from Moritz Muehlenhoff <jmm@debian.org> -----

Date: Sun, 29 Jan 2017 18:24:15 +0100
From: Moritz Muehlenhoff <jmm@debian.org>
To: debian-security-announce@lists.debian.org
Subject: [SECURITY] [DSA 3775-1] tcpdump security update
User-Agent: NeoMutt/20161126 (1.7.1)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

- -------------------------------------------------------------------------
Debian Security Advisory DSA-3775-1                   security@debian.org
https://www.debian.org/security/                       Moritz Muehlenhoff
January 29, 2017                      https://www.debian.org/security/faq
- -------------------------------------------------------------------------

Package        : tcpdump
CVE ID         : CVE-2016-7922 CVE-2016-7923 CVE-2016-7924 CVE-2016-7925=20
                 CVE-2016-7926 CVE-2016-7927 CVE-2016-7928 CVE-2016-7929=20
                 CVE-2016-7930 CVE-2016-7931 CVE-2016-7932 CVE-2016-7933=20
                 CVE-2016-7934 CVE-2016-7935 CVE-2016-7936 CVE-2016-7937=20
                 CVE-2016-7938 CVE-2016-7939 CVE-2016-7940 CVE-2016-7973=20
                 CVE-2016-7974 CVE-2016-7975 CVE-2016-7983 CVE-2016-7984=20
                 CVE-2016-7985 CVE-2016-7986 CVE-2016-7992 CVE-2016-7993=20
                 CVE-2016-8574 CVE-2016-8575 CVE-2017-5202 CVE-2017-5203=20
                 CVE-2017-5204 CVE-2017-5205 CVE-2017-5341 CVE-2017-5342=20
                 CVE-2017-5482 CVE-2017-5483 CVE-2017-5484 CVE-2017-5485=20
                 CVE-2017-5486

Multiple vulnerabilities have been discovered in tcpdump, a command-line
network traffic analyzer. These vulnerabilities might result in denial
of service or the execution of arbitrary code.

For the stable distribution (jessie), these problems have been fixed in
version 4.9.0-1~deb8u1.

For the testing distribution (stretch), these problems have been fixed
in version 4.9.0-1.

For the unstable distribution (sid), these problems have been fixed in
version 4.9.0-1.

We recommend that you upgrade your tcpdump packages.

Further information about Debian Security Advisories, how to apply
these updates to your system and frequently asked questions can be
found at: https://www.debian.org/security/

Mailing list: debian-security-announce@lists.debian.org
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEtuYvPRKsOElcDakFEMKTtsN8TjYFAliOJGUACgkQEMKTtsN8
TjY54w//TQtKeoBF3uzCtMTKExAzKCZKkVnTLkFKu0Ybcr6ooTQ+Vyy81t0WlHa7
L4i31RavlQerBK3euGLhg679Bcv6Wrtgc1dC6caaDQTWF3+IWrZ/KO3LHJdgLMoj
y10zBMLBdr2rTB4cItXCYcCkzXWGGoDjFyAf9h61O6SAHa9qZthGXCzOY7G0eQfX
GCN7LW2rY+H3NuUo0UYVhiru9poflehxArdQnoeZGU//8uZ5qaD2XeUILQI+gOo8
rwBnYpF7YvrrFGaleVrHgXuLN6t/7HOkMxaIQtn9zmigZfWkOUjPGOAkn8xLKhk3
zgRBT7n+pd+N82TK4B6+RhDilY9Ec2btJ5EDHIJAnmVAATwoULPtgzQwLSrziN9a
DCsusuWxPFcvmyGMy4ooEWpKsZ2MgXusR/As84g5ZeWl9qOuZ9U0aeJtThhl37zA
wNH+KIgWEUoQNmoVrOCUchtbiKeHEbIDUWR1PNpgl3Cb7Fbp3be3AFPJiiTE/r+7
UUmtFXdWKGNK6nzLV0yo4TWDXyNLJMu+SP6JiZNsbkYntmUgqFw0iotWNoqgajPQ
U4cmAeDMJMDFTU6Or1Tam+Njv71mIZNGCsplZa2gAHHsmXHeqYiI+vEp5ZljFOkY
SgoWuuERDtFv4FGL5oBxP/Z+SYOrt8ME+rRqsLUWfgXD+tDCE6I=3D
=3DsV/2
-----END PGP SIGNATURE-----


----- End forwarded message -----

--fUYQa+Pmc3FrFX/N
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEsFFZSPHn08G5gDigJkb6MLrKfwgFAliOlSEACgkQJkb6MLrK
fwiyvw/+JU1s0uwuuEcKOvNG0wsiRTWTC4/LBfXdmvVr73U39iz0bs+prV9h53Dk
VDtFf/KGqCCKZ2WE3ZpwWQKBgnSjdk8RxHqbBED3g4MqQQQ4sI+w2RpHARRFWjRY
wmBvHXQiQjg1sk6BWC/X2/94BZdASr+LsiY1uHZWti9p016rWe29yM5NxFdkGq3Z
+bWZ+M7z7YyXMNCqz2fn5jPDP74KRXwemPArrr7/kYn5BbZEJGgMCyJfjaa/SBf5
tfCdGW9K75voD7vi3UaKgnuVcVzJJ7mlmFrcbgAeLCgwHQVAQ8D7zuVjcMVh/vwI
leRmTfQHiBQnRbFQX9kB8WdtBRHAxxjtQqaWZNc1VbuYm1jKIu2UGjWMVD4aTH9J
bb8Z/fFRTfbJFwMNYpGvwTd+fAmpGRvStDcpVAxAupjNvvaDe0IWlLCIdYTYDnR2
Pr/UQnzrJpb5XScp57MsqIQg+1RKWqHCE+qZSwDE1kQ41VbRGE+iZvK8e7eheqjY
+tGVuG/plSozrMgNjMv/Z2/+7O6K90mqxoaBD51P1JVQBK0Bozw/ooyXQQwaC34H
Tv30UxSefeEHBSu900G97SuH1c6Dw+K3ODOgniqJuk5G6Z0RhUDNZRnpKTmKR+Gr
yMSIXB0UpqJxHGi6D2KhKBqdAM+lhIPqne+QWniinqxNTCjAWl0=
=sirK
-----END PGP SIGNATURE-----

--fUYQa+Pmc3FrFX/N--
