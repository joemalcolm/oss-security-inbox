X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2244" "Wednesday" "20" "April" "2016" "11:47:01" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160420154701.DBEEE42E05D@smtpvbsrv1.mitre.org>" "60" "[oss-security] Re: CVE Request: Squid HTTP Caching Proxy multiple issues" nil nil nil "4" "2016042015:47:01" "[oss-security] Re: CVE Request: Squid HTTP Caching Proxy multiple issues" (number mark "U       cve-assign@m Apr 20   60/2244  " thread-indent "\"[oss-security] Re: CVE Request: Squid HTTP Caching Proxy multiple issues\"\n") "<57179246.30207@treenet.co.nz>" ("<57179246.30207@treenet.co.nz>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24541 invoked by uid 550); 20 Apr 2016 15:47:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24521 invoked from network); 20 Apr 2016 15:47:14 -0000
From: cve-assign@mitre.org
To: squid3@treenet.co.nz
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <57179246.30207@treenet.co.nz>
Message-Id: <20160420154701.DBEEE42E05D@smtpvbsrv1.mitre.org>
Date: Wed, 20 Apr 2016 11:47:01 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: Squid HTTP Caching Proxy multiple issues

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> http://www.squid-cache.org/Advisories/SQUID-2016_5.txt
> 
> A buffer overflow in the cachemgr.cgi tool reported by CESG (CESG REF:
> 56397140 / VULNERABILITY ID: 394201) allows remote clients to perform an
> indirect denial of service attack on the proxy administrator. It could
> be used trivially to hide other activities from inspection. Or be used
> to perform remote code execution on systems without overflow protection.
> 
> This bug was also independently reported by Yuriy M. Kaminskiy.

Use CVE-2016-4051.


> http://www.squid-cache.org/Advisories/SQUID-2016_6.txt
> 
> Multiple on-stack buffer overflow from incorrect bounds calculation in
> Squid ESI processing has been reported by CESG (CESG REF: 56284998 /
> VULNERABILITY ID: 393536) which allows remote code execution or denial
> of service if depending on the OS overflow protections which are active.

Use CVE-2016-4052.


> Further investigation has found that when compiler optimization is
> applied incorrect use of assert() leads to information disclosure of
> stack contents to remote clients

Use CVE-2016-4053.


> a second buffer overflow leads to
> further remote code execution possibilities.

Use CVE-2016-4054.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXF6OQAAoJEHb/MwWLVhi29fEP/ju9RKVTJw84FMDWFYFqKQ4S
fZu5VoTRXPcpOUyjhBAVIJjDvFAB+5MxfGjIHxlmresgFtt5c7CnXaDQKHCZjxDr
ytelqvMs3k0OX4yF/phpUXXFX/FhtNe80vQJ0LV5H80M43Fylx05DgAy7GA6jIyk
9Cl3QSMFS/UOIGTMtL+k9k5AOn8A7W7cL2K6guUD8wihywJ6xw0mKkWDc8lXFzst
+6Yeq0cgyI9BIw0IM3CRMPCHfqIuxABb7q2ntfeYrFDVKj99jiihsHKpmCtyNhU/
vNfDrzpjcegLcqiBHGNwnSNPhK8cBGAuvQv1+9aHhKLL1oLxOr7unq5y2DbOokdb
ci7jSL20xN0N8SnuCOrzufsaxOiWlsj4qfgWpNC8Lk9x0mrm5EqVctIXHgNuhS/R
8Yj9uVZMtfCcUmwFlHb9Th+1O3yyayJU0cmAx1xn29hlcOmnBRWckZR14wGpNZ/I
vIEVvLn0m7OZNiCxcqDtdXdJNLpbWFGxF7DMKkhqxaMJaW+e1r6I1ato1kMmL9cV
NZYcjB0Z4c+lAN1c24xMl6Q4SYKCnL/qJ1juBQmTL+4XNh4ZlHbQaELqR0s1eg4G
NbrRhJnXeP8RPUyLQiQvZP4eNryMokBnmwR3NPGy8Xlnl4OKm0zAQTE5tXbs4B5f
JmGdXJ3LnchNfMvi7NVn
=/12O
-----END PGP SIGNATURE-----
