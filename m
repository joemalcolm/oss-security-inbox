X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1700" "Thursday" "20" "August" "2015" "12:27:13" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150820162713.95EB26C0030@smtpvmsrv1.mitre.org>" "44" "[oss-security] Re: CVE Request: PHP v7 - Code execution vulnerability" nil nil nil "8" "2015082016:27:13" "[oss-security] Re: CVE Request: PHP v7 - Code execution vulnerability" (number mark "U       cve-assign@m Aug 20   44/1700  " thread-indent "\"[oss-security] Re: CVE Request: PHP v7 - Code execution vulnerability\"\n") "<CAOdP2ADNoNVvdXfGDbAPyqscpjDe=OGQQM-AO9fsr0pBUF8eAw@mail.gmail.com>" ("<CAOdP2ADNoNVvdXfGDbAPyqscpjDe=OGQQM-AO9fsr0pBUF8eAw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14331 invoked by uid 550); 20 Aug 2015 16:27:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14306 invoked from network); 20 Aug 2015 16:27:25 -0000
From: cve-assign@mitre.org
To: fourny.d@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CAOdP2ADNoNVvdXfGDbAPyqscpjDe=OGQQM-AO9fsr0pBUF8eAw@mail.gmail.com>
Message-Id: <20150820162713.95EB26C0030@smtpvmsrv1.mitre.org>
Date: Thu, 20 Aug 2015 12:27:13 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: PHP v7 - Code execution vulnerability

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

>> From: Fourny Dimitri <fourny.d@gmail.com>
>> Date: Thu, 30 Jul 2015 13:16:38 +0200
>> 
>> An arbitrary code execution is possible in the function str_ireplace()
>> with PHP 7.
>> The vulnerability is in the function php_string_tolower().
>> 
>> http://git.php.net/?p=php-src.git;a=commit;h=6aeee47b2cd47915ccfa3b41433a3f57aea24dd5
>> https://bugs.php.net/bug.php?id=70140

> From: cve-assign@mitre.org
> Date: Thu, 30 Jul 2015 09:43:12 -0400 (EDT)
> 
> Unless there is other information, we feel that CVE can include the
> 70140 issue, but that this doesn't mean that CVE should include every
> bug fixed during 7.0 development

Use CVE-2015-6527.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJV1f6WAAoJEL54rhJi8gl5H5IP/2KTIVieITKTLjvoUGpz9Vug
/4Cf5d0JN/UaPsV+jf5WeolmxkTaggdgwA/rkgLUh0WxEpEe73Z4pRaspIvD0cQz
qXvYmQUA3PnpTHyYrosOQ+MgkQcNdwExNLxmOlKkpGL9xv0BfT+wD44Gwm2wWx0G
jRBLXVO1f22V83otU+qBirDJkJZ3w56SYPSbY4XpFeP/YJ0Nvw5X4fN8TTYqODxl
XcpuOwXPRJYFrni9DzY9ehywVOGa6L4hCZQi1YnEpH1xwz4p10VTGpmeRCMYtP4m
9BzyoiN/mvFpPQUDPrwWgWuHNhcdObAvIwHVswLdURlNo7TWtkvaS9N3thyVVTP4
zfTLpK44ILY+y0T5O8vBWjpfo3DcjsIIHTP9j611zOv51P5UBJlriDgQhnR/Em4P
yDsG3wRj9sVaIN6ojArCGGqVlY5Py3/gb2WHmQSokqrYMN2dYlQORJzLOybaXT/h
mdWMCbht4aFcO/2JPjnoLtU2EiPmg0pS7p9KJ0F6JyZ/V4ETXHbaUxFlQ6I/fzHy
HMU2YFvGrvPHI9+J+kxK7Vqwi9nAS/P48oRsoV2yFR9hH2/mHMk3SRzV3tzZBnon
5vZMiqHhNxwSrY2b7gFhE5snvioEah7TwfSPMIur1hscTTYbkPV07dzrw3rnFTH5
E5NM+96stU4jbS3DmQSG
=RUS7
-----END PGP SIGNATURE-----
