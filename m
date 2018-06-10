X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1119" "Sunday" "10" "June" "2018" "18:38:47" "+0200" "Yves-Alexis Perez" "corsac@debian.org" "<7897eadf67144a237334450d05396572daa60e34.camel@debian.org>" "33" "Re: [oss-security] Re : Re: [oss-security] CVE-2018-12020 in GnuPG" "^Date:" nil nil "6" "2018061016:38:47" "[oss-security] Re : Re: [oss-security] CVE-2018-12020 in GnuPG" (number mark "        corsac@debia Jun 10   33/1119  " thread-indent "\"Re: [oss-security] Re : Re: [oss-security] CVE-2018-12020 in GnuPG\"\n") "<bzwjweLsc_IpouMt05ni4KMcd4XJPVuF1Bp42jMQhPiNaYdT-Cei_P1CYdQzwJWMYMdRtC0GwvgBM6A774c2_EGFE3onwBMEd5lHH2KBD0s=@itk.swiss>" ("<167bc7e898d02f7bd13c43d272d64178f00e7e23.camel@debian.org>" "<44254614-42f1-9908-a55c-401d20ffc2bd@ruhr-uni-bochum.de>" "<bzwjweLsc_IpouMt05ni4KMcd4XJPVuF1Bp42jMQhPiNaYdT-Cei_P1CYdQzwJWMYMdRtC0GwvgBM6A774c2_EGFE3onwBMEd5lHH2KBD0s=@itk.swiss>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27655 invoked by uid 550); 10 Jun 2018 16:39:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26613 invoked from network); 10 Jun 2018 16:39:03 -0000
Message-ID: <7897eadf67144a237334450d05396572daa60e34.camel@debian.org>
In-Reply-To: <bzwjweLsc_IpouMt05ni4KMcd4XJPVuF1Bp42jMQhPiNaYdT-Cei_P1CYdQzwJWMYMdRtC0GwvgBM6A774c2_EGFE3onwBMEd5lHH2KBD0s=@itk.swiss>
References: <167bc7e898d02f7bd13c43d272d64178f00e7e23.camel@debian.org>
	 <44254614-42f1-9908-a55c-401d20ffc2bd@ruhr-uni-bochum.de>
	 <bzwjweLsc_IpouMt05ni4KMcd4XJPVuF1Bp42jMQhPiNaYdT-Cei_P1CYdQzwJWMYMdRtC0GwvgBM6A774c2_EGFE3onwBMEd5lHH2KBD0s=@itk.swiss>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.2-1 
Mime-Version: 1.0
Date: Sun, 10 Jun 2018 18:38:47 +0200
From: Yves-Alexis Perez <corsac@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re : Re: [oss-security] CVE-2018-12020 in GnuPG
To: oss-security@lists.openwall.com, marcus.brinkmann@ruhr-uni-bochum.de

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

On Sun, 2018-06-10 at 10:58 -0400, Stiepan wrote:

Hi Stepian,

> This responsibility discussion is all well and fine, but now that this is
> half-public, may we know for sure whether we are affected :
> 1. as debian(-like) package consumers

Not entirely sure what you mean here, but if you're talking about the apt
package managers (which relies on gpgv for signature verification), it's
currently investigated.

Note that all supported suites have had their gnupg version updated: https:=
//s
ecurity-tracker.debian.org/tracker/CVE-2018-12020

Regards,
- --=20
Yves-Alexis
-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEE8vi34Qgfo83x35gF3rYcyPpXRFsFAlsdVBcACgkQ3rYcyPpX
RFvs6wgAyOwnS9uaOmW1Qg6pM7iKDlTYVe7SteOlVn6QyAQzKhTmsazdo+xZJ6+y
Bd7BScDNRRvyTCZKtqyMvuTMCBjVoGcIQoGvrZW64X9wVCCgk/U5bpe39WwTpePZ
uScfW3MZKGOvYEKAGbC8aZDbTAkJ1D1HjOe0xVAv7Ifc0lpinYJSwQ2dEu9qDyRm
jxD9IpsZwAA2IX+yAb87ebW5Cm6ZFMoWUuj2VmE8Eth3k6wmHexLahiz/JR+qrET
+s3aRcDTae7dajEPfIWLrSnxxVYHrdYs3xiDsD4NbapJ2YACSZ/ayL8P5GWIuQZ/
tipCq/jMIikHy59/fc247FOxSgCOew=3D=3D
=3Dc5lf
-----END PGP SIGNATURE-----
