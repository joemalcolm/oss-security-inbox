X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1606" "Wednesday" "27" "July" "2016" "11:47:46" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160727154746.8942C6C1043@smtpvmsrv1.mitre.org>" "40" "[oss-security] Re: CVE Request: DBD-mysql: use-after-free in mysql_dr_error" nil nil nil "7" "2016072715:47:46" "[oss-security] Re: CVE Request: DBD-mysql: use-after-free in mysql_dr_error" (number mark "U       cve-assign@m Jul 27   40/1606  " thread-indent "\"[oss-security] Re: CVE Request: DBD-mysql: use-after-free in mysql_dr_error\"\n") "<20160727150525.GA9279@eldamar.local>" ("<20160727150525.GA9279@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9413 invoked by uid 550); 27 Jul 2016 15:47:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9392 invoked from network); 27 Jul 2016 15:47:58 -0000
From: cve-assign@mitre.org
To: carnil@debian.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20160727150525.GA9279@eldamar.local>
Message-Id: <20160727154746.8942C6C1043@smtpvmsrv1.mitre.org>
Date: Wed, 27 Jul 2016 11:47:46 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: DBD-mysql: use-after-free in mysql_dr_error

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://github.com/perl5-dbi/DBD-mysql/pull/27
> https://github.com/perl5-dbi/DBD-mysql/commit/a56ae87a4c1c1fead7d09c3653905841ccccf1cc
> https://rt.cpan.org/Public/Bug/Display.html?id=97625

>> https://rt.cpan.org/Public/Bug/Display.html?id=97625#txn-1393444

>> The big problem with lost connections is that business logic wants to
>> keep reporting errors to a file in case of lost server connections.
>> This is related to RT #85919, though the root cause is this use-after
>> free here.

>> AddressSanitizer: heap-use-after-free

Use CVE-2014-9906.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXmNb9AAoJEHb/MwWLVhi2xlMQAK+b8lwVuQoS2/h2oq8BEQ2Y
UQdhvmjnJimPcYAsRxW16QTRAMMDalk/JWy52Z9RrQawxtnBTstug/hjG9oFGBI9
jnBVlkD/x02u6XKau7cbbuVJNj3bDB6vH5nd/nmNOVphANn5QfUqRsARmW3PH7KK
0rtfvkQtv8DSvZlmAubbQNu3puGdZgxEyai9PWDxPMvih822s5qARfjKVz1N1D+n
waFrLdPtt3msWsdVWpuezvIzLo219YQzjSJ8dOg0RDnFn3WVXOkV2SKC0JIrZG02
/JDhfZnVk8MxIKPHYrCtqOEdWqyvt2UEhWuyA272aotuB1zXw4CYNL3AfS49lOos
WM/at9hwoDI7KQvI2Px4vfP0oinZplcGwxmW7IATI3hoDi6jPq3KbU/MVU1ifCfV
swJvgD5FHJJUW0y5C7C8Wak9EgQ6B2aQUXwalKBGgQgAwkmuc1gXenKMWv6OLYRe
xdKYpIdDnU7fxQQjwyPPQs5TVy1MPGqBuGCIL1E9xeKDMR92PqUb6i8bRxMY5bkt
lFEZiEMh3OJ9JLL6x6gzLZFs3XOtmYUBRGG8JxBOpPjX0tjZsFUogBS3/CAOpsuZ
Gzptk7MXfukP3AqC2D5ruGeDp8pF5TPPUhFhwcl51eQBZiIIcOr6tB8ZC7xHwxeh
5jAxK3akfvVbLAjehOMP
=Daax
-----END PGP SIGNATURE-----
