X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1369" "Tuesday" "7" "February" "2017" "20:12:24" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<3e64c619103643dbb1b3ea622b3fa4c6@imshyb02.MITRE.ORG>" "35" "[oss-security] Re: CVE request: PostfixAdmin allows to delete protected aliases" nil nil nil "2" "2017020801:12:24" "[oss-security] Re: CVE request: PostfixAdmin allows to delete protected aliases" (number mark "U       cve-assign@m Feb  7   35/1369  " thread-indent "\"[oss-security] Re: CVE request: PostfixAdmin allows to delete protected aliases\"\n") "<6796510.KACISFJ7AR@tux.boltz.de.vu>" ("<6796510.KACISFJ7AR@tux.boltz.de.vu>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30502 invoked by uid 550); 8 Feb 2017 01:12:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30484 invoked from network); 8 Feb 2017 01:12:37 -0000
From: <cve-assign@mitre.org>
To: <oss-security@cboltz.de>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <6796510.KACISFJ7AR@tux.boltz.de.vu>
Message-ID: <3e64c619103643dbb1b3ea622b3fa4c6@imshyb02.MITRE.ORG>
Date: Tue, 7 Feb 2017 20:12:24 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request: PostfixAdmin allows to delete protected aliases

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://github.com/postfixadmin/postfixadmin/pull/23
> 
> Thanks to a missing permission check, domain admins can delete aliases
> they are not allowed to delete (for example abuse@, which the server
> admin might have setup so that he gets all abuse mails).

>> Fix security hole in AliasHandler

Use CVE-2017-5930.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYmm+uAAoJEHb/MwWLVhi2PnsQALB+ZtPjFD1KdFcnEe/hPD8f
FaB3+gIRWODdVVbr3Z2EPX8QSI0ZxfG0IN1oVqv6WTp4ikJZ0uzHqguA8ldBYaJH
ThkW2H9ay+72KaWXG3tc/JM51q6ybxlNSNehaXcBoLbYxFbo4A6FxCXO7q1nt+Ou
0mPpZXxWnrNcpMyk0xRMyHvZZ6vuor9o/qLFKWaKOdptXqzRjBCU21qtntLVByoQ
/VJeLbZj27ixHKjmqsZjChYb49JpV4y2Q7banoSEUJbatDWSv1pvXkYwBjsyxj5a
3xIoIEGCxRk4k05egyn1gaPEUb7ZRroxYbnAq29vVAPx3XyKLRR6NJVV90HlrN2W
Qw1ueNlVgdkBM17dZM5ODc9a8J0kjN95aCwWnKqQcU7rOhCM0zjpdjueHLVI3aJu
vEFut6s/6GKT2oH+AdXODr7AeoUHhA0MYfJ+7g9TEFSwar09Tu9eV1mSYbN6eyUb
oS3fWGEA2CthacUg5arw/egSrQik3wLH+vkbepqQpgIkceYQQp9GYNaPUEdohFhN
/tDGfNwnY0JtpCJE4tHvAQEbD2z2M9bK8U/m+rtaWJfoH+7e2qSUOV+aoAmzYQRw
8dPdrIQWI302HNJma8L8yJevyJ/6lIvG3tNNVwnJogKNjn7QMVMy39ZfU8o7q7eK
BVNqH7trlLm8k6yp2nHY
=zNk8
-----END PGP SIGNATURE-----
