X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2204" "Friday" "22" "July" "2016" "22:04:26" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160723020426.70DC352E00B@smtpvbsrv1.mitre.org>" "54" "[oss-security] Re: A CGI application vulnerability for PHP, Go, Python and others - CHICKEN eggs" nil nil nil "7" "2016072302:04:26" "[oss-security] Re: A CGI application vulnerability for PHP, Go, Python and others - CHICKEN eggs" (number mark "U       cve-assign@m Jul 22   54/2204  " thread-indent "\"[oss-security] Re: A CGI application vulnerability for PHP, Go, Python and others - CHICKEN eggs\"\n") "<20160721184148.GO26276@scully.more-magic.net>" ("<20160721184148.GO26276@scully.more-magic.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11342 invoked by uid 550); 23 Jul 2016 02:04:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11324 invoked from network); 23 Jul 2016 02:04:38 -0000
From: cve-assign@mitre.org
To: peter@more-magic.net
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20160721184148.GO26276@scully.more-magic.net>
Message-Id: <20160723020426.70DC352E00B@smtpvbsrv1.mitre.org>
Date: Fri, 22 Jul 2016 22:04:26 -0400 (EDT)
Subject: [oss-security] Re: A CGI application vulnerability for PHP, Go, Python and others - CHICKEN eggs

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> This issue affects the CHICKEN egg "spiffy-cgi-handlers", which is an
> optional add-on to add CGI and FastCGI support to the Spiffy web server.
> 
> All versions before 0.5 are affected. An announcement was made to
> http://lists.gnu.org/archive/html/chicken-announce/2016-07/msg00000.html

>> a HTTP server which converts the Proxy header as a
>> HTTP_PROXY environment variable. The spiffy-cgi-handlers egg will do
>> that in the default setup.

> The spiffy-cgi-handlers code was part of the spiffy web server before
> version 5.0, so earlier versions of that egg were also affected. Strictly
> speaking, I think this deserves another CVE because it's a different
> piece of software.
> 
> Could I have a CVE for this issue?

Use CVE-2016-6286 for this code, as found either in the
spiffy-cgi-handlers egg or in the spiffy web server. (Moving a piece
of code from one software product to another doesn't generate a second
CVE ID.)


> I believe this affects the CHICKEN egg "http-client", when used in a CGI
> context when the calling server unsafely passes "Proxy" as "HTTP_PROXY".
> Could I have a CVE for this issue as well?

Use CVE-2016-6287.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXktAdAAoJEHb/MwWLVhi25n4QALaJxLjnoIvN/GUErP1UObu1
JNBU160mBi8S9MW28AVzx6DNgzWBtnd7ymtpXRHkbMjWCc+ORQnJPvnm39Tatt6l
LP48zvXOr2gbLarh9izTtACqwmgF0jbacwc2J5tqhZ7rk6Y6FpVgAIAntS1qK1bY
NIez74JZlNVvnKix0pOweuAswOM1V7zwDYdvMUjdpzh7gfC8AiJX09e46G1WEkSr
THXXzUWud+USZAme9s6fD9nLvrr/Tlv2fGnZyp9APGz4Tcs+tbRiE+wtfYK5Cu1K
MySc1jIoDf+cZKDQgPoDBHovoAn9oBBzq4fa9ph2Y6MuY6ktGT5OzHZqfqHy0MKe
EnLZvMWkhD0F/U8kIFBo4wjPpo7aRQE7L8W+mGL/QwucExb1Bbn7h6XYJ69fQCny
NcD+uDPta0tPmJcQ3OY8GCu5MhwI01WZhMBi+eLbrwxpVITezISXbIEhozXtZeJz
5U+Lpw2rJUPq+1cLbGPlP1cvT+zGHzFLyQIukzqK/AdCLrnAyynL2lrTsoPmrFkK
fNRU/UYfnEQb2ehiSr7Ho5lCCyNewJdwq0Zrktw2EReVu/tlLNMyutUH3B9jSN2x
pL1Q5EVeq34u/dI95wzw4yVh4HDN4bXhPPtOdaQ2YgXnJ4AMSjRisSuE3ISOYLxZ
dTOiEBp3s/l3QRrWkdIk
=53io
-----END PGP SIGNATURE-----
