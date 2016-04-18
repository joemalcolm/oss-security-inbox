X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["800" "Monday" "18" "April" "2016" "23:25:32" "+0200" "Matthias Geerdsen" "matthias@vorlons.info" "<571550CC.1080801@vorlons.info>" "27" "[oss-security] CVE request: opam - missing certificate validation" nil nil nil "4" "2016041821:25:32" "[oss-security] CVE request: opam - missing certificate validation" (number mark "U       matthias@vor Apr 18   27/800   " thread-indent "\"[oss-security] CVE request: opam - missing certificate validation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10155 invoked by uid 550); 18 Apr 2016 21:25:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10134 invoked from network); 18 Apr 2016 21:25:45 -0000
X-Virus-Scanned: Debian amavisd-new at mail.vorlons.info
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vorlons.info;
	s=mail; t=1461014733;
	bh=t1GgV1iFq1FnD2zQxzitJhV/nmf8ConaGZE4mtUHI+I=;
	h=From:Subject:To:Cc:Date:From;
	b=GwzcoEyuVv/DhM2XHnONZ4ok11UzD66ENVMxpqkjfTmbkw4dX8A6PooNuAZLafuzm
	 oU95wv2fikN062wFNkP4qMUbmvPmJvLQwvQz1qZl640ZVwT9TY7RhcA4rkRB5JHu54
	 9yvgCFf/2I2xlYLDzcfQfqFuJ0J/Z5CURfbYLnkw=
From: Matthias Geerdsen <matthias@vorlons.info>
X-Enigmail-Draft-Status: N1110
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-ID: <571550CC.1080801@vorlons.info>
Date: Mon, 18 Apr 2016 23:25:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Icedove/38.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE request: opam - missing certificate validation

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Hi,

please assign a CVE ID for this missing certicate validation issue in
ocaml:

- - upstream commit:
<https://github.com/ocaml/opam/commit/3d43295df3bb9e67e60801d319bf82c2c8
a84d24>
- - Debian bug: <https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=818081>


Thanks
Matthias
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXFVDHAAoJEDVYuxv9Aw7quJsH/RvH7BSmAFfLfWdm1PNsE8Uy
zOI+bv/JDCKJlitDOX5SOyofXNG0RWzcEVQCHw6D52pgfkRIoFeFfPHYyaMtM3Zp
jBLqEczh7CMNXq47c0TkEzlKg5y7i+Qk2sSBQYLBju+UxwzfTWV/J/1eEC7XHWug
Vc+myOvp7+zm8vZKMXFvRiGozJfzEutTxMVuXjomlOqoJunWoF1fWVXaSKSLjUW0
RRNZSeK+Y89l850RlIQ3KLvbdWIsSVWvqVtDEACyDIeIpyOtYnfJ2aN8ISa9vP2G
1pBbh/r29ZUTmC9feqExlOw5rlL3zdcq8tedSS38F5tpANnEHgulZktxByPTJA4=
=PALs
-----END PGP SIGNATURE-----
