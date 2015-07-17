X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1398" "Friday" "17" "July" "2015" "15:54:25" "+0200" "Vasyl Kaigorodov" "vkaigoro@redhat.com" "<20150717135425.GB19821@mail.corp.redhat.com>" "42" "[oss-security] CVE request: php - segmentation fault in Phar::convertToData; buffer overflow in phar_fix_filepath;" nil nil nil "7" "2015071713:54:25" "[oss-security] CVE request: php - segmentation fault in Phar::convertToData; buffer overflow in phar_fix_filepath;" (number mark "U       vkaigoro@red Jul 17   42/1398  " thread-indent "\"[oss-security] CVE request: php - segmentation fault in Phar::convertToData; buffer overflow in phar_fix_filepath;\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14046 invoked by uid 550); 17 Jul 2015 13:54:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13940 invoked from network); 17 Jul 2015 13:54:35 -0000
Message-ID: <20150717135425.GB19821@mail.corp.redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="MnLPg7ZWsaic7Fhd"
Content-Disposition: inline
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Cc: security@php.net, cve-assign@mitre.org
Date: Fri, 17 Jul 2015 15:54:25 +0200
From: Vasyl Kaigorodov <vkaigoro@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: php - segmentation fault in Phar::convertToData; buffer
 overflow in phar_fix_filepath;
To: oss-security@lists.openwall.com

--MnLPg7ZWsaic7Fhd
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

I'd like to request a CVEs for the below issues fixed in PHP 5.5.27 and 5.4=
.43 (5.6.x was not affected by those it looks like):

Segfault in Phar::convertToData on invalid file
https://bugs.php.net/bug.php?id=3D69958
http://git.php.net/?p=3Dphp-src.git;a=3Dcommit;h=3Dbf58162ddf970f63502837f3=
66930e44d6a992cf

Buffer overflow and stack smashing error in phar_fix_filepath
https://bugs.php.net/bug.php?id=3D69923
http://git.php.net/?p=3Dphp-src.git;a=3Dcommit;h=3D6dedeb40db13971af45276f8=
0b5375030aa7e76f

Thanks.
--=20
Vasyl Kaigorodov | Red Hat Product Security
PGP:  0xABB6E828 A7E0 87FF 5AB5 48EB 47D0 2868 217B F9FC ABB6 E828
Free/Busy status: https://url.corp.redhat.com/vk-free-busy-status

--MnLPg7ZWsaic7Fhd
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJVqQkRAAoJECF7+fyrtugoSbkH/0+C5tl1w/L0Zctt4LRkZB5Z
gtpnzd8PvGiUYiYjFZ/xPRE4sdyFFC+k5+A/mubGlH6CZ/pQS8UGHA53MOi7PS/n
ksfH85GXjwrYdaDK5Pd68BuqdMpS563o2jZJ+UGNAeW53V12D+0F3tSQyoyyb+nJ
KzR21TF4Ywq3M0K3AF+Or6uuXtQA6F8AspUnkJp3k0f0N2uRD6qrjrWoIJ52kScS
3XKkkIpcv1RpIJ9iAO9oWJVPykloZGSTAFpZFxjekLRzBSSZRviP/Zq2B/NcvRoT
VpcwZgN75tSrKirsFZhbpWU67kxMwa8vdxKuWpTfqqxo4DRwg41HWbNzWuW+GXY=
=iSAr
-----END PGP SIGNATURE-----

--MnLPg7ZWsaic7Fhd--
