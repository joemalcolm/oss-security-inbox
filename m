X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1622" "Wednesday" "15" "April" "2015" "02:39:01" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20150415023901.19ca4e5e@pc1.fritz.box>" "48" "[oss-security] proftpd: Unauthenticated copying of files via SITE CPFR/CPTO allowed by mod_copy" nil nil nil "4" "2015041500:39:01" "[oss-security] proftpd: Unauthenticated copying of files via SITE CPFR/CPTO allowed by mod_copy" (number mark "        hanno@hboeck Apr 15   48/1622  " thread-indent "\"[oss-security] proftpd: Unauthenticated copying of files via SITE CPFR/CPTO allowed by mod_copy\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31746 invoked by uid 550); 15 Apr 2015 00:39:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30652 invoked from network); 15 Apr 2015 00:38:54 -0000
Message-ID: <20150415023901.19ca4e5e@pc1.fritz.box>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.27; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-840-1429058322-0001-2"
Date: Wed, 15 Apr 2015 02:39:01 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] proftpd: Unauthenticated copying of files via SITE CPFR/CPTO
 allowed by mod_copy
To: oss-security <oss-security@lists.openwall.com>

--=_zucker.schokokeks.org-840-1429058322-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

This sounds serious:
https://github.com/proftpd/proftpd/pull/109
http://bugs.proftpd.org/show_bug.cgi?id=3D4169
https://cxsecurity.com/issue/WLB-2015040075

When the module mod_copy is enabled one can copy around files on the
server without any authentication.

(Not sure how widespread the use of this module is.)

There is no upstream release with a fix yet.

cu,
--=20
Hanno B=C3=B6ck
http://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-840-1429058322-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJVLbMlAAoJEKWIAHK7tR5CKrUQAK8V3zzdaabRLYbYSTiAHapD
/LJxMtIbAqqo7H8zcHPCi3Ql+fiYPpg4JZv3vujfHsX/9YiVpOV7TVRGFELNqVgS
IVYTmiMyQXL8I1wREcKccfxDuVvmTMAKuowECCC5rBtipPqEmg9ybAMSgU8IwDdl
JiePGRxSjE1YhftGbtBtywT98GZ64LZpNyz8llWRBV/TqlZUzatYmAWHePLRdoNj
nwQviOSaLER7+bMj17KvK0zDiu5kcbZeYOyPi3DXTRZ3GNrbE1udz1IAIEJI6iSi
ZR6+DvzAHN+pyIMDEOYCYuo/faxsSS0iU3r8Go2FoWPPqkmFOTDPS2lD0+ubDVuG
DMNls9qp1S77cQTsFY4djH/Wb+8+XKCOSAOZWdGxT7+YEUcSZrLeIs6jtJiGyOFu
lPn43Mi6rDaxuBHO7m0f79oSq3wJlpCGx74J3Z/PPdax4O4rW8ceiuzy5Lt7Vc6K
iJl3pmm3iv3O35wmtY6ZbJtK33wH/xPtah0YRkag+nfo6bkTkw4MM57xrNIppPKB
2U9XXojGBo6TCrc5Jeg2MltxuLAomSDWMqaFzXEWjyLip1FzRauqVWtT2FQCSuMf
5aeW4SVzc5hJ2y4FI5GiNMuVMntfuRuAJZ2y4y+0rom7ML7WQdfYgFgI/sjgsEDF
bEsW9n/5Og2SJYluYjc8
=RqsU
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-840-1429058322-0001-2--
