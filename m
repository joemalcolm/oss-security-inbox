X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1680" "Monday" "4" "May" "2015" "07:41:38" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20150504074138.606524ab@pc1>" "47" "Re: [oss-security] CVE request: libarchive: Out of bounds read using malformed cpio archive" nil nil nil "5" "2015050405:41:38" "[oss-security] CVE request: libarchive: Out of bounds read using malformed cpio archive" (number mark "        hanno@hboeck May  4   47/1680  " thread-indent "\"Re: [oss-security] CVE request: libarchive: Out of bounds read using malformed cpio archive\"\n") "<20150504053551.GA10559@eldamar.local>" ("<20150504053551.GA10559@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14168 invoked by uid 550); 4 May 2015 05:41:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14143 invoked from network); 4 May 2015 05:41:19 -0000
Message-ID: <20150504074138.606524ab@pc1>
In-Reply-To: <20150504053551.GA10559@eldamar.local>
References: <20150504053551.GA10559@eldamar.local>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.27; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-5397-1430718067-0001-2"
Cc: OSS Security Mailinglist <oss-security@lists.openwall.com>,
  CVE Assignments MITRE <cve-assign@mitre.org>
Date: Mon, 4 May 2015 07:41:38 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: libarchive: Out of bounds read
 using malformed cpio archive
To: Salvatore Bonaccorso <carnil@debian.org>

--=_zucker.schokokeks.org-5397-1430718067-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, 4 May 2015 07:35:51 +0200
Salvatore Bonaccorso <carnil@debian.org> wrote:

> Could a CVE be assigned for the following issue in libarchive:

I've lately reported ~15 different memory access issues in libarchive.
Not sure, do you want to assign CVEs for all of them?

Wanted to wait till everything is fixed and make a big announcement
then, but given that this seems to take longer than expected I don't
know...

--=20
Hanno B=C3=B6ck
http://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-5397-1430718067-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJVRwaSAAoJEKWIAHK7tR5CXfkQALu/wmINqXqKcXdfTMsBlwYG
qPA2KJnn+DKQ5TRXrJFXtxgTgHTO2tw8hfSZlTVHgJKwH6jkTDQAriAR/cKiHdDi
IkX1vlZSc+FIMS0Gl8hLJg/lcSxImWo0peQLtD30dNi32VBdWZO4T4RsekivrqAk
dhXKHOAqUFcslL4/AybleS0dSCj/u9vUzdPUnRu4ex28YOF+gueCbV01Bf3PtKUQ
7M+SvurPptoLZP/B2tAWbKMZ8FMeusB3TLgHgk01gDqHe25/ZdJj0axYKfYkx/dC
8qu1vDvmNeECITzc9foXYarb+bgCUbc0mG6STEQwQtwqef7Zfys6PiF2o1MVAIDn
fep7sLvYiJlUIx84DWiuNzHS8FqObbRo9a+OMGGBYSa7YkFFYmQdK41Fb5dDXPS9
uELcSNuS+NOvKaWJ/dhNGQRuBqGfFDWWXqgadlTp/3YIqncEhUvDpe10eSusjQ6E
wzGuPUjPosJCYOg4EEw5yMurjekSTult1vW+yRiB2a30ibzYmrbprdTTq7Y35BlN
zFhMZGwKX8BPEJuLB2EbebaRgsZvnRIOmDe0v0SYMxxvyHMwzbkPM9BqnYSoMR/v
Z30Cwl644HiCNUJ7tAjkGOaG9ioK8++gvUqQ7Pz660yhoAW+0/t7UmFHpmcpPEsf
e/vwjBXUBNitkZxyzRqn
=qjoV
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-5397-1430718067-0001-2--
