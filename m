X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1083" "Friday" "17" "April" "2015" "16:39:57" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150417203957.A1C81132F27E@smtpvbsrv1.mitre.org>" "29" "[oss-security] Re: [CVE Request] Multiple vulnerabilities in PHP's Phar handling" nil nil nil "4" "2015041720:39:57" "[oss-security] Re: [CVE Request] Multiple vulnerabilities in PHP's Phar handling" (number mark "        cve-assign@m Apr 17   29/1083  " thread-indent "\"[oss-security] Re: [CVE Request] Multiple vulnerabilities in PHP's Phar handling\"\n") "<CA+KTh2zmMqVO7g6W9Fkiy9q6ruyeD5+Bgt-mSehz0TTsxwiimw@mail.gmail.com>" ("<CA+KTh2zmMqVO7g6W9Fkiy9q6ruyeD5+Bgt-mSehz0TTsxwiimw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13756 invoked by uid 550); 17 Apr 2015 20:40:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13738 invoked from network); 17 Apr 2015 20:40:09 -0000
In-Reply-To: <CA+KTh2zmMqVO7g6W9Fkiy9q6ruyeD5+Bgt-mSehz0TTsxwiimw@mail.gmail.com>
Message-Id: <20150417203957.A1C81132F27E@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, security@php.net
Date: Fri, 17 Apr 2015 16:39:57 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: [CVE Request] Multiple vulnerabilities in PHP's Phar handling
To: emmanuel.law@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> There is a stack based buffer overflow when opening tar, zip or phar
> archives through the Phar extension. An attacker and exploit this to run
> arbitrary code.
> Affected versions: PHP < 5.6.8RC1
> Bug Report: https://bugs.php.net/bug.php?id=69441
> Patch:
> http://git.php.net/?p=php-src.git;a=commit;h=f59b67ae50064560d7bfcdb0d6a8ab284179053c

Use CVE-2015-3329.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVMW7RAAoJEKllVAevmvms5ikH/RSwRGs1lZ26NaiOjkwXWolc
1F7M3IE/s5C5/lrzWN63Y+hjta/MJfnY0S5wJDXlwpYNLAO59oDQ341/Qgd8IRK7
NfVR9Mu8dpsKpdexqw7G0/ns0p/p/Q9eJiYSqRrbJPKdFbz//SYOEV6mKkRnabFz
ShiboS53+Onia5EeFHjsN3AdUEFlQW4jsArxxsHsz8Gu5JBCAKmtEOnp5o0QD9o8
B0bliLqcUmmvlb3yPn1hPgUXZbUmdZ16ix3qE3vsFln/9Qhf3c4zT8Hsyp5fSq/C
DWlyaPRXOOj3/op+TQPdgu60DCwhpAlj1go1VPxAqO1J9nwKz6Z9f9fnxe3VAD4=
=C34M
-----END PGP SIGNATURE-----
