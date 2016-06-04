X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1970" "Saturday" "4" "June" "2016" "13:04:42" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160604170442.A47D96C0729@smtpvmsrv1.mitre.org>" "42" "[oss-security] three vulnerabilities in ImageMagick before 7.0.1-2" nil nil nil "6" "2016060417:04:42" "[oss-security] three vulnerabilities in ImageMagick before 7.0.1-2" (number mark "U       cve-assign@m Jun  4   42/1970  " thread-indent "\"[oss-security] three vulnerabilities in ImageMagick before 7.0.1-2\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32660 invoked by uid 550); 4 Jun 2016 17:04:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32641 invoked from network); 4 Jun 2016 17:04:54 -0000
From: cve-assign@mitre.org
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-Id: <20160604170442.A47D96C0729@smtpvmsrv1.mitre.org>
Date: Sat,  4 Jun 2016 13:04:42 -0400 (EDT)
Subject: [oss-security] three vulnerabilities in ImageMagick before 7.0.1-2

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

In case anyone needs background information about:

  https://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2016-4562
  https://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2016-4563
  https://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2016-4564

The person who requested these CVE IDs from MITRE provided a security
advisory showing three independent problems (also with quite different
attack methodologies) that each happens to have a resultant buffer
overflow. However, they do not plan to make their security advisory
public. The CVE descriptions are based only on the surface-level
code-change information that is public in GitHub. For open-source
software, it is relatively rare for someone to compose a detailed
advisory about multiple CVEs and keep it permanently non-public, but
this can happen. One of the effects of non-public advisories is that
the number of CVEs may seem unrelated to the commit message.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXUwPnAAoJEHb/MwWLVhi291MP/3wV+ZGCP8XJftP9nZez4apC
VtgFMu00wh19tQDJoskUhagfuc0D74KSo0c9o/rrTpNVAIpxaPsEkjCqTCicThEv
C55FqsDPIQo+XN8docdNFteYuuIwgt+thjMgmV1IuEdm4wbSCg0Ddm6vJGUUK9i7
F965FZ2S8B10kDG3soX43VsRiRmJnyhJ+MhcyGyuaAKGqmtLUnw8rFm91qvhghD3
abAV6PENb1abvBNzztYs1iWDtzCM/whIEVoRpH0qm/yTGin3/+Mo3SIcDVQ9/UQj
VvpBhpzURoLJOrzVqrPWrQO4vOD8BYE0hwfn878//qKVPp0TfnPPqUzLpBTN9eZQ
wv76w6/+1hoTKeuSrMfdAgqO/15pvB2iLWxBPjJcVVCyY32IalS1562LQxeVxqlC
250OZWu4APlvXjoKos56WuV0CPohVEFhBtbmQ9qxoudkjejcDoWhmi/Z+Fh2ElHp
n/LNiPWttWrrPzKb+s9GNvxXo2z9dDHbxVrBEOqppNwuynocCbmR4UGZc1vp9PQ7
UhXFQ/y1guWTvOGw/NZR9kYJthN2o7p5P0ceHWRpPfqMQlTQEn0CTjShLCtXrZ2G
nUiu3QT58FlP5hUfbjCQ+XGYj0lMcpBoN52AgiDxZL1BjKf15VIRsOLqwDSs144J
UX+2kIOAvJIMLky69RL9
=lITg
-----END PGP SIGNATURE-----
