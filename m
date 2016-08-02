X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1691" "Monday" "1" "August" "2016" "20:07:20" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160802000720.DF2953AE011@smtpvbsrv1.mitre.org>" "41" "[oss-security] Re: CVE:Request - Path Traversal Barebone.jsp - Liferay 5.1.0" nil nil nil "8" "2016080200:07:20" "[oss-security] Re: CVE:Request - Path Traversal Barebone.jsp - Liferay 5.1.0" (number mark "U       cve-assign@m Aug  1   41/1691  " thread-indent "\"[oss-security] Re: CVE:Request - Path Traversal Barebone.jsp - Liferay 5.1.0\"\n") "<579F7AF1.2090108@gmail.com>" ("<579F7AF1.2090108@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25654 invoked by uid 550); 2 Aug 2016 00:07:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25626 invoked from network); 2 Aug 2016 00:07:32 -0000
From: cve-assign@mitre.org
To: petrella.pietro@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <579F7AF1.2090108@gmail.com>
Message-Id: <20160802000720.DF2953AE011@smtpvbsrv1.mitre.org>
Date: Mon,  1 Aug 2016 20:07:20 -0400 (EDT)
Subject: [oss-security] Re: CVE:Request - Path Traversal Barebone.jsp - Liferay 5.1.0

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> I discovered a directory traversal issue on minifierBundleDir
> barebone.jsp variable on a website with Liferay 5.1.0.
> 
> However, i report the following vulnerable URL of example:
> 
> /html/js/barebone.jsp?minifierBundleDir=/%2E%2E/%2E%2E/%2E%2E/%2E%2E/%2E%2E/%2E%2E/%2E%2E/%2E%2E/%2E%2E/%2E%2E/%2E%2E/%2E%2E/%2E%2E%2Fetc%2Fhosts%00.html
> 
> It's important to note that the url requested is built in the following 
> manner:
> - only .. "encoded characters" are permitted when you insert the 
> traversal request
> - At the end of the file is necessary insert %00 and .html otherwise
> the request is not accepted

Use CVE-2016-6517.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXn95qAAoJEHb/MwWLVhi2EagP+wbDTXE/Nu6kzML6gHfT1YL/
ASt1JVhMFSk/1HLg3/ZLC1+lj7UVjj8Dhe/6xR+VZjbhT+lfZT0mkMJMlXjkpW56
Xr4QbP1rsgoZD3gIn3vZt714Kg2Slk+FgtYxnxXr14IkfjndbLRGteCTMp1oof2u
ZLwyHQkX8aa+QWF/NmfGaGqVmXmpD3tEkhwPujqNPfvdeY+qnsTflJnckHFPrNrm
XLwGnPE5oCYaTWR4Mik7fElYtm+KitiwLN1SNi8mtjhvftlpojNtpeTUyq0oZrkh
pmMIWLJW6sEhniWJ1AEnKngbZjDYA6JmP5sLkhP/vvGKTAUqb+5/XMDW1BgDr9Z5
+bmfGN1y+6hzbN/O1Eau6Xt0eFLyVTokc3bAszxB6+Oq3Mu3EXyRgF1wwwo2cT5i
XJ6Ait8TD6alYs4Apz6SVk81FkmmF42/sMdXMqpkrAekaLwX2iCtDimaCthZLJGJ
2rwT3ajPb+YMoeTXAGwipYxcHXh08A5YRZEgW1xzevJDng8qTNycPqb9QF2QmSHo
5LGU29Ct1om7rMzSeYoF/ZqYVlq8yOTK0NdkdNsxr52yKS4KNY1ebM7X9IrYfdcT
7ZRJGcIc0xS1ZfrW8WcfUWYnS6ke31nmXFLb6e73EmgM4+SX4lO1mIeBqGjekZYv
P1MEHsLUulw40je0Ag1O
=jL50
-----END PGP SIGNATURE-----
