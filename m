X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1914" "Thursday" "8" "December" "2016" "01:40:01" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<b27c2ab5ac124be9929b4093ac19cd16@imshyb02.MITRE.ORG>" "49" "[oss-security] Re: CVE Request: html5lib: potential cross-site scripting vulnerablity: quote attributes that need escaping in legacy browsers" nil nil nil "12" "2016120806:40:01" "[oss-security] Re: CVE Request: html5lib: potential cross-site scripting vulnerablity: quote attributes that need escaping in legacy browsers" (number mark "U       cve-assign@m Dec  8   49/1914  " thread-indent "\"[oss-security] Re: CVE Request: html5lib: potential cross-site scripting vulnerablity: quote attributes that need escaping in legacy browsers\"\n") "<20161206125628.g46mnllue6akwt5p@lorien.valinor.li>" ("<20161206125628.g46mnllue6akwt5p@lorien.valinor.li>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5557 invoked by uid 550); 8 Dec 2016 06:40:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5539 invoked from network); 8 Dec 2016 06:40:13 -0000
From: <cve-assign@mitre.org>
To: <carnil@debian.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<scott@kitterman.com>
In-Reply-To: <20161206125628.g46mnllue6akwt5p@lorien.valinor.li>
Message-ID: <b27c2ab5ac124be9929b4093ac19cd16@imshyb02.MITRE.ORG>
Date: Thu, 8 Dec 2016 01:40:01 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE Request: html5lib: potential cross-site scripting vulnerablity: quote attributes that need escaping in legacy browsers

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> As found in
> https://www.sourceclear.com/registry/security/cross-site-scripting-xss-/python/sid-3068/fix
> html5lib fixed a cross-site scripting vulnerability in upstream
> version 0.99999999 with commit
> 
> https://github.com/html5lib/html5lib-python/commit/9b8d8eb5afbc066b7fac9390f5ec75e5e8a7cab7
> 
> References:
> 
> https://github.com/html5lib/html5lib-python/issues/11
> https://github.com/html5lib/html5lib-python/issues/12
> 
> Question about the CVE assignment for html5lib was raised as well in
> https://github.com/mozilla/bleach/issues/229

We are not sure of the optimal way to represent this in CVE. We
are making this mapping, which we feel is adequate:

  Use CVE-2016-9909 for the mishandling of the '<' character in
  attribute values.

  Use CVE-2016-9910 for the mishandling of all of the other mentioned
  characters in attribute values.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYSPwUAAoJEHb/MwWLVhi2HSwP/3e58+AisDyrqaNcdRNrQvPG
ri5lDi8E9AFA38gx2IEdyavHzmzc+dCFUz/KGrapeHV94MLiAszUJTK1kB9nqesI
iagSlx9sbYZcwCvbpiKcYex8UvKMR24CX2faoxtzJulycsulrvYzJ9Jskq4aylCQ
pw7XipGJMs3gHHaSCThGq2t/w5zEiHdYSfKjixKdwk9jczhLihoRSueGkDDyBy5O
M9q27mSccXHEDa2Xq6Eyio6rsTsckA9DRYh0L36JYn83XhMqBdqK00LnfgfUorzi
tN4Mrxgci7pAE4JFTqrK9aR+LJht1oLf2Z79foucvIRyiyU5swVEKFz8HekEMbEm
wAVmV67qV6A/bfR23/86JoQNSv7WjYoqrfue0tAY4Q1EM5fF4qN590lWT3bfDprT
3wX9o8+3xt+JwSSQZdfw13jqjoJyxX10waJLcM02L72dM57OH7u8vB9c4xIiU14w
/lhJxfW4DDNl4DNYuNE3Yj/auAPUCXhJfrY4RpjLFmfFSP48i2PNlgHCGXkE5cen
5OmoaJN58L7Vi2q4cgEtUPdqGCQGawfZ5NXIhOyTrP2dcdAa6r+RqStlMH6MB2Cx
IEMvqZCxmKtFKOZdx+svgjtvaQ6zs6Csc+z1GBTQc64nJH52ivV+e6Vb446hJNXR
TsPjDC+UafOQstWKp4Qe
=ZAOJ
-----END PGP SIGNATURE-----
