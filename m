X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2444" "Tuesday" "6" "December" "2016" "14:51:26" "+0100" "Andrej Nemec" "anemec@redhat.com" "<b002dfc4-7395-1991-2c14-995fa46dc930@redhat.com>" "68" "[oss-security] Tcsh: Out-of-bounds read in c_substitute()" nil nil nil "12" "2016120613:51:26" "[oss-security] Tcsh: Out-of-bounds read in c_substitute()" (number mark "U       anemec@redha Dec  6   68/2444  " thread-indent "\"[oss-security] Tcsh: Out-of-bounds read in c_substitute()\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16061 invoked by uid 550); 6 Dec 2016 13:51:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16034 invoked from network); 6 Dec 2016 13:51:42 -0000
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
From: Andrej Nemec <anemec@redhat.com>
Cc: dkaspar@redhat.com
Message-ID: <b002dfc4-7395-1991-2c14-995fa46dc930@redhat.com>
Date: Tue, 6 Dec 2016 14:51:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.5.1
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="tC7X2LxPeKUvrFVsNmP2GQI2GCAqGob32"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Tue, 06 Dec 2016 13:51:31 +0000 (UTC)
Subject: [oss-security] Tcsh: Out-of-bounds read in c_substitute()

--tC7X2LxPeKUvrFVsNmP2GQI2GCAqGob32
Content-Type: multipart/mixed; boundary="NFQg2on3mwDvIkWuQStQBINoQg3JiVhN7";
 protected-headers="v1"
From: Andrej Nemec <anemec@redhat.com>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Cc: dkaspar@redhat.com
Message-ID: <b002dfc4-7395-1991-2c14-995fa46dc930@redhat.com>
Subject: Tcsh: Out-of-bounds read in c_substitute()

--NFQg2on3mwDvIkWuQStQBINoQg3JiVhN7
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello folks,

We were made aware of an out-of-bounds read issue that was reported to
Tcsh upstream and fixed. This issue could result in a crash after
starting tcsh and hitting TAB on some systems.

Right now, the issue is contained in Fedora/RHEL, because we're using
glibc's sysmalloc (not the builtin malloc), which masks the issue.
Fedora maintainer decided to fix this anyway just to be safe. As far as
our systems are concerned we don't consider this a security issue for
now. I am looking forward to hearing other opinions if anyone is interested.

Bug report:

http://mx.gw.com/pipermail/tcsh-bugs/2016-December/001103.html

Upstream fix:

https://github.com/tcsh-org/tcsh/commit/6a542dc4fb2ba26518a47e9b3a9bcd6a91b=
94596

Best Regards,

--=20
Andrej Nemec, Red Hat Product Security
3701 3214 E472 A9C3 EFBE 8A63 8904 44A1 D57B 6DDA



--NFQg2on3mwDvIkWuQStQBINoQg3JiVhN7--

--tC7X2LxPeKUvrFVsNmP2GQI2GCAqGob32
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJYRsJeAAoJEIkERKHVe23av9kQAInWqyhI9BrmtqR3MsSFXKCy
oi+d48QN3LOYZQhIKpaTq2w20azdNyZow+A6xTOmPeKyDp+GHlv/Z3tVIp4t+TPK
OTGqoKFUhVm7cSUen2VeFJmbe/VF4SVNEtULug3dtxLfVxnCW6psbHoWpQ9if1lL
B5QzZFPQ/NWrlBNNbT4zT9Iw4On5WqpCvjJEo3XJ8kYGvtCFe49k2w9Bw4JIJCUw
/odTK65iAjDL7kucdR0RZohy2SVzS8BpX2T59JEayXCOQ+69OXiGm+7uTEqXRMeK
AfhSwbnFIphDFHvU8Xt7G01oOjyrxd9Cdf782fo34Khq/3OS6P5vhtpcqrjpfvOr
fQQuiUle0OJLy+IWqBnrz65QECCKYtEcy4M4azKwIsu3mibBNs07CpZFZKV0fWPs
pqQ9tJESuJ+HNV3ULIbAAHFbkg2PMQvRTYJuMOsvBnv/7Hrjn+Inn7gGKK/Xg/xb
9eWmtM+1fjbl3ZMtkNHYfxgT4zFTsv28WZEZpijdY5G4qXx8JT2Xm7i7N73FZmrJ
ztblRLqSi/eDefzUXmLxVvLiIt3QTtC14eivcEnvm7L44WhvTFzcuyRJk29rUB2b
4hhMMnnBmEDdJGekd+kR+4PqNu/sWg/Z9O7S0VEfYxBMj7FcuFoR4OmZuHbRixEw
dhNUQH5lGR4Hk70m9MQ4
=GJ+o
-----END PGP SIGNATURE-----

--tC7X2LxPeKUvrFVsNmP2GQI2GCAqGob32--
