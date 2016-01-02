X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1623" "Saturday" "2" "January" "2016" "17:49:14" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160102224914.20BD9332307@smtpvbsrv1.mitre.org>" "40" "[oss-security] Re: CVE Request: PCRE Library Heap Overflow Vulnerability" nil nil nil "1" "2016010222:49:14" "[oss-security] Re: CVE Request: PCRE Library Heap Overflow Vulnerability" (number mark "U       cve-assign@m Jan  2   40/1623  " thread-indent "\"[oss-security] Re: CVE Request: PCRE Library Heap Overflow Vulnerability\"\n") "<CAOSkqBWUb9ri_NaQqRfKi=Gz-rDRB28K7LcGincXgR6hHji+mw@mail.gmail.com>" ("<CAOSkqBWUb9ri_NaQqRfKi=Gz-rDRB28K7LcGincXgR6hHji+mw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14145 invoked by uid 550); 2 Jan 2016 22:49:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14117 invoked from network); 2 Jan 2016 22:49:26 -0000
From: cve-assign@mitre.org
To: wengx522@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CAOSkqBWUb9ri_NaQqRfKi=Gz-rDRB28K7LcGincXgR6hHji+mw@mail.gmail.com>
Message-Id: <20160102224914.20BD9332307@smtpvbsrv1.mitre.org>
Date: Sat,  2 Jan 2016 17:49:14 -0500 (EST)
Subject: [oss-security] Re: CVE Request: PCRE Library Heap Overflow Vulnerability

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> PCRE library is prone to a vulnerability which leads to Heap Overflow.
> During the compilation of a malformed regular expression, more data is
> written on the malloced block than the expected size output by
> compile_regex. Carefully crafted my lead to code execution in the context
> of affected applications.

> https://bugs.exim.org/show_bug.cgi?id=1767

>> 5 more bytes are written on the heap in this case.
>> This overflow can be used to modify adjacent length field of array/vector/string

>> PCRE version 8.38 are confirmed to be vulnerable.

Use CVE-2016-1283.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWiFNmAAoJEL54rhJi8gl5DxYP+QG19qjSea0lHZ+Knn1XYKfH
Nns/bUDLZdU2w8CfcDR+DZub7q1l6jO/Ab6ZFMf9WwgnY1Nr6kwotmImTAzehWwh
U4nrl1a/ip5v2Etjvs9Etye64qPN6swtEIn/afqmq9/1FU/ezAWOERGbS9o149j9
0ROvCnzNOqvtFCVKaj/aszNFLk0//PWCHup7BYklUsP5OcKObvlawtdemUtF+QOy
hf5sa2MyBkZkSk8B7HgyB5C9KkoQ8EF1Jos7uQwfEhr0+YU5l2fSz4+ntASaha4b
W5T9d6ukZEzxpBdIWvGbLrXfDwHnf0vF+Pi1XuTrcfKRzyYngdXzodgwy9/7Muyd
fH/niuu4lgMBBQ1ARNaVPcV025unxjesnx8Xt/fcBx6WZsR230A1Yylx0QBl578t
5ezyNAxng8taaCbkwcqoogOXqEP3hPQwHN22guF+RiJJaw54wK+s02zJFgmQlJQT
drJtpkHyHCnmwAwIE/wibm6ettm4u/HKUN1+ficouWIgYHVCcghtP805BFFKYwGg
PxEc8UnRzWDq6nd4BfVL7HwDw4PHO+XIQf/rfBoGYNQTEAFhqzxKbGzWJFlcSD/4
kx16tNsZIQPyQD+Y0CvAveAJqdY/Miby9/c9d+AgqVrojsp7xYyxAUZqt1Sq2sJA
ln+0g6gYiUgyNVG1aNwH
=dcc/
-----END PGP SIGNATURE-----
