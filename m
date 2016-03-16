X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1320" "Wednesday" "16" "March" "2016" "12:45:39" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160316164539.43CF5EBC143@smtpvmsrv1.mitre.org>" "35" "[oss-security] Re: CVE Request : Use-after-free in gifcolor" nil nil nil "3" "2016031616:45:39" "[oss-security] Re: CVE Request : Use-after-free in gifcolor" (number mark "U       cve-assign@m Mar 16   35/1320  " thread-indent "\"[oss-security] Re: CVE Request : Use-after-free in gifcolor\"\n") "<56E9516E.4030608@gmail.com>" ("<56E9516E.4030608@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15897 invoked by uid 550); 16 Mar 2016 16:45:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15867 invoked from network); 16 Mar 2016 16:45:51 -0000
From: cve-assign@mitre.org
To: josselin.feist@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <56E9516E.4030608@gmail.com>
Message-Id: <20160316164539.43CF5EBC143@smtpvmsrv1.mitre.org>
Date: Wed, 16 Mar 2016 12:45:39 -0400 (EDT)
Subject: [oss-security] Re: CVE Request : Use-after-free in gifcolor

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Two possible consecutives calls to EGifCloseFile at line 122 and 124,
> with the same first parameter (GifFile) could lead to two calls to
> free

> this is also a use-after-free

> A fix could be simply to remove the second call to EGifCloseFile.

Use CVE-2016-3177.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJW6Y0hAAoJEL54rhJi8gl5ghwP/joKr1pUl7IDb/5LAWOMQxeQ
h00wAoH0AkMb/hI3GXTdbALXzVGSZ8OT6BKQerR9raYTZeUyWi65+xmPdS3yXDQW
q+y1hsksxX3ugU3drcBNnlTxXqHKVIYRUwyqXYclVbMmd8hwqNBqc6dvpwiqGnEb
CALN799cMf2wjBFajkN6BWxdj0uULjtdCE6FfwVBkwusaEQrFaQj8qa07VjpyPQy
cqfnx0w3fraDm9bZ0h7vZtPKT6l8+GOp9ZuEOFacPz7wROyftNalSra9wRmaqEcr
A7TU6xqu1+FUcwN4mK9IDQvWQup3bxZ7xg9Vu2ckQ0dLJjyrmLBccFcajicGV0wN
twblpPYjUss53bjgUBNfSLZFvZcEQTuzlyPiXXPxkO35fypS5pZ7bGkkW1JXo37v
HjYyvwO2kSBg5dXxmMqW4fXdzND/nSPTl9q7PKwL6hb7GpXudaPFAETPuQPpx6RK
EnXpQkeYIn15lGgjJrYhOywMZajNT0yO597w3jQ0B+z/wkrVp3Nr6k854mApM/cc
rech7Ff6XGvPTDUARhwV+gR8izkEOsumd397mQMPMdiHDBwEU2i0+kkBqAaWX0/O
duoNOSJjdrIQYTHh4MXFgynFDU+PocFCv07UcFHAmhns48d5LdOahPQxm9PRLB/H
buvp1GGX8I2tnLoTbdfX
=qHvQ
-----END PGP SIGNATURE-----
