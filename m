X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2509" "Thursday" "20" "April" "2017" "16:26:16" "+0200" "Andrej Nemec" "anemec@redhat.com" "<b31ce992-8cb7-15c7-397f-7408bb459027@redhat.com>" "65" "[oss-security] CVE-2017-2575 libbpg: NULL pointer dereference in image_alloc" nil nil nil "4" "2017042014:26:16" "[oss-security] CVE-2017-2575 libbpg: NULL pointer dereference in image_alloc" (number mark "U       anemec@redha Apr 20   65/2509  " thread-indent "\"[oss-security] CVE-2017-2575 libbpg: NULL pointer dereference in image_alloc\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24104 invoked by uid 550); 20 Apr 2017 14:26:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24080 invoked from network); 20 Apr 2017 14:26:30 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com BE169C1CA430
Authentication-Results: ext-mx08.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx08.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=anemec@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com BE169C1CA430
To: oss-security@lists.openwall.com
From: Andrej Nemec <anemec@redhat.com>
Message-ID: <b31ce992-8cb7-15c7-397f-7408bb459027@redhat.com>
Date: Thu, 20 Apr 2017 16:26:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="OaWCAVfBN3Da9tHoMAI6BvLnMdhGhCbPG"
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Thu, 20 Apr 2017 14:26:18 +0000 (UTC)
Subject: [oss-security] CVE-2017-2575 libbpg: NULL pointer dereference in image_alloc

--OaWCAVfBN3Da9tHoMAI6BvLnMdhGhCbPG
Content-Type: multipart/mixed; boundary="jevb9NB0Cp3qtm4vXdJgen1j4LwvVCavN";
 protected-headers="v1"
From: Andrej Nemec <anemec@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <b31ce992-8cb7-15c7-397f-7408bb459027@redhat.com>
Subject: CVE-2017-2575 libbpg: NULL pointer dereference in image_alloc

--jevb9NB0Cp3qtm4vXdJgen1j4LwvVCavN
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello folks,

While going through our assigned CVEs it was found that this one was
allocated but never reported by the original researcher to the public
list. I am going to list as much information as possible below. Credits
for the findings go to "Meifang, Yang @VARAS of IIE". I advised the
researcher to report this issue upstream, however, it seems the
communication failed.

A vulnerability was found while fuzzing libbpg 0.9.7. It is a NULL
pointer dereference issue due to missing check of the return value of
function malloc in the BPG encoder. This vulnerability appeared while
converting a malicious JPEG file to BPG.

The problem seems to be line 717 in function image_alloc. Due to the
missing check, value of img->data[i] could be NULL and crash the program.

Unfortunately, I don't have access to the reproducer.

Best Regards,

--=20
Andrej Nemec, Red Hat Product Security
3701 3214 E472 A9C3 EFBE 8A63 8904 44A1 D57B 6DDA



--jevb9NB0Cp3qtm4vXdJgen1j4LwvVCavN--

--OaWCAVfBN3Da9tHoMAI6BvLnMdhGhCbPG
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJY+MUIAAoJEIkERKHVe23aUZkQAIF+2RqFz0siTT7Sg7Q4ZdYY
cP6YlxINaTuftAHpY8AF7RGoBLYnqvpRuW0B5T5LsLDNvRF15KthNI7lvaAMdo7S
38i8xC4SzIE9mbzdCievLlYUigcgQ226fRST7VIBlZbstUDCPD88VSUCHE5DVAO2
jsvooRSU3Spb4jCGQZZk5jDBp6Aqo40L+dDV5o+Ukey8J9xotis1U8kI4cXQwiu+
4iBICeUAffTtoTrpgo0mCGgu861NU8RxxUyo0bwSa2pl5sA9/HNo2TDCO2wqtcBx
G09widUHfPGoBWuLO6FpEVDD1qNM1SaO/BwtIC49ErVIwME46ysyK6WdWel5A0Tj
GlAQZ2L4a9yLo4Vxkn5jS7xNNbG+GPRounEUCDtYIpki5RP8XNQfe1YpAJQnecEV
Twc7sBLQnjgSaH8s5CuHtPMLaIhOjIbdcidLGB8H5D4Xe6TUQ7KBARmH9wbW4pNT
PZpbbky8+nJYb+OyNfIghu5j819E0l2qpn9oMrLsu8XneFy43e676x4zTVbXA/Ls
AsScgJQ1numcIpklmEnZteO/SxwbX30TQ4OQVhkRCg9bH8SA8ZSNZ5hEIeMSPo3L
s2nrQ6GVKPtA4p9CTDw1UXYgzqAvKKbAg0sz30GhLIZXXQPIlSYDmmHdI1oVTv1Z
T6kFuGsWRuLgAtKMYb7M
=Dvka
-----END PGP SIGNATURE-----

--OaWCAVfBN3Da9tHoMAI6BvLnMdhGhCbPG--
