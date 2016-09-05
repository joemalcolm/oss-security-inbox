X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1470" "Monday" "5" "September" "2016" "18:41:47" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160905224147.43F636C0FB8@smtpvmsrv1.mitre.org>" "34" "[oss-security] Re: [SECURITY VULNERABILITY] curl: Re-using connections with wrong client cert" nil nil nil "9" "2016090522:41:47" "[oss-security] Re: [SECURITY VULNERABILITY] curl: Re-using connections with wrong client cert" (number mark "U       cve-assign@m Sep  5   34/1470  " thread-indent "\"[oss-security] Re: [SECURITY VULNERABILITY] curl: Re-using connections with wrong client cert\"\n") "<1649028.3J7HsOb28o@kdudka-nb>" ("<1649028.3J7HsOb28o@kdudka-nb>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25769 invoked by uid 550); 5 Sep 2016 22:41:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25751 invoked from network); 5 Sep 2016 22:41:59 -0000
From: cve-assign@mitre.org
To: kdudka@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <1649028.3J7HsOb28o@kdudka-nb>
Message-Id: <20160905224147.43F636C0FB8@smtpvmsrv1.mitre.org>
Date: Mon,  5 Sep 2016 18:41:47 -0400 (EDT)
Subject: [oss-security] Re: [SECURITY VULNERABILITY] curl: Re-using connections with wrong client cert

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> libcurl built on top of NSS (Network Security Services) still incorrectly
> re-uses client certificates if a certificate from file is used for one TLS
> connection but no certificate is set for a subsequent TLS connection.
> 
> This problem was caused by an implementation detail of the NSS backend
> in libcurl, which is orthogonal to the cause of CVE-2016-5420.

Use CVE-2016-7141 for this additional vulnerability.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXzfQ7AAoJEHb/MwWLVhi2JxoP/jhAg0xmSqjBWgmM9DjHYtgE
5mH15/YJkalUBLA1v3YFThjBxLgUsCDxzYozC282c536nPbGhOJsYJuyUW/U9EO9
+hFC2a3i2Zthe8VQg78eIYN7XvrxsVwJrFlzH8yxtrZmOxgr0u4d+KwDYY6d83yQ
hNvOlnoqKuVuuHI5xx7GciJvQZZJT8HzG5LbrwHX1oJUPPKkULK+47vKzXPdJqyp
kpKkqa4qYxpnlg9CES1lRL5GQzzIaMWhX//qMy7Itkj+E58ww6e1h/YCa1krqRfV
mDv05V+s+kofoPGUrcc2zqfM6PW5795QfJBOPK//vd7ugSTtj+OKhmL/YMwBP9w/
ncDoOFzRm6lykh9s4huDTmV3oNQ/ohbtgRQNBVXl4CQ5G8cfKdjMCgxl6nTJXv74
FIBUmQ9BzZrsSZjgOUYhbGDxTnnPR8H7mMu64nY+nNFDG6mEuTE+5J/QPNkrg5LJ
TLFwQLijgy+ehn00Gp/c252OqgiWlOjVAUXjgEGqLlk4sXFGGu/sC0V89jRcbv/M
L8mqa9E+5uarFRAuQF2aSv9C26ZcHwW6WKjO/T8BsLVYsQSi5RFCddx5NmqysRf7
5Lguj0K9nCVYSkfkhS4Mwrj+sSbpTKDCeiMXfcfGA2gWjX2KWFQqboMoNEVNonDc
0KNha7mMSmK/gVR3SCWO
=LzSU
-----END PGP SIGNATURE-----
