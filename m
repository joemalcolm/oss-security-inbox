X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1745" "Wednesday" "16" "March" "2016" "16:42:30" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160316204230.64F63B2E03F@smtpvbsrv1.mitre.org>" "48" "[oss-security] Re: CVE Request: PHP last release security issues" "^Cc:" nil nil "3" "2016031620:42:30" "[oss-security] Re: CVE Request: PHP last release security issues" (number mark "        cve-assign@m Mar 16   48/1745  " thread-indent "\"[oss-security] Re: CVE Request: PHP last release security issues\"\n") "<20160310094228.GD4470@suse.de>" ("<20160310094228.GD4470@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3861 invoked by uid 550); 16 Mar 2016 20:42:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3829 invoked from network); 16 Mar 2016 20:42:57 -0000
In-Reply-To: <20160310094228.GD4470@suse.de>
Message-Id: <20160316204230.64F63B2E03F@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, security@php.net
Date: Wed, 16 Mar 2016 16:42:30 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: PHP last release security issues
To: meissner@suse.de

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://bugs.php.net/bug.php?id=71610

>> Type Confusion Vulnerability - SOAP / make_http_soap_request()

>> Due to an insufficient validation of the cookies field when making SOAP http request

>> https://github.com/php/php-src/blob/master/ext/soap/php_http.c

>> There is lack of validation of 2nd/3rd elements in cookies array.
>>
>> and a type confusion occurs when they are no longer string.

>> [2016-02-22 07:48 UTC] stas@php.net
>> Fix added to security repo as eaf4e77190d402ea014207e9a7d5da1a4f3727ba

> https://git.php.net/?p=php-src.git;a=commit;h=eaf4e77190d402ea014207e9a7d5da1a4f3727ba

>> + Z_TYPE_P(tmp) != IS_STRING ||

>> + Z_TYPE_P(tmp) != IS_STRING ||

Use CVE-2016-3185.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJW6cSpAAoJEL54rhJi8gl52JoP/iUez71uL5TXvf0ai43DamFe
SeZ1FX93kZDkAtfgwrxif3IAXEuX0HlSJeLyuJx2pYDU4GzNEJlT7a+vUm5RK5Nt
EoJRHI30Wpn6JB7UsV4SkYt0ZyRUjGS3849BuepBAAENyNkKhu0dyrbDXVvmfiVJ
ELrFg+mNgAhRd5zsBhM63BaExC6a80gpahv/AN75Rz6qU5d8DDx4Q2c7dchme1sT
mXz9cThT5Zs4kLo9T88QBd3jmsOwVZFqEsBkLCQBBrjNEZoCJlg+G8WAvaKPzPoh
kV4Ni5qLI+ioW9eEVQQaSMZOYlOcPinqkDIKHk/1ileoTFrd97hKeEjHKwfjT2HT
2vH3MAiE/yfGEpwqu+RPGPkvcKwo3js+djKOmA6d/jMwSf0ksw+MtJye0CcoEYNn
iqgIJJgLGokzZ3qalJNXtGSDfxKwyYFpPTYGjLF8YERMFWfOWoNxetgJeT0Zc3pG
4fz7Gz6MBUnl3eyFICw5bUtz2/kf9RddfzX5YZh2LytSCij+vvkBM4k2xAVFT8+T
HJY6Ed3X+CGpwGTtd4aWdDRQk3R88xJ0kd1WO8bfFmAW+1zo2iRavYT7loZN1ErV
KmLpeig/zoog/1yaQQwva43mNVaybTG7NYXbIxQCeohSbm8j5Rd7HbMfpN3WCPfm
7CpwiKmNIpRcXm7hh1+n
=bWUM
-----END PGP SIGNATURE-----
