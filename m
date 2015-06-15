X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1553" "Monday" "15" "June" "2015" "07:28:29" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150615112829.F231E52E47B@smtpvbsrv1.mitre.org>" "39" "[oss-security] Re: CVE request for buffer overrun in CHICKEN Scheme's string-translate* procedure" nil nil nil "6" "2015061511:28:29" "[oss-security] Re: CVE request for buffer overrun in CHICKEN Scheme's string-translate* procedure" (number mark "        cve-assign@m Jun 15   39/1553  " thread-indent "\"[oss-security] Re: CVE request for buffer overrun in CHICKEN Scheme's string-translate* procedure\"\n") "<20150615073937.GV7243@more-magic.net>" ("<20150615073937.GV7243@more-magic.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1467 invoked by uid 550); 15 Jun 2015 11:28:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1449 invoked from network); 15 Jun 2015 11:28:42 -0000
In-Reply-To: <20150615073937.GV7243@more-magic.net>
Message-Id: <20150615112829.F231E52E47B@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Mon, 15 Jun 2015 07:28:29 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request for buffer overrun in CHICKEN Scheme's string-translate* procedure
To: peter@more-magic.net

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> memcmp() on
> each index of the string being searched in, with a length of the source
> string in the alist map argument, which caused it to read beyond the bounds
> of the searched string.
> 
> This bug affects all released versions of CHICKEN prior to 4.10.0.

> http://lists.nongnu.org/archive/html/chicken-announce/2015-06/msg00010.html

> http://lists.nongnu.org/archive/html/chicken-hackers/2015-06/msg00037.html

> http://lists.nongnu.org/archive/html/chicken-hackers/2015-06/txtHKRTbJy12t.txt

> string-translate* would scan from every position in the target string
> for each source string in the map, even if that would mean scanning
> past the end.  The out-of-bounds read would be limited to the size of
> the overlapping prefix in the trailing garbage beyond the string

Use CVE-2015-4556 for this out-of-bounds read issue.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVfrY3AAoJEKllVAevmvmsXzAH/0XNvsyezFpaTOFDrkLLXM6P
q9OrHbLljpyFVIYHV4zHmYbdtaGkIGdmpZVeM9Llz+CFFihnaApoC8r41aVdrNOi
BO1TC9FGM4LiV35GRgoi2Y6Rjg5yXyC5aWXjqqrfvFNcrR8x3N2ewGLufCC8L6zU
3a5UQdNaayL040SLLnYwNKi7obDRCCohlS+z4t9EDWalByTIvn+lU/fcjtDCvWf2
MK+1rtGaOgc3sdPmJ2KSE3DpLHhz2Lh3s+SXIsq80ajVk4u9m2VQjxojbNkh1U3Y
FAlbmurg25TcTAAdrjTxs6yHwvji5dLM17neLDbpjBwIBREqyx0V08pygiLEYUo=
=aPMM
-----END PGP SIGNATURE-----
