X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1868" "Monday" "11" "January" "2016" "00:43:00" "+0000" "VeraCrypt Team" "veracrypt@idrix.fr" "<C6CF5360-68D8-4FFF-864A-D777F1A9740E@idrix.fr>" "42" "[oss-security] CVE-2016-1281: TrueCrypt and VeraCrypt Windows installers allow arbitrary code execution with elevation of privilege" nil nil nil "1" "2016011100:43:00" "[oss-security] CVE-2016-1281: TrueCrypt and VeraCrypt Windows installers allow arbitrary code execution with elevation of privilege" (number mark "U       veracrypt@id Jan 11   42/1868  " thread-indent "\"[oss-security] CVE-2016-1281: TrueCrypt and VeraCrypt Windows installers allow arbitrary code execution with elevation of privilege\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30279 invoked by uid 550); 11 Jan 2016 00:43:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30261 invoked from network); 11 Jan 2016 00:43:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=idrix.fr; s=mail;
	t=1452472996; bh=TMHQ2/f5AfcmC7lf94pbR7BuMrCmJKul68ah0tvhjfI=;
	h=Subject:From:Date:To:From;
	b=hDF655TyOVmSr7hmjp2Lda6dzcgRwDtJLXbv5zNCIi1xAiV9wXWojl9FlhO3/+Inr
	 jrkT/78XNkBrpDHaqX/ivND5sjPKlLQsU1q7BysGaXr1TK9UR727O73TviSXviJ88v
	 yBs7gfnQsfJgBLNbaEFkunZ1+G7Z/qiqQcDYMDV0=
X-Virus-Scanned: Debian amavisd-new at ext.idrix.fr
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=idrix.fr; s=mail;
	t=1452472995; bh=TMHQ2/f5AfcmC7lf94pbR7BuMrCmJKul68ah0tvhjfI=;
	h=Subject:From:Date:To:From;
	b=VPbeqwjp/6Slt8h/2kbUiZCRnkEztYx8NAxjePpqYm2nwLr6SA7ErIqQHO7hrVRJu
	 DWy2uyY0x3bL2MucZeyYRLo0hlLxzoSCfu7F5q8yfFMAiHmypsGuon4H8BUo3XRPHU
	 MjsbBTu+2pc4EnEzFFiaQp5SK3x7uzWmo37Wsie8=
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain;
 charset=UTF-8
From: VeraCrypt Team <veracrypt@idrix.fr>
Date: Mon, 11 Jan 2016 00:43:00 +0000
To: oss-security@lists.openwall.com,cve-assign@mitre.org
Message-ID: <C6CF5360-68D8-4FFF-864A-D777F1A9740E@idrix.fr>
Subject: [oss-security] CVE-2016-1281: TrueCrypt and VeraCrypt Windows installers allow arbitrary code execution with elevation of privilege

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Hi,

The Windows installers of TrueCrypt 7.1a (latest version) and its fork VeraCrypt 1.16 (latest version) are vulnerable to Dll Hijacking that allows arbitrary code execution with elevation of privilege.
This vulnerability affects on all version of Windows.

More information can be found at: http://seclists.org/fulldisclosure/2016/Jan/22

The patches applied to fix this issue in VeraCrypt are:
 - https://github.com/veracrypt/VeraCrypt/commit/5872be28a243acb3b5aafdf13248e07d30471893
 - https://github.com/veracrypt/VeraCrypt/commit/7a15ff2083d75cdfe343de154715442dce635492

The fix has been included in VeraCrypt 1.17-BETA (Build 15) which is available at: https://veracrypt.codeplex.com/releases/view/619351.

Many thanks to Stefan Kanthak (http://home.arcor.de/skanthak) for reporting this issue and for his help in verifying the correctness of the fix.

Regards,
- --
Mounir IDRASSI
https://veracrypt.codeplex.com
https://www.idrix.fr
-----BEGIN PGP SIGNATURE-----
Version: APG v1.1.1

iQJBBAEBCgArBQJWkvqUJBxWZXJhQ3J5cHQgVGVhbSA8dmVyYWNyeXB0QGlkcml4
LmZyPgAKCRDrVZx8VN3Tk6yKEAC55GJk9X0hanR7sOwUjLBDoH7tbeGrQhSq0FkQ
qV9Tws0EnXSvRhCbMCgZcbm/T6x6fcRBOVuUUv5QGWZoRX0QISRnNASbYA0LM82v
QJ6g11uW0BEBdQ/VK7Gb5l8g3c6cDGT4zvJc8dduqK42Ri+Thl+uB3i8mdDDfNS7
BJQdvULXZsurqDFZthsQIuHPvyH5EfJkFAJ4Cqc6f/uWDQWd1o/KcMK4dd2VAc0S
cEEGMhcYUJDFepPcYzRG9RW74bS7zH7bPcA3WnBEEy2cVuLg5BAolLBFL8hSdfDz
jYsj8B/DHdUP66I0zoMh1Cw9kugYSr1W2CUNKA2YeKb8D41HfdjzpRw9WIf5o/Fb
ldnvpojwj5g5e4Pn46D+YUlrWmUWqcWaYR962e+cN8pS+jflBBo8VzYKjKn8UaHK
8tq+86t6y6tqYSHLiD1SgCyjf+Bs9Vr4koL4bvT+/AMGAvKrj0bv/lfQHGhPrerX
SigYMWoSJ/v1LmKZWBM6YWfOITEPCSSn/Uycr1tAwNsYhcirDgOi/SLel4l0le/2
OmOkmxOQHzK7usROHaDL5s6P/odtlkjyMTnr4SQ6PRRalLL8AcabOaZIm+5CVkA9
FrV6/gsYpIW8Oj1lAmDt6Z3OQFyaKxc20YJ+DaK+yOPEomkLzRArMQd0GWvoKhEL
+wSLGw==
=uVgl
-----END PGP SIGNATURE-----

