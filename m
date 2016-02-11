X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1917" "Thursday" "11" "February" "2016" "16:02:37" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160211210237.884E272E025@smtpvbsrv1.mitre.org>" "53" "[oss-security] Re: CVE requests: Multiple vulnerabilities in GraphicsMagick parsing and processing SVG files" nil nil nil "2" "2016021121:02:37" "[oss-security] Re: CVE requests: Multiple vulnerabilities in GraphicsMagick parsing and processing SVG files" (number mark "U       cve-assign@m Feb 11   53/1917  " thread-indent "\"[oss-security] Re: CVE requests: Multiple vulnerabilities in GraphicsMagick parsing and processing SVG files\"\n") "<CACn5sdTk+VizwzyfMXDUJuEZi9fEv_OUav73NRobrb6D2ruLxQ@mail.gmail.com>" ("<CACn5sdTk+VizwzyfMXDUJuEZi9fEv_OUav73NRobrb6D2ruLxQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26156 invoked by uid 550); 11 Feb 2016 21:02:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26113 invoked from network); 11 Feb 2016 21:02:49 -0000
From: cve-assign@mitre.org
To: gustavo.grieco@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CACn5sdTk+VizwzyfMXDUJuEZi9fEv_OUav73NRobrb6D2ruLxQ@mail.gmail.com>
Message-Id: <20160211210237.884E272E025@smtpvbsrv1.mitre.org>
Date: Thu, 11 Feb 2016 16:02:37 -0500 (EST)
Subject: [oss-security] Re: CVE requests: Multiple vulnerabilities in GraphicsMagick parsing and processing SVG files

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> We recently tested the last release of GraphicsMagick (1.3.23)

> AddressSanitizer: heap-buffer-overflow
> WRITE of size 8
>     #0 0x5a892b in TracePoint magick/render.c:5125
> 
> AddressSanitizer: stack-buffer-overflow
> WRITE of size 1
>     #0 0x60ba3a in GetToken magick/utility.c:2638
> 
> AddressSanitizer: heap-buffer-overflow on address
> WRITE of size 8
>     #0 0x93c004 in GetTransformTokens coders/svg.c:361

Use CVE-2016-2317 for this set of three issues.


> AddressSanitizer: SEGV on unknown address 0x000000000000
>     #0 0x59866a in DrawImage magick/render.c:2999
> 
> AddressSanitizer: SEGV on unknown address 0x000000000000
>     #0 0x945793 in SVGStartElement coders/svg.c:1757
> 
> AddressSanitizer: SEGV on unknown address 0x000000000000
>     #0 0x5a396c in TraceArcPath magick/render.c:4550

Use CVE-2016-2318 for this set of three issues.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWvPYNAAoJEL54rhJi8gl55cQP/1ueHEBup/X4TOOAKln/6MVO
QcV/hhBnq6kGVbw/YM0zgTogAqJQUS9HOWrMAf09o9xs44k8A8D3hR4OV+vaQAAg
hKgtqqEcj5Tl6bf8FPlxNFW4ZuA6XsNJTxwCUNGy//QDD1Ozqy4GxxCL82Sp0zZT
fp/isPP7uaOrOMc/A+c5z6ak4NN6LEJYY8Ze4x/kqLSSbPEi5pyrBBJQLHhdLYTF
tpQ9NYR63SkKkJCgJbAh9pZTVLmdQ8SMbV7YYKnLxuQN2Jjhbjs6KKkiL3vntxFe
0yw7S+oH3c7pCyQIA43mJYqLNj1Ij4ZIJqnpaCFsUEk/bPMnzjGUtGZGsm6KZMkM
qHDiukkRnVpF9vGtTVPu3aUZ13EJWzUoVln8QPr3rSKavHXTTiFdG7WvL2ThEEZd
1tzMpi3IrhGe01ISv5JK/qxcJHBrEDr89tOPnwdsi9A3NeLfgxQz1myhesG+8uk0
zwcmFsR/nz36s2udFTjRxe4a/mHKaYurXtYr6+sB55sHs/qLJb00BX0cP3Kv9ga/
VbCRMuN4SciVkd3o/b7NGY/YeW9lYYVgvd/bzfPivOVMjywkDmpbkvhbo/TJNg/1
DSTX/g1o5cBI6QKXYNoz4p6Pa+NwJStsdbo76gkyfh5OPxe/HdPlBDgfQz6lVRgC
rOktkYCy3VMBOzVl2KEH
=uMbR
-----END PGP SIGNATURE-----
