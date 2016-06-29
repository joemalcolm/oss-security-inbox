X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1452" "Wednesday" "29" "June" "2016" "08:28:23" "+0200" "_rc0r" "hlt99@blinkenshell.org" "<d45df96858a4de9a1d544b795d2be58c@blinkenshell.org>" "41" "[oss-security] CVE Request - PECL-HTTP 3.0.0 Buffer overflow" nil nil nil "6" "2016062906:28:23" "[oss-security] CVE Request - PECL-HTTP 3.0.0 Buffer overflow" (number mark "U       hlt99@blinke Jun 29   41/1452  " thread-indent "\"[oss-security] CVE Request - PECL-HTTP 3.0.0 Buffer overflow\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3252 invoked by uid 550); 29 Jun 2016 06:32:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32635 invoked from network); 29 Jun 2016 06:28:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=blinkenshell.org;
	s=bs2012; t=1467181706;
	bh=SjCDV2gqzue2NSCs/Sn6WjIVYz4Ki19MpARf/wW2aLo=;
	h=Date:From:To:Subject:From;
	b=EvVW3M9gQgw0k7ERFzxgNstZiyvvPC4Zl/OfWyKjzh2jKkb54Su8qTgy+M2o1u0+b
	 bnoYzlj+s0mT3rmgaTYq9uLNlbL8LDKW7wVaPy3vh08Zyg3lGqRD3FH2YtFjT7UZ+I
	 gG8MAIRVOlPO+OCyQRrEZWLYY5e02RM+UkYeWLjw=
X-Virus-Scanned: Debian amavisd-new at despina.blinkenshell.org
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=blinkenshell.org;
	s=bs2012; t=1467181703;
	bh=SjCDV2gqzue2NSCs/Sn6WjIVYz4Ki19MpARf/wW2aLo=;
	h=Date:From:To:Subject:From;
	b=jHCkAr+Gv44/Kjwjwhl11A6tgv3UTnBMTkndmR7+eaD4dCKB1mfEb4DGAm1sdLXsn
	 hPANZ9VNd0HEje57S0w/YP5lqRGlObNiiNWX1Gm0AO6JPv9bbRw+vuKpBnf71dsoWY
	 J/3IKN+fY/U6YI2JWw6RutDL91Nygz/K2JXHmCiY=
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 7bit
Date: Wed, 29 Jun 2016 08:28:23 +0200
From: _rc0r <hlt99@blinkenshell.org>
To: <oss-security@lists.openwall.com>
Message-ID: <d45df96858a4de9a1d544b795d2be58c@blinkenshell.org>
X-Sender: hlt99@blinkenshell.org
User-Agent: RoundCube Webmail/0.7.2
Subject: [oss-security] CVE Request - PECL-HTTP 3.0.0 Buffer overflow

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Hi list, hi CVE assignment team,

back in March a buffer overflow was discovered in url parsing
functions of the PECL HTTP extension.
The bug allowed a partial overwrite of a callback function pointer
possibly leading to execution of arbitrary code.

For the original bug report to the PHP bug tracker, please see:

https://bugs.php.net/bug.php?id=71719

This flaw was fixed in commit [3724cd7]

https://github.com/m6w6/ext-http/commit/3724cd76a28be1d6049b5537232e97ac
567ae1f5

and was included in PECL-HTTP 3.0.1 that was released the same day:

https://pecl.php.net/package/pecl_http/3.0.1


Cheers
-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJXc2nFAAoJEII4s+efq3pF1+4P/RBvkJLH9jfISkoAEijVYbJc
YB7moTXaLGbAF1G0Tz8WWWQeKhXiq7Rn6uf4nVrVFT/MDXmX45wFSIOQfURMa8iW
Ikdqq5Ydb5Mh7RJ6F3ri11vhjPqSxcwmav71xg50U7GQzM+paUVUZo+lNCaVn1u6
Llg3YwKKHnvVnrggUTaWBXzL4o8eeMNPWB/gCiJthMI3KvgEqXWRC9V6sT5U1DE/
hIkroHuqRJfbdocMyVRE3B2erXi3ijhjDqVMRqkRkB8jiCXy13BtFuoRqFXT69Ow
pwKIKL7j3Su4kkr6OJq0D8hbU/YmhITnSzVqU5SfCoEVmn4Oab1+GFFiuMZVUd3q
clWb1ano2cQwEazTldp54LwIz2Ov438H1jCuu8XHp8KGZpWjYQAZ0LmZdskA/Qn6
mFx41z1doexG1hsJvgWLeKKR6zzP4yLeCY7vNUiSWBOiQiC6hUHbWfUPvfB7aEhf
TKRAKphgJ8DRSRe9GVGNRKP2YfddwlppvP7a6l0L2q0h9ZPu0X3OqsCvcvMjLBZd
YyH/wMpG0U5Ae8zxrnu73kYadFCmmeuj/8KfF1VLsId07ImRstZfgeUYIJ//N895
NfqqAdJuioLAH9qOngfQIQCiCd742ZQItlgaEEqhsj6oe+HiINs95z1WKi6faVyz
7WU95dh8voVrao+3CH2x
=hOsV
-----END PGP SIGNATURE-----
