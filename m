X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2130" "Wednesday" "2" "March" "2016" "11:58:26" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160302165826.F2E3034E00C@smtpvbsrv1.mitre.org>" "52" "[oss-security] Re: CVE Request: Linux: aio write triggers integer overflow in some network protocols" "^Cc:" nil nil "3" "2016030216:58:26" "[oss-security] Re: CVE Request: Linux: aio write triggers integer overflow in some network protocols" (number mark "        cve-assign@m Mar  2   52/2130  " thread-indent "\"[oss-security] Re: CVE Request: Linux: aio write triggers integer overflow in some network protocols\"\n") "<20160301161155.GA4786@eldamar.local>" ("<20160301161155.GA4786@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22132 invoked by uid 550); 2 Mar 2016 16:58:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22103 invoked from network); 2 Mar 2016 16:58:39 -0000
In-Reply-To: <20160301161155.GA4786@eldamar.local>
Message-Id: <20160302165826.F2E3034E00C@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, benh@debian.org
Date: Wed,  2 Mar 2016 11:58:26 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Linux: aio write triggers integer overflow in some network protocols
To: carnil@debian.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://git.kernel.org/linus/4c185ce06dca14f5cea192f5a2c981ef50663f2b
> https://git.kernel.org/cgit/linux/kernel/git/stable/linux-stable.git/commit?id=c4f4b82694fe48b02f7a881a1797131a6dad1364

> For an upcoming Linux DSA in Debian we would use something like:

>> Ben Hawkes of Google Project Zero reported that the AIO interface
>> permitted reading or writing 2 GiB of data or more in a single
>> chunk, which could lead to an integer overflow when applied to
>> certain filesystems, socket or device types. The full security
>> impact has not been evaluated.

Use CVE-2015-8830.


> The issue was initially already addressed via
> 
> https://git.kernel.org/linus/a70b52ec1aaeaf60f4739edb1b422827cb6f3893 (v3.5-rc1)

>> vfs: make AIO use the proper rw_verify_area() area helpers

>> We had for some reason overlooked the AIO interface, and it didn't use
>> the proper rw_verify_area() helper function that checks (for example)
>> mandatory locking on the file, and that the size of the access doesn't
>> cause us to overflow the provided offset limits etc.

Use CVE-2012-6701.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJW1xpIAAoJEL54rhJi8gl54+gP/3xs5oGqviUpGoHB48CvNPoS
KGbJaCaOxh7eIaGE3m5igl3qV8oyCHjWdzz8QzC3nxDvzjafbDIOupIa+qo1tBUb
iwdcLROQQSLH0D+8zq7Oe5R67DfrG324TFNyCk04qbf2wezcRn/LCibtr3U4KWTo
8164s6WfTAToIRUauu4r+4DXvtgyEQnRHOaJ42eUP9CJKdyB9GO0hV6IxI1RKBqr
GA8kgdJC2cEPQUrvNzmEdlLPsUmbd8BaQWzokG97B6bsPhIFBeNmblhF/LKbi2CH
+TMxgxROXUsiNfG8KC9QzB+7AjoAy6Krp6uUIeMRcoz4uIi9cUhukzz2qGDfboMf
jXeS5qMq2bM+8VwXT+ywtqFBox/OKrE4C7raXFloRuwBaw7sxdAUJzVfDvH6BjIm
BC/wobWPub6R9aUZuj2o7LExonJSRNJgQkeouzq3IPOwTUwDqI3/p+R3v7xkaeVE
h4LbAWqrHXcRdEk+mevUJRSvlB0lECzV7AZ5kEkzI+nxfjdl9hYv+5pNjSUuX5dY
VbZXrmpeyLpxWLi71JKxEpEru6ur2M0iL4RFt1jp6V3VX0L/zoxUkQBiOwsizklW
vwgWPxbFdB6w5V4VJleOMwNBsknncGwgvVAW7Vlk5T0jKWQN5bpOrhmfViQba/59
/cclvsCg9+nqVesGsKd8
=0V4z
-----END PGP SIGNATURE-----
