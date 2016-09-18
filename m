X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1497" "Sunday" "18" "September" "2016" "10:40:06" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160918144006.CDF1F33200B@smtpvbsrv1.mitre.org>" "37" "[oss-security] Re: CVE request - openjpeg null ptr dereference" nil nil nil "9" "2016091814:40:06" "[oss-security] Re: CVE request - openjpeg null ptr dereference" (number mark "U       cve-assign@m Sep 18   37/1497  " thread-indent "\"[oss-security] Re: CVE request - openjpeg null ptr dereference\"\n") "<7c197fe9-19b4-6d6b-69a9-5504a9efbcb2@724safe.com>" ("<7c197fe9-19b4-6d6b-69a9-5504a9efbcb2@724safe.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9954 invoked by uid 550); 18 Sep 2016 14:40:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9933 invoked from network); 18 Sep 2016 14:40:18 -0000
From: cve-assign@mitre.org
To: vul@724safe.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <7c197fe9-19b4-6d6b-69a9-5504a9efbcb2@724safe.com>
Message-Id: <20160918144006.CDF1F33200B@smtpvbsrv1.mitre.org>
Date: Sun, 18 Sep 2016 10:40:06 -0400 (EDT)
Subject: [oss-security] Re: CVE request - openjpeg null ptr dereference

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> AddressSanitizer: SEGV on unknown address
> 
> https://github.com/uclouvain/openjpeg/issues/843

Use CVE-2016-7445.

(A NULL pointer dereference is within the scope of CVE when it affects
a library that can realistically be used to build a multiple-input
application. For example, openjpeg-nullptr-github-issue-842.ppm
crashes the application, and the application was supposed to have
remained running to display other images in other windows.)

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX3qbJAAoJEHb/MwWLVhi2dMIP/1Gynw4G1wvocXs2eT0FqQrA
WpR15GQzvHzMbVoeKcG9dLx+kGU/VbZXqxPv1EAFFPa6/Tv9ZOnbD2Kj6nmO1W1k
tF/jLpeViTxqnvZEVJ9HSFBC5sVj/SEj1QV4/C31Uv1WRyu2XeTJfxWfjzsT4ts5
nxbwqZAFJFCnXTjPMh2a1LIp+NBd1J8v/ohsHfZsPYQMO8FeXtJ6zuOKeO2hDiFo
krPkMMELB/0HSHd4LQ7KLgAWyUeVyfcpWliVUyAMzXRm0XkDeEwec/7LAVAXeD3y
CA7w6CVy8dPa3cA8sGcphSWKCdt0iq+DJBAT2VvpGC5XSzD+c32cwB4ME5wxr/tB
KIi3Wg9iuv7jZLykPz4Ir5HlDNO+6FJ9hAZYHSQVHoq+Z3d1TX84Msk8EkuFZsNi
tEutJ7/Tg8Yfwn5QnVtaKIq9vMBSeyEdN8CChQyS/iuS+LNtIxTMdiSXT6Z2B9cL
MJ56Vz35ArTpil3jF4SlKyeTE2tikdOmg0rjr8jbhpIeCXDTjM/HJ60ekkjdQids
L5erXn3RfYKKequqNVLIhejzHir1DXa+cfplvPRTDD8FIXOZyjw+0yCfyI64rY8V
4ucN0O5dzpMNzO+KNErIxX8E5Sea0ERPhnp97sYDwIpEtcn0Lu2odsjVtnIzOdAq
5BdJZ0sBPI/EM7bXZJDc
=EcEl
-----END PGP SIGNATURE-----
