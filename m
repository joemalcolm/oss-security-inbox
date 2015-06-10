X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2134" "Wednesday" "10" "June" "2015" "17:12:09" "-0400" "Giancarlo Canales" "gcanalesb@me.com" "<F0AF15DC-5C68-4A2F-A920-BC5750912A97@me.com>" "61" "[oss-security] CVE ID Request: Buffer overflow in ArduinoJson when parsing crafted JSON strings" nil nil nil "6" "2015061021:12:09" "[oss-security] CVE ID Request: Buffer overflow in ArduinoJson when parsing crafted JSON strings" (number mark "        gcanalesb@me Jun 10   61/2134  " thread-indent "\"[oss-security] CVE ID Request: Buffer overflow in ArduinoJson when parsing crafted JSON strings\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25922 invoked by uid 550); 10 Jun 2015 21:35:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28658 invoked from network); 10 Jun 2015 21:13:08 -0000
X-Proofpoint-Virus-Version: vendor=fsecure
 engine=2.50.10432:5.14.151,1.0.33,0.0.0000
 definitions=2015-06-10_15:2015-06-10,2015-06-10,1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=3 phishscore=0 adultscore=0 bulkscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=7.0.1-1412110000 definitions=main-1506100333
X-Pgp-Agent: GPGMail 2.5b6
Content-type: multipart/signed;
 boundary="Apple-Mail=_A038CEE9-CA35-4823-8CC8-4AA13C6A95BC";
 protocol="application/pgp-signature"; micalg=pgp-sha512
Message-id: <F0AF15DC-5C68-4A2F-A920-BC5750912A97@me.com>
MIME-version: 1.0 (Mac OS X Mail 8.2 \(2098\))
X-Mailer: Apple Mail (2.2098)
Date: Wed, 10 Jun 2015 17:12:09 -0400
From: Giancarlo Canales <gcanalesb@me.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE ID Request: Buffer overflow in ArduinoJson when parsing crafted
 JSON strings
To: oss-security@lists.openwall.com

--Apple-Mail=_A038CEE9-CA35-4823-8CC8-4AA13C6A95BC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

I recently discovered a buffer overflow weakness in the open source Arduino=
Json library.
Several IoT projects are using this library, and a CVE number would help en=
sure traceability of the issue abroad.

This issue has already been made public, and a fix has been released by the=
 project maintainer.

Title: Buffer overflow in ArduinoJson when parsing crafted JSON strings
Products: ArduinoJson
Affects: All versions prior to v4.5
Type: Buffer overflow
First CVE ID Request: Yes

Link to vulnerable source code or fix:
https://github.com/bblanchon/ArduinoJson/commit/5e7b9ec688d79e7b16ec7064e1d=
37e8481a31e72

Link to source code change log:
https://github.com/bblanchon/ArduinoJson/blob/master/CHANGELOG.md

Link to bug entry:
https://github.com/bblanchon/ArduinoJson/pull/81

Thanks in advance,


Giancarlo Canales Barreto

--Apple-Mail=_A038CEE9-CA35-4823-8CC8-4AA13C6A95BC
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJVeKhPAAoJEMV5zjTxRIlLJd4P/1ZepAoYJXjMAWH6yoC/WFmL
tbQioVxLoDieOPoVlJ59HfqbjQ8JkczYAvTO28YhRGPIgPUKzDrqWBs6kurlTKG9
ZNCT/y5Msrs5P69rLJLrQN8c/9wEujhhcLCsFIT1WdiqQRidHpObN1cd2655ud0F
Af1kwlg+Dauf5Vah44xFi41MhK3xZnBQxT+F+PvFAOo/ITFdBr4U30Cd8iWNKRFn
NaQ8r/rS1hXOS7PdiTFFmDSM6ydEOLpYGj9bj7+0yynTYF2NgCMATYmu/cjGMQ7Z
vzuUU5HJpJMOCOJ4gF/NNy/MvdbVqjL4PcyCDT8IPxbzOUHhfkNi5EVoyyBDMtpc
gY6HcfNjAZxJfEPEkStat/0Yk3xbblYVAAZkAIWqjYnEi05gfirrUCCecs2HC5Bv
x84Ykd6030Y6YfJ/zrC2rU0WLR2C2uLusxyJxegM77SNqs/hcDleTo2yO+Q9uAA5
MhjpSQh7Ozdvh9RvbGxBG+cVyH3i2LfPX6KlkJErlm2w00G+3nztEQwH5ywBL1zr
y+oAhwyWpQ7YsZyMZvQpmzMeeP9QbvYDbRceAxYiDmu8ZzqeOU0upxrZkLpZdEoI
TVtazSMi+gEzyfihbpP9HWUHsB1QS52tXx6oKfQ6yVIiv/MXqQN9GbQNajYh177s
TkietFlyRYqz+9H8ANd5
=1I1G
-----END PGP SIGNATURE-----

--Apple-Mail=_A038CEE9-CA35-4823-8CC8-4AA13C6A95BC--
