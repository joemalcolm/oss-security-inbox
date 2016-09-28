X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1670" "Wednesday" "28" "September" "2016" "16:11:20" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160928201120.CB064ABC23D@smtpvmsrv1.mitre.org>" "48" "[oss-security] Re: CVE request - mujs Heap-Buffer-Overflow write and OOB Read" "^Cc:" nil nil "9" "2016092820:11:20" "[oss-security] Re: CVE request - mujs Heap-Buffer-Overflow write and OOB Read" (number mark "U       cve-assign@m Sep 28   48/1670  " thread-indent "\"[oss-security] Re: CVE request - mujs Heap-Buffer-Overflow write and OOB Read\"\n") "<6c6e2d2c-2fc9-9538-88e8-ac2f309211c3@gmail.com>" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3502 invoked by uid 550); 28 Sep 2016 20:11:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3477 invoked from network); 28 Sep 2016 20:11:32 -0000
In-Reply-To: <6c6e2d2c-2fc9-9538-88e8-ac2f309211c3@gmail.com>
Message-Id: <20160928201120.CB064ABC23D@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org
Date: Wed, 28 Sep 2016 16:11:20 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request - mujs Heap-Buffer-Overflow write and OOB Read
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> mujs str Out-of-Bound read 1 byte in function chartorune.
> http://bugs.ghostscript.com/show_bug.cgi?id=697136

>> AddressSanitizer: heap-buffer-overflow
>> READ of size 1
>> 
>> We were unconditionally reading the next character if we encountered
>> a '*' in a multi-line comment; possibly reading past the end of
>> the input.

Use CVE-2016-7563.


> mujs "char *s" Heap overflow in Fp_toString at jsfunction.c:72
> http://bugs.ghostscript.com/show_bug.cgi?id=697137

>> AddressSanitizer: heap-buffer-overflow
>> WRITE of size 1
>> 
>> We were not allocating space for the terminating zero byte.

Use CVE-2016-7564.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX7COpAAoJEHb/MwWLVhi24ugP/19AmMjWnrZ9kH88CpBt/y0M
s6rWfYpCF0k56G6RSlkuUm/XOlqBPAsWK9I3REM32shkCLaA0L96IeQnW1h/flT1
7m30tJmxi31i31XfvpnBJWl06EqKTMZvNdNQBO+JS79ehBGmhmsIWjs9EkbBpNIv
9jr3rzWE+K7IAZcWAGu5e56mCC+FpNE1djZ8Iaw+RuX2oVOvJoDTq1hskiRMijKw
qXiudF6upJ8HUzBWN3mbDAUtuA0VmYClQZ39iy7V6nH7QuwbG4XLvzAjkCjmzwhS
bkg7zFhNOMw6J1nuVD5s5VtrhRctgaPaDDaTnNsw7IYjyYNbO+obhw3x1ZnqrXcx
+wN3ZfMzxk0Q4n4KypmF2OJ6QITYqH5K6ofO5D9OI39cUmjsBEj1smqxSZq01xrU
YxDyGS4gNQ6hWKS23/wgPt9YAjX+2xBMnAyygBrAzNcfFmO42XUpHDWl2ArnXQ1l
kVyZLKOxFbGeTcsMyDFAjsDwD9tffl/6jDkZgd34em6kS1+lE7bccy2+IUsynrxz
7zqhueAX7uOOVbjgJ4bVpGYgebj2J8AVHJoJJKtaWskCBKbxyxbT49twJ56lSDd9
s5kVrUGdOz6+9RO7GJ/6dEwqJjmUYXh8O/3qI3h4gjmeTHAIaJ+uxhZ5J34Sj8xe
B6ZoBxrnz+3QVOfjQ49u
=iapx
-----END PGP SIGNATURE-----
