X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1335" "Monday" "14" "March" "2016" "00:31:35" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160314043135.C858372E003@smtpvbsrv1.mitre.org>" "34" "[oss-security] Re: CVE Request: PHP-5.5.33: Out-of-Bound Read in phar_parse_zipfile" nil nil nil "3" "2016031404:31:35" "[oss-security] Re: CVE Request: PHP-5.5.33: Out-of-Bound Read in phar_parse_zipfile" (number mark "U       cve-assign@m Mar 14   34/1335  " thread-indent "\"[oss-security] Re: CVE Request: PHP-5.5.33: Out-of-Bound Read in phar_parse_zipfile\"\n") "<CAC1DjbY5DcefwkS8ba0iJj6sE8EM10PBE9YsyE59U9_MCmP8tg@mail.gmail.com>" ("<CAC1DjbY5DcefwkS8ba0iJj6sE8EM10PBE9YsyE59U9_MCmP8tg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24219 invoked by uid 550); 14 Mar 2016 04:31:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24195 invoked from network); 14 Mar 2016 04:31:47 -0000
From: cve-assign@mitre.org
To: dkasyanov@cloudlinux.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CAC1DjbY5DcefwkS8ba0iJj6sE8EM10PBE9YsyE59U9_MCmP8tg@mail.gmail.com>
Message-Id: <20160314043135.C858372E003@smtpvbsrv1.mitre.org>
Date: Mon, 14 Mar 2016 00:31:35 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: PHP-5.5.33: Out-of-Bound Read in phar_parse_zipfile

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> If "PK\x05\x06" signature is located at end of `buf`
> variable, it will read out-of-bound `buf` variable and copy to
> `locator`.
> 
> https://bugs.php.net/bug.php?id=71498
> https://git.php.net/?p=php-src.git;a=commit;h=a6fdc5bb27b20d889de0cd29318b3968aabb57bd

Use CVE-2016-3142.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJW5j5TAAoJEL54rhJi8gl5DhgQAIB326lNzHLeRy16mjDXg0Dm
JkKHcv92P5w3NQUOyZbO0HkRqxCrlEcf5x6qhO0ShhuAe4m/3qS0HHugKHbabALV
nsFSUjoiodWChNdFS9qHznv2sPUvuNujbJludULqNKSHbZm7sqwrOHIos6TXEqWr
/9ALj350BvarXe4f12esAWWLYyFoqhY09EheHd3TU8IxK0Rk9uCUDNNrfju4e/Q1
fmHe2zMBvJ8bKVqazp6FSg0hkigSkZyMQ7Iz3NePrIGcKe7t1nMcP9T6T5oAmtHy
hfmnplpJ/cBjUFDwYCp467CdIm7pH9d/5GgoewCXMH8LJv4MPR/aVxSyPDVExFy3
8q1eH1ziIr/NjMYTmIB9y6OtSaW6A8Qh9oU9trXgTihQzR3ZY/G5iDB/w8EZ7lcn
3iPUkWC2SQBUqZUY3xSTViF/uI5CvbkAmSbExJmj1b4XCd1lzKo+LxQ2dvAKEGuk
Iy7WYUO/toCVAOrnB2acBGp4dY8CJWPPKol7rDVctBS2DHzp/oHokpA9m5Q0x+91
AUUbgQbb+/Tpo+YvDq3LZ1+cEgWH4Ge3HvjjdJczNZ+gmCv1Mte8vk4zwRGwyPwG
BfngJsGqwnU6SJnXahIuRF+OMpeLY4mgMHxSrvoQSJIe3c+wtVz+GOWr7jgOHxZH
k4UsurZYNZpUmtXRpAkZ
=+dfJ
-----END PGP SIGNATURE-----
