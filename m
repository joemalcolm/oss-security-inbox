X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1268" "Thursday" "15" "December" "2016" "12:42:05" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<a9385b640cfb4927afadd3cbf4792e81@imshyb02.MITRE.ORG>" "31" "[oss-security] Re: CVE Request: IrRegular Expressions resource exhaustion in regex compilation [was: Re: [oss-security] CVE Request: resource exhaustion in regex expression handling in WebKit]" nil nil nil "12" "2016121517:42:05" "[oss-security] Re: CVE Request: IrRegular Expressions resource exhaustion in regex compilation [was: Re: [oss-security] CVE Request: resource exhaustion in regex expression handling in WebKit]" (number mark "U       cve-assign@m Dec 15   31/1268  " thread-indent "\"[oss-security] Re: CVE Request: IrRegular Expressions resource exhaustion in regex compilation [was: Re: [oss-security] CVE Request: resource exhaustion in regex expression handling in WebKit]\"\n") "<20161214200545.GT10921@scully.more-magic.net>" ("<20161214200545.GT10921@scully.more-magic.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30164 invoked by uid 550); 15 Dec 2016 17:42:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30146 invoked from network); 15 Dec 2016 17:42:17 -0000
From: <cve-assign@mitre.org>
To: <peter@more-magic.net>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <20161214200545.GT10921@scully.more-magic.net>
Message-ID: <a9385b640cfb4927afadd3cbf4792e81@imshyb02.MITRE.ORG>
Date: Thu, 15 Dec 2016 12:42:05 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE Request: IrRegular Expressions resource exhaustion in regex compilation [was: Re: [oss-security] CVE Request: resource exhaustion in regex expression handling in WebKit]

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Compiling the above regex also causes excessive resource consumption in
> the portable Irregex (IrRegular Expressions) Scheme package, which can be
> found at http://synthcode.com/scheme/irregex/

Use CVE-2016-9954.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYUtTtAAoJEHb/MwWLVhi2T9MP/RGyNWSuhs4FoFjAuofBzG0v
oFn5+4gQlR1DMi8zJ61w6CYWUeTLkxkD4WNORaSJ9gpIp5Qbk2yPN9jAJ6vDd1Q+
FmVr2Jn7QiDXokJeUCfbEr5WT6MwbUhi5j3MejQr9UC3ufMexz1b/gHcoNb9C4T7
s2KURQgu8k0Rur8a0Sjim0ZX5DeiLA8Hd3hNRKb5KRCAE7uBFqbw8lHdQwUApIZJ
16JeGI7xtmbms1I9iwMM9vZvbtHp71NM20NUxb/kk3CM13mHuhWov5PaPQ5INdny
tOR240tekYbESJFfnaZ1U5obDQqaETWq3C9zXaEbRB/lG6HsBDkBjOvLHqsCTKsr
DiRL4z4xkX/Ko08QDPhiirLKy04w7qCMXf0IncqjutMBPZEKowrb9wuNdsJF4h8p
M66PTlmWwPAVL2HyEJyWCwxMmw96oDgQUoP8Ktc9KqwpqxjTAQz8cr+uEa/ld+SC
ttujAe89KYQXtMJmXTrMqP0ufNJW+PpIY67e4cqnM0ebDPzEMtSwxTCo+38DGR3M
337DGOc6Q0EPcwJNAvt6BjSgy/dMvHE36BRHf2GW2rM2dvQPpecidmKcK4sW/Ef2
Er8WTqni+BQ/Xxb1/jngHUwzBxzor+9CcBoJrNiIFw+OA/aRQWJf2FBmrBYIp4Aj
A40+HIGh8NSxhfIGG/Xm
=kqkA
-----END PGP SIGNATURE-----
