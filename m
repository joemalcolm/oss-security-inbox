X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2166" "Wednesday" "3" "June" "2015" "16:42:01" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150603204201.24578B2E078@smtpvbsrv1.mitre.org>" "48" "[oss-security] Re: Stack out of bounds read access in uudecode / sharutils" nil nil nil "6" "2015060320:42:01" "[oss-security] Re: Stack out of bounds read access in uudecode / sharutils" (number mark "        cve-assign@m Jun  3   48/2166  " thread-indent "\"[oss-security] Re: Stack out of bounds read access in uudecode / sharutils\"\n") "<20150603202537.44409561@pc1>" ("<20150603202537.44409561@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26298 invoked by uid 550); 3 Jun 2015 20:42:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26221 invoked from network); 3 Jun 2015 20:42:12 -0000
In-Reply-To: <20150603202537.44409561@pc1>
Message-Id: <20150603204201.24578B2E078@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed,  3 Jun 2015 16:42:01 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Stack out of bounds read access in uudecode / sharutils
To: hanno@hboeck.de

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> What I can say is that many very similar issues I reported in the past
> got CVEs (lately e.g. in wireshark and curl).

What makes uudecode different is that the discovery was an
out-of-bounds read, and uudecode is neither a library nor a
multiple-input program. (Wireshark is a multiple-input program in the
sense that it is commonly used for live packet capture, and must
remain running to capture packets that are sent later. Some other
programs are multiple-input programs because they maintain the state
of multiple sessions.)

In these situations (i.e., OOB-read library=no multiple-input=no),
obtaining a CVE ID currently requires a realistic scenario with a
security impact. One class of scenarios, as mentioned, is data
exfiltration. Another possible class of scenarios involves a read
operation that triggers a change to the program's control flow.

We're not sure that it would be worthwhile to try to document (in
advance) all possible combinations of product attributes and issue
categories, in order to suggest which combinations need more impact
analysis than others.

Also, we realize that some oss-security readers may be very interested
in crash reports that ultimately cannot have CVE IDs. For example,
these reports may help to suggest a specific type of code-quality
problem in a named product, and that information could be quite useful
in choosing the direction of follow-on research into exploitable
problems in that product.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVb2ZDAAoJEKllVAevmvmsMpcH/0tVA9+rgQ2m+eWeubs/U3rP
NdY1ZvW0BKGy5MjFfA+rR/7BLTVwF6lsoXQctpadyuEeFtb2AwcnUAaFaVyIX+hZ
zba0Rk41R1eo2b3Iu+78AGIz7xMMxgGMtJ7AnGpaXlAmiSrFux3ObGe14CIXSvlU
PTYIWjMTIXdT9gsnfwL0M433+nwwB9eqggeL/HAmCvvk9OFI/zghiZhS0lT9ieu3
823JPxhkV27nCce2aakYacPrNj9SjXQbLm+r6uFfzVqQmiHXp9G5PMxDKEyoZ3gN
325p0DdpLujeRWedZrw6xCBg36R31bQwkSW+3KXVIY4tTiBm06wqUEVL2ob83kE=
=MmOo
-----END PGP SIGNATURE-----
