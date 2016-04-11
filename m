X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1487" "Monday" "11" "April" "2016" "21:41:41" "+0200" "Matthias Geerdsen" "matthias@vorlons.info" "<570BFDF5.4080908@vorlons.info>" "48" "[oss-security] CVE request: PHP issues fixed in 7.0.5, 5.6.20 and 5.5.34 releases" nil nil nil "4" "2016041119:41:41" "[oss-security] CVE request: PHP issues fixed in 7.0.5, 5.6.20 and 5.5.34 releases" (number mark "U       matthias@vor Apr 11   48/1487  " thread-indent "\"[oss-security] CVE request: PHP issues fixed in 7.0.5, 5.6.20 and 5.5.34 releases\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14048 invoked by uid 550); 11 Apr 2016 19:41:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14030 invoked from network); 11 Apr 2016 19:41:54 -0000
X-Virus-Scanned: Debian amavisd-new at mail.vorlons.info
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vorlons.info;
	s=mail; t=1460403702;
	bh=7lBN1Ni08qwavSja5HrOuat6oi8eqwUOnTWaYbFSG60=;
	h=From:Subject:To:Date:From;
	b=kKEWNfnTiqNquSvHSIVV0fwKg64WwhtW09BaIDhnSPAGsE1ge4pvtYKqxSp8L/LsH
	 UIPlbgCHfaAESDPV0XAImVoebLK6Lb/AiHyq+qY5lGCR/lsCiL9eV54TO4DJ32JJ6e
	 4jljEOmPxVVnfr5pn+4ZQ8qmk8C8AAL0ZrWjRn9E=
From: Matthias Geerdsen <matthias@vorlons.info>
X-Enigmail-Draft-Status: N1110
To: oss-security@lists.openwall.com
Message-ID: <570BFDF5.4080908@vorlons.info>
Date: Mon, 11 Apr 2016 21:41:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Icedove/38.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE request: PHP issues fixed in 7.0.5, 5.6.20 and 5.5.34 releases

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Hi,

could you please provide CVE IDs for the following PHP issues fixed in
the latest releases, as I have not yet seen any IDs yet:

- -  Buffer over-write in finfo_open with malformed magic file
https://bugs.php.net/bug.php?id=71527
http://bugs.gw.com/view.php?id=522

- - Integer overflow in php_raw_url_encode
https://bugs.php.net/bug.php?id=71798
https://git.php.net/?p=php-src.git;a=commit;h=95433e8e339dbb6b5d5541473c
1661db6ba2c451


- - php_snmp_error() Format String Vulnerability
https://bugs.php.net/bug.php?id=71704
https://git.php.net/?p=php-src.git;a=commit;h=6e25966544fb1d2f3d7596e060
ce9c9269bbdcf8


- - Invalid memory write in phar on filename containing \0 inside name
https://bugs.php.net/bug.php?id=71860
https://gist.github.com/smalyshev/80b5c2909832872f2ba2


- - AddressSanitizer: negative-size-param (-1) in mbfl_strcut
https://bugs.php.net/bug.php?id=71906
https://gist.github.com/smalyshev/d8355c96a657cc5dba70


Thanks a lot
Matthias

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXC/3xAAoJEDVYuxv9Aw7qdY0H/2YZdBrOs6WHe9zISeehp8eX
I5E0qdqrkXXbVxjvYH+Z8BHLS5nf+vwucCoCb+5UFKIzfmwuWGn6zwF61zbHUBcM
8kLd635zX5SZROUVTYYy/bTtSD/vA3cHv4UsKHJCsUH+KkcuG3BCVVkUKiH8ayWE
cfkbW4gIFHIT9JH+ciTmJ1poTc6bX0KPbchxGmfw5bgagTuntZr4JWbKbmQQugCg
DYqZuldgAqZsx13klQTreFj5/ZXa4mrJPpIqkd+BV+VJlBij9qSTVnEB5FViN2tP
VcW8mlAw6uCg35J7UJArShR8Ts4/TD8vU2anCUlLQKGwYuQOgBYQVV4DF5EskB0=
=vqBF
-----END PGP SIGNATURE-----
