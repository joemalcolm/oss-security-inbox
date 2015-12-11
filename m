X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1889" "Friday" "11" "December" "2015" "11:41:18" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151211164118.344948BC165@smtpvmsrv1.mitre.org>" "52" "[oss-security] Re: CVE request - Android kernel - IPv6 connect cause a denial of service" nil nil nil "12" "2015121116:41:18" "[oss-security] Re: CVE request - Android kernel - IPv6 connect cause a denial of service" (number mark "U       cve-assign@m Dec 11   52/1889  " thread-indent "\"[oss-security] Re: CVE request - Android kernel - IPv6 connect cause a denial of service\"\n") "<2166DED8C457614D95A6AAC18B144F082B530E@EX02.corp.qihoo.net>" ("<2166DED8C457614D95A6AAC18B144F082B530E@EX02.corp.qihoo.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29968 invoked by uid 550); 11 Dec 2015 16:41:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29949 invoked from network); 11 Dec 2015 16:41:29 -0000
From: cve-assign@mitre.org
To: guoyonggang@360.cn
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <2166DED8C457614D95A6AAC18B144F082B530E@EX02.corp.qihoo.net>
Message-Id: <20151211164118.344948BC165@smtpvmsrv1.mitre.org>
Date: Fri, 11 Dec 2015 11:41:18 -0500 (EST)
Subject: [oss-security] Re: CVE request - Android kernel - IPv6 connect cause a denial of service

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> net/ipv4/af_inet.c
> inet_autobind
>
> if (sk->sk_prot->get_port(sk, 0)) {

>> if the sk->sk_prot->get_port is NULL

>> [ an unanticipated condition ]

>> Solution:
>> if (sk->sk_prot->get_port &&sk->sk_prot->get_port(sk, 0)) {

>>> From: Hannes Frederic Sowa <hannes@stressinduktion.org>
>>> Date: Wed, 9 Dec 2015 15:31:32 +0100

>>> I fear your solution
>>> just papers over the bug and will leave the port in a half initialized
>>> state.

Use CVE-2015-8543 for the originally identified bug. We realize that,
for example,
http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/log/net/ipv4/af_inet.c
has not yet been changed. If Linux kernel developers determine that
multiple independent bugs result in situations where
sk->sk_prot->get_port is NULL above, then it is possible that
additional CVE IDs will be assigned later.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWavwyAAoJEL54rhJi8gl5YFsQAI5IxqeR4wGC8jgddurgDQMC
Ex3f5QsouQMuDD6KUGDy+pfl+oFzT6Y0qj4gE61iIhRUgvU5S6lSa0zBk29hQNDB
smoFCcgd0gqQMwA4ruCQqDA0tGVKdJTvqUb8vkwnU5cQ+6Qi71Qodo9tQxCNiA/U
SLoC4F2AQg/yMMrLhiWiRIg9H/9aLwLeETHfwqRe5wgoGombqiZ/zHn3kO9zvnXx
MFkDmdmjfwUhvtGzxRVOdMl+lDaOij/iehjffqXbwZM8hImHdy8XX/sI4SuZ5HrR
YD40VROb2ZnEXyGuEVW4QoTppelzXNjl008yW3ysagBPIiufRLRMiZ8Oikr5nOn7
Y9Tzftj859V1P4dldk5aB68zWhRiUX6rila45bzz6KgawdEihAldSkvN6zlRX3KD
WVny3XkTmTqItIN9rcT/HOQYBFRfrreU3tz93/w6AZamgKb4Op5gQdFzbRbLBUcP
8PwY1kGEY+MfqgQEFMyy9NP6AdMQBXrTce/Y+xfUWbTM48ordg33+F5nRgx/WPGU
Y7RijZCJcZPd8qi0jkj4Zp1MmRsmWsxssa6zDGsxHC46GiQhfP9OmndYloO/ze4x
jmZ2eALLw2Rta95VM/2upsYIC3YaShz3D7rU563aHuAusbTinkjCyFP0xKkRJDf5
NwVV5z0ou6GVCbxunTbb
=KMi2
-----END PGP SIGNATURE-----
