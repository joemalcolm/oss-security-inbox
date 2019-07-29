X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1756" "Monday" "29" "July" "2019" "11:55:32" "-0400" "Josh Thompson" "jfthomps@apache.org" "<19319537.BvfTLQxH9x@treebeard>" "44" "[oss-security] [CVE-2018-11773] Apache VCL improper form validation in block allocation management" nil nil nil "7" "2019072915:55:32" "[oss-security] [CVE-2018-11773] Apache VCL improper form validation in block allocation management" (number mark "U       jfthomps@apa Jul 29   44/1756  " thread-indent "\"[oss-security] [CVE-2018-11773] Apache VCL improper form validation in block allocation management\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2018-11773] Apache VCL improper form validation in block allocation management" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3949 invoked by uid 550); 29 Jul 2019 16:04:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30315 invoked from network); 29 Jul 2019 15:56:51 -0000
From: Josh Thompson <jfthomps@apache.org>
To: oss-security@lists.openwall.com
Date: Mon, 29 Jul 2019 11:55:32 -0400
Message-ID: <19319537.BvfTLQxH9x@treebeard>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: [oss-security] [CVE-2018-11773] Apache VCL improper form validation in block allocation management

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

CVE-2018-11773: Apache VCL improper form validation in block allocation 
management

Severity: Medium

Versions Affected: 2.1 through 2.5

Description: Apache VCL versions 2.1 through 2.5 do not properly validate form 
input when processing a submitted block allocation. The form data is then used 
as an argument to the php built in function strtotime. This allows for an 
attack against the underlying implementation of that function. The 
implementation of strtotime at the time the issue was discovered appeared to 
be resistant to a malicious attack. However, all VCL systems running versions 
earlier than 2.5.1 should be upgraded or patched.

Mitigation: Upgrade to 2.5.1 or apply patches from https://vcl.apache.org/
security.html

Credit: This vulnerability was found and reported to the Apache VCL project by 
ADLab of Venustech.

CVE Released: July 29th, 2019
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEI0cOQm0VAdkhDARZSNnzl+fhyFkFAl0/FvQACgkQSNnzl+fh
yFm1sg/7B/d2H93fCdsBl1N5lhob5Phe23rJ0EYs8ELkptr0+lXSIYLCcQ8brhcj
0lM0aCnzobkJiI/t42HnebJ8rcMIo6fzQ1y4kMzKTVNLc8MiEU3kRV+ZpDMBTN1u
iAhBkjNzNoqZqOP5klmmInEhwbFHsYclFY0OCgabriMxY2WNbiuZEm/v7DwjDTEZ
3Z0xjo3TveMKPtdgfz+hiHm2z8gAOyWbyUVvHBL/+9BewNQXgUHuysD2M0roTZpj
46T4LMu8YKGBWIIRlTDQO463zI4H6bSd5xN7mpDCz1u/sqM2f4JdSP554MIQxpOa
orcJLTaI+jYOplGsxfVM/QXb3jLCuJvuu8ZxHhc4R2GMH3qukWEZ6Mt8r9Rr3JUS
R9AD/y0ZnIhsU+nEjzxs4y7H3B6BK9imQxVhctlOsIGj0hlSpb+xngSnTA/5aZ30
Iay5ZFibntAAefByOS451Ex8rZPJNWcCR22uOnV6YILLiQzWX+gumzkzcAD9g3Rn
/STt4o84WSyjMpBvsKC8Fif8FR/DNEZ5spsHujfzgNfPbRjLLXXQDzqC0yVrRbRM
84OPDIPtmj1Q4bpeMmNDhuuejUekuMCDWX1hlDMyaJO/YsiWGE1ITzcNBuWSbTYJ
uT1KYnnno1S+/EMDsxhdYPGJ6leXVz+5nLpXxQSFOfDzf4ruDDI=
=Qhgv
-----END PGP SIGNATURE-----



