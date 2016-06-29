X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1985" "Wednesday" "29" "June" "2016" "06:56:57" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160629105657.7DD6F33201E@smtpvbsrv1.mitre.org>" "49" "[oss-security] Re: CVE Request - PECL-HTTP 3.0.0 Buffer overflow" nil nil nil "6" "2016062910:56:57" "[oss-security] Re: CVE Request - PECL-HTTP 3.0.0 Buffer overflow" (number mark "U       cve-assign@m Jun 29   49/1985  " thread-indent "\"[oss-security] Re: CVE Request - PECL-HTTP 3.0.0 Buffer overflow\"\n") "<d45df96858a4de9a1d544b795d2be58c@blinkenshell.org>" ("<d45df96858a4de9a1d544b795d2be58c@blinkenshell.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5660 invoked by uid 550); 29 Jun 2016 10:57:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5642 invoked from network); 29 Jun 2016 10:57:09 -0000
From: cve-assign@mitre.org
To: hlt99@blinkenshell.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <d45df96858a4de9a1d544b795d2be58c@blinkenshell.org>
Message-Id: <20160629105657.7DD6F33201E@smtpvbsrv1.mitre.org>
Date: Wed, 29 Jun 2016 06:56:57 -0400 (EDT)
Subject: [oss-security] Re: CVE Request - PECL-HTTP 3.0.0 Buffer overflow

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> a buffer overflow was discovered in url parsing
> functions of the PECL HTTP extension.
> The bug allowed a partial overwrite of a callback function pointer
> possibly leading to execution of arbitrary code.
> 
> For the original bug report to the PHP bug tracker, please see:
> 
>   https://bugs.php.net/bug.php?id=71719
> 
> included in PECL-HTTP 3.0.1 that was released the same day:
> 
>   https://pecl.php.net/package/pecl_http/3.0.1
>   Release notes Version 3.0.1
>   * Fix php-bug #71719: Buffer overflow in HTTP url parsing functions (Mike, rc0r)
> 
> This flaw was fixed in commit [3724cd7]
> 
> https://github.com/m6w6/ext-http/commit/3724cd76a28be1d6049b5537232e97ac567ae1f5

Use CVE-2016-5873 for the entire issue described in this commit, i.e.,
"The parser's offset was not reset when we softfail in scheme parsing
and continue to parse a path" and the accompanying change to maxlen in
the php_http_url_parse function.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXc6jUAAoJEHb/MwWLVhi2MLwQAK1r9jq7D6vcm23wuNd7yhwz
y7VH1oflcJokHblJKyF+pNjZQ9tjGpsAnWqm2GHBEgH4yE297gVYg/WmhNauZZpE
RUyCk6OCKXLBBNyFvP9YfJG7KJFp1OejEvmYFv/SD5pUquwv+hAWHwOoZucaESRH
ivscwV1ILF4v+n61CPfMHtkmBk8XXggTnvHFGjTkQhekt2makC0pENId9SF4lzh1
xkN9FzHJSviNkymSwX+CSvdUVjxa2UPenwAIjULw6dPZXSKgUWfCEXXFDiYI6Krt
jeqxFMiAuKRfeCFnS3pr3wpFs2n7j7dBLL6+nH35Ex58lEaresdDRpRs5F/TIqU1
B6xY30m0JeNaq5a6M7YEA1fWpAsLU6DuaDKkUt7uTSv525TULzmEBXhWh/ZZQbpw
rMf+TyA+0cpgcmkTJx0ngmKpnlRuf/gCHf0/2no2N7t0dDqJR/KCEZd8NQSSbqOv
GUNi2QYeII0b7ZibmB13W3paqqo2XzvEFeqqKCUoIrYiSEBLLKtu5nbrA9JzJd3E
WR8RgGFpKfbntvzqXdmVyqohjh11GGY0qy9/IrSk9AYQHjGO/5/ZZXUpd50h9v7F
pgr1tLArI/sNgnuugpyMcJX/bgvbpIPAJdg7hQGldgdoYnBCY/n4F7tZzalOzu6T
nCkssdBqv91hfjwnGGd2
=im8F
-----END PGP SIGNATURE-----
