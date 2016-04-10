X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["698" "Sunday" "10" "April" "2016" "22:11:29" "+0200" "Matthias Geerdsen" "matthias@vorlons.info" "<570AB371.1000109@vorlons.info>" "23" "[oss-security] CVE request: libcrypto++ - Timing Attack Counter Measure" nil nil nil "4" "2016041020:11:29" "[oss-security] CVE request: libcrypto++ - Timing Attack Counter Measure" (number mark "U       matthias@vor Apr 10   23/698   " thread-indent "\"[oss-security] CVE request: libcrypto++ - Timing Attack Counter Measure\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11282 invoked by uid 550); 10 Apr 2016 20:11:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10238 invoked from network); 10 Apr 2016 20:11:41 -0000
X-Virus-Scanned: Debian amavisd-new at mail.vorlons.info
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vorlons.info;
	s=mail; t=1460319089;
	bh=qTsT8WKql9+yBh9bwYD32pAaVTNYiFB7l7Va7RnXX3c=;
	h=To:From:Subject:Date:From;
	b=kSNVMzhFBktSwbFt6CdztchSgV+ZVcwbL6uO31T0Hu3rMA6VDpfMVkjt2DDezhiU5
	 EHJcYd2OlwE5Cqo+B3wU6MAfWOwDgVM3nCWVBfZje/Cfg/BniW/3kWGbwxqZvVCQ2E
	 o/Qe3FrBS1R9b/+uYBlNcE+UGi2/KNnRuOco1+PM=
To: oss-security@lists.openwall.com
From: Matthias Geerdsen <matthias@vorlons.info>
X-Enigmail-Draft-Status: N1210
Message-ID: <570AB371.1000109@vorlons.info>
Date: Sun, 10 Apr 2016 22:11:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Icedove/38.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE request: libcrypto++ - Timing Attack Counter Measure

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Hi,

please provide a CVE ID for a timing attack issue in Crypto++ Library.

upstream issue including commits:
https://github.com/weidai11/cryptopp/issues/146

Cheers
Matthias
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXCrNrAAoJEDVYuxv9Aw7qN4YIAL69L2Bdb+liBWCnf3Mw6DAl
YcbGn393GK4wI+bsEoW/Fri4qSiURU4j57JhODpqtd0s9ba2nwEx4r4ECxVF7Sku
qvELYkoS8Vye7hPLejJxV8C48kykl0IZGWJqZnE2mz4FkPHhrayonko6GPVfIftV
vEK8B9mUy1/TPNOodgtr3tsGrFJbrDHf09R63nZj9zMVgWCTgLaKTU9ofZQ03Ivr
JDQODJRarKY+jEjnzceT2INnN9pSax1Lnns9d9fJBXWHBgnN89C/c4zz/kAJm4TQ
jiJ0oedxeX6/YWURWuI3uJcoGkhai6GQBT6zFMqQ2tJMdkXjm1d/33PZLzyERLU=
=A62v
-----END PGP SIGNATURE-----
