X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1621" "Wednesday" "23" "November" "2016" "21:58:26" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<f5c9f4082b3b452386402eadd517b3cd@imshyb02.MITRE.ORG>" "46" "[oss-security] Re: CVE Request: gstreamer plugins" nil nil nil "11" "2016112402:58:26" "[oss-security] Re: CVE Request: gstreamer plugins" (number mark "U       cve-assign@m Nov 23   46/1621  " thread-indent "\"[oss-security] Re: CVE Request: gstreamer plugins\"\n") "<CAFRnB2XkOnZGGXwJTcNb2t2LbGFS4-vzKZ3COzBot2G32PEZ9Q@mail.gmail.com>" ("<CAFRnB2XkOnZGGXwJTcNb2t2LbGFS4-vzKZ3COzBot2G32PEZ9Q@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32474 invoked by uid 550); 24 Nov 2016 02:58:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32447 invoked from network); 24 Nov 2016 02:58:37 -0000
From: <cve-assign@mitre.org>
To: <oss-security@lists.openwall.com>
CC: <cve-assign@mitre.org>
In-Reply-To: <CAFRnB2XkOnZGGXwJTcNb2t2LbGFS4-vzKZ3COzBot2G32PEZ9Q@mail.gmail.com>
Message-ID: <f5c9f4082b3b452386402eadd517b3cd@imshyb02.MITRE.ORG>
Date: Wed, 23 Nov 2016 21:58:26 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE Request: gstreamer plugins

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://scarybeastsecurity.blogspot.com/2016/11/0day-exploit-advancing-exploitation.html
> gstreamer decoder for the FLIC file format

> To get an out-of-bounds write, the attacker simply has to specify a
> start_line value greater than the number of lines in the output canvas
> (bug 1)

Use CVE-2016-9634.


> Or they could specify a skip count that goes past the end of the last
> line of the output canvas (bug 2)

Use CVE-2016-9635.


> Or they could specify a write count that goes past the end of the last
> line of the output buffer (bug 3)

Use CVE-2016-9636.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYNlcQAAoJEHb/MwWLVhi27goP/iFEWViR3EL1uQvw8r0pKrhG
sn1xsANxTN2AFDs4OfXahfoC/zvmuTPbfJ9DeL0LhpIAMslQxd8JmnFHpnmQn6ah
zwImr913g1OPR7WPwsTpFzK9geS75Mnq4YNiH8JFAIrW37vgimWhS/31mytFuRJR
fRnqeKU33NCKwELK/vR0ZxTc8hy5bAVvjhGKYB94xZbgjCNLTc3PwsIMFLbY6aSf
8k0w1xdumIFD6bw+x9jnNH+Rnv6fT3GPSDYsBajNZDIrgO7mcPlKEfv4t4+HYTHT
Tnh3omqIFOrXnyKurZ+Qc0e2+zgusyhRJWRda1M2T+//cmGxNF58z+mtATlPRIaJ
Dd8Ri8V/VWXdHRvmGHhFgzIG+LWBYd0VEttJE7PFJ5xzIy5kEoM6tGcacFsZn9Wp
rlBrVi1Q+mp3jIdSxMu0KQvGzs/9gyQldoZDCxOQ3U0n3MaumBbdQmKU9Fj8PPoF
f1OD6hBHc+Q42z30993GpjypiDy5WPINxN24ikRQyQha5qVT0BSCdYYph9Z70I3d
lOrCF7x1LM5Gyr2biYyfdA4utAyqaBP0VqFI1gR3DByfN17WXSauVuxl6c7zS+hf
03+ixlUk+65BsFDlmC+ep0BUKwLUn7vaIY3+t0QZMwTDDoGOGcK3/pfq3TYAgaCl
r6UZUBI35WgyoCj0VoyY
=xMfa
-----END PGP SIGNATURE-----
