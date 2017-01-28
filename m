X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1734" "Saturday" "28" "January" "2017" "16:11:08" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<b825d561daf34e27a0d6cc601350cc89@imshyb01.MITRE.ORG>" "47" "[oss-security] Re: CVE Requests: libgd: potential unsigned onderflow, denial-of-service in gdImageCreateFromGd2Ctx and signed overflow in gd_io.c" nil nil nil "1" "2017012821:11:08" "[oss-security] Re: CVE Requests: libgd: potential unsigned onderflow, denial-of-service in gdImageCreateFromGd2Ctx and signed overflow in gd_io.c" (number mark "U       cve-assign@m Jan 28   47/1734  " thread-indent "\"[oss-security] Re: CVE Requests: libgd: potential unsigned onderflow, denial-of-service in gdImageCreateFromGd2Ctx and signed overflow in gd_io.c\"\n") "<20170126123155.fquerqnvgz7frque@lorien.valinor.li>" ("<20170126123155.fquerqnvgz7frque@lorien.valinor.li>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6114 invoked by uid 550); 28 Jan 2017 21:11:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6088 invoked from network); 28 Jan 2017 21:11:19 -0000
From: <cve-assign@mitre.org>
To: <carnil@debian.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <20170126123155.fquerqnvgz7frque@lorien.valinor.li>
Message-ID: <b825d561daf34e27a0d6cc601350cc89@imshyb01.MITRE.ORG>
Date: Sat, 28 Jan 2017 16:11:08 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE Requests: libgd: potential unsigned onderflow, denial-of-service in gdImageCreateFromGd2Ctx and signed overflow in gd_io.c

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> [] 1/ Fix potential unsigned underflow
> https://github.com/libgd/libgd/commit/60bfb401ad5a4a8ae995dcd36372fe15c71e1a35

Use CVE-2016-10166.


> [] 2/ Fix DOS vulnerability in gdImageCreateFromGd2Ctx()
> https://github.com/libgd/libgd/commit/fe9ed49dafa993e3af96b6a5a589efeea9bfb36f

Use CVE-2016-10167.


> [] 3/ Fix #354: Signed Integer Overflow gd_io.c
> https://github.com/libgd/libgd/commit/69d2fd2c597ffc0c217de1238b9bf4d4bceba8e6
> https://github.com/libgd/libgd/issues/354

Use CVE-2016-10168.

(This CVE is for all of 69d2fd2c597ffc0c217de1238b9bf4d4bceba8e6.
In other words, "make sure that either chunk count is actually greater
than zero" does not have a separate CVE.)

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYjQh9AAoJEHb/MwWLVhi28DkP/1UJZHspmA032vVka4pObsGo
lLM852CBs8cY/sL3MYmi0DIQTdxK70D1qVuwo/xtCBZYI6DK8+cwc8iNGg8/Fl9x
RwHvmIG20uO61xkLtQt2un9eBqnJ/KRafiIOgReTHywIUnZ3b5QfqZuFppJZtSUg
vUsg8Y/0e1IwU3iuNg5OGCnS8nC3z7rTfJcxXq6Kt6jbIhv4nQqCcNXsS9POMYBl
Su8G5+0Qumc+hd3jC1yGie9oy3UvbgxoeOPkkhB6SqQ2qeWj5qdYDyq/AwQk3klF
43CidiXqcAQRT3bx4Li2W9q/zaomzXv/1VaRQKQ0OHfY/z/JYFK6aLmu6LylDOW9
WDwJHJBnX7D/keRdJYUlGTsxU8c+Ou7gju7X+Vjvn+OIedNp8GXqnge8btJxSt7H
BmODX5XKsT81WCJMZNFsph3z6wO1NNbMqyP4Nx4do3fS8FVg+FILy8Yyh2hIm4pT
YVkz9b7HVJdhfX01ARzLqCYVx47mFcwqztxxKBoYrKQueCNJ0cOmCrt5llvU0VoO
QSXT4xk8zROLfHtjGR9cxLxO9DdZLEAifcCrXR4AqBinUO4gg+FfY/Tgjp61ijM+
dIbi4PqdxaWOJu3rsyxXRth0+LQxIV9DChi1cIugckc50Uq50vXBKioUeAIhgjGn
gOIdogXwdM1ye+bHKUD6
=3sHC
-----END PGP SIGNATURE-----
