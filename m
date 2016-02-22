X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1989" "Monday" "22" "February" "2016" "08:09:22" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160222130922.7E3A252E0AB@smtpvbsrv1.mitre.org>" "46" "[oss-security] Re: CVE Request -- Buffer overflow in Python-Pillow and PIL" "^Cc:" nil nil "2" "2016022213:09:22" "[oss-security] Re: CVE Request -- Buffer overflow in Python-Pillow and PIL" (number mark "        cve-assign@m Feb 22   46/1989  " thread-indent "\"[oss-security] Re: CVE Request -- Buffer overflow in Python-Pillow and PIL\"\n") "<009C89DE-A7D7-4E3E-875A-13C4A916676D@soroos.net>" ("<009C89DE-A7D7-4E3E-875A-13C4A916676D@soroos.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15693 invoked by uid 550); 22 Feb 2016 13:09:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15672 invoked from network); 22 Feb 2016 13:09:34 -0000
In-Reply-To: <009C89DE-A7D7-4E3E-875A-13C4A916676D@soroos.net>
Message-Id: <20160222130922.7E3A252E0AB@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Mon, 22 Feb 2016 08:09:22 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request -- Buffer overflow in Python-Pillow and PIL
To: eric@soroos.net

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> There is a buffer overflow in PcdDecode.c, where the decoder writes
> assuming 4 bytes per pixel into a 3 byte per pixel wide buffer,
> allowing writing 768 bytes off the end of the buffer. This overwrites
> objects in Python's stack, leading to a crash.
> 
> https://github.com/python-pillow/Pillow/pull/1706

>> The shuffle buffer is initialized to 24bpp, and the pcd decoder offsets 32bpp. 
>> 
>> https://github.com/python-pillow/Pillow/commits/master/libImaging/PcdDecode.c
>> https://github.com/python-pillow/Pillow/commit/ae453aa18b66af54e7ff716f4ccb33adca60afd4
>> 
>> https://github.com/python-pillow/Pillow/commits/3.1.x/libImaging/PcdDecode.c
>> https://github.com/python-pillow/Pillow/commit/5bdf54b5a76b54fb00bd05f2d733e0a4173eefc9
>> 
>> http://www.pythonware.com/products/pil/
>> http://effbot.org/downloads/Imaging-1.1.7.tar.gz

Use CVE-2016-2533 for the issue in Python-Pillow before 3.1.1, and in
PIL 1.1.7 and earlier.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWywf+AAoJEL54rhJi8gl5j6cP/iiw4DS9vVwXkNhF3pUswbPd
yZiMUUwHpVIj+v1ezok6HOc/bRVZzndnhDbQq1i41XbQuY7372t0lntXodsurJeW
SIPaOYc8EG3U8MZecjtOlE/c1RHX6F7dfC0xRa/Pw5fl8NW1uaLqt3H/CAJaZjdO
BEN9z6n8G7SGEg1pQz2y2eDO5Aj5mxhj36MudmaOfiGeH+QVzU/Zbaab6OwC/+QI
topn6yVN2xrCE7mdZEzCSYtomMBD4V6LF3dWqNX9W9VA5epBzdi08erIiANPYQmY
H7IuSiXD8slJg3rlqYJpGzB1rH/O1eQLKc2l+tWxdaSqPeHAce0EXLz/ToH27NWa
aJCUOHcyjKXmQZjtAGH6WzubMWXYxYa0SJ7Eu1N+mrV410SxrA1H/R7+nfXmtaDB
PaffvhOVo0bYcZQHdW4tUxgVASu/ug1euDR2joWhTMQiUXpNOcmRr7Q7CKx5phXa
dI63MhmozSkQAI6oex1Fc5DQ5a/hdcn+SKNlefk5DMh0q3soNwfrWw3UZuGcy4fW
G0slb1Z4Bpa1YoLwVnv3WFiYOPX4LHj/sgfe26pV9lbSG/ZlilSuSsfMUiD2Jqmt
rBxLVNj0yk3lMFw71Map8c18UTgj0VFzLtptfilvTdRuY2PMZUzR6qeX6uJVEFqn
erSrFhvQDHOx5YtXBj8p
=bQgu
-----END PGP SIGNATURE-----
