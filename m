X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2363" "Friday" "3" "April" "2015" "19:29:04" "+0000" "Mike Gabriel" "mike.gabriel@das-netzwerkteam.de" "<20150403192904.Horde.0NaAyaOcNQwGpQMQtHT27w1@mail.das-netzwerkteam.de>" "71" "[oss-security] CVE request: Caja / MATE Desktop Environment: caja automounts USB flash drives and CD/DVD drives while session is locked" nil nil nil "4" "2015040319:29:04" "[oss-security] CVE request: Caja / MATE Desktop Environment: caja automounts USB flash drives and CD/DVD drives while session is locked" (number mark "        mike.gabriel Apr  3   71/2363  " thread-indent "\"[oss-security] CVE request: Caja / MATE Desktop Environment: caja automounts USB flash drives and CD/DVD drives while session is locked\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17772 invoked by uid 550); 3 Apr 2015 19:31:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16315 invoked from network); 3 Apr 2015 19:29:16 -0000
X-Virus-Scanned: Debian amavisd-new at grimnir.das-netzwerkteam.de
Message-ID: <20150403192904.Horde.0NaAyaOcNQwGpQMQtHT27w1@mail.das-netzwerkteam.de>
User-Agent: Internet Messaging Program (IMP) H5 (6.2.2)
Accept-Language: de,en
Organization: DAS-NETZWERKTEAM
X-Originating-IP: 80.129.92.130
X-Remote-Browser: Mozilla/5.0 (X11; Linux x86_64; rv:32.0) Gecko/20100101
 Firefox/32.0 Iceweasel/32.0
Content-Type: multipart/signed; boundary="=_3ChLtlDSO7-ZiClsRNNtqA1";
 protocol="application/pgp-signature"; micalg=pgp-sha1
MIME-Version: 1.0
Date: Fri, 03 Apr 2015 19:29:04 +0000
From: Mike Gabriel <mike.gabriel@das-netzwerkteam.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: Caja / MATE Desktop Environment: caja automounts USB
 flash drives and CD/DVD drives while session is locked
To: oss-security@lists.openwall.com

--=_3ChLtlDSO7-ZiClsRNNtqA1
Content-Type: text/plain; charset=UTF-8; format=flowed; DelSp=Yes
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Application: Caja (file browser of the MATE desktop environment)
Upstream-Source: https://github.com/mate-desktop/caja
Vulnerability type: auto-run drive-by attack [1]

Description: caja automounts USB flash drives and CD/DVD drives while=20=20
session is locked

Abstract:
  To avoid auto-run drive-by attacks by a physically proximate attacker on
  the system from USB auto-mounting screen is locked, the desktop should
  delay automounting until the screen is unlocked (to not interfere with
  the case of sitting back down at your system, plugging in a device,
  and then unlocking your screen).

Affected versions: all known versions
Upstream bug report: https://github.com/mate-desktop/caja/issues/398

To my knowledge, no CVE has been requested, so far.

The issue was first reported on Debian BTS:
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D781608#5

Mike


[1] http://www.net-security.org/secworld.php?id=3D10544


--=20

DAS-NETZWERKTEAM
mike gabriel, herweg 7, 24357 fleckeby
fon: +49 (1520) 1976 148

GnuPG Key ID 0x25771B31
mail: mike.gabriel@das-netzwerkteam.de, http://das-netzwerkteam.de

freeBusy:
https://mail.das-netzwerkteam.de/freebusy/m.gabriel%40das-netzwerkteam.de.x=
fb

--=_3ChLtlDSO7-ZiClsRNNtqA1
Content-Type: application/pgp-signature
Content-Description: Digitale PGP-Signatur
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIbBAABAgAGBQJVHun/AAoJEJr0azAldxsxyWEP9RvPGB8mkaGFWUtz+QN8y88o
ZbZhH7wqkMPVz2udfrafZf6lxxg2BFi1mcyve5dF2N24OzdDY9dCCOnQ0823hZb9
hLoBYDkRsC2dzQn/nAzVy6Z1g40zL037iZjziYRZH+PXKuZjZX/28BZL4sDac/8H
zhtgWGAGOFTGSDVmiJQyBUGFSvs3lUwbKEf9ieogALR6POUpYcfE/Q5vAvfVXjvm
nViR9XmyOBOKQrkyG69Od4TG7J3CFwZjxevQsqvJMNrRt20SR/YAjfJtC/+OvdHA
k0YufnWiDltma41ykxDoJ0YHDvLhFZ56k3bqzSGTMM2tfucLGVLWs0V/Tl/eBcHl
rGrSUJisAoZUnd4cx2hRZ22eKJIBxvx9pKf5jnjh9Gq74XlJpJijnYmFHojngwL6
TfA/+lbpKA438+zYX2D3igZ7AfMyI2rM71xILEtDPrk6N65rKMOsbOGa9OkprmJ3
VF1IRvOrqnzGz33tZNXG2bfxId4FF8CZnnPKu9bzWDtWhF1F6ltNOkpePLxTmI6c
J8VSSzvuFQdeJlJN4O5YYJneWA/CylrYJwLEATmvqZaPU2kvzONNnIX9RxPxPVp9
Fub0QtAXUx1P/LvKm0rW7Cz2W0cDG+mzIcKRVo4SG4x7UAb+NAKGZcfJB5T1tGMJ
c/OGZBOp2860/iPVnMg=
=QfWm
-----END PGP SIGNATURE-----

--=_3ChLtlDSO7-ZiClsRNNtqA1--

