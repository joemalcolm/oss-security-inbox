X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1614" "Saturday" "5" "September" "2015" "12:11:54" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150905161154.82E526C009F@smtpvmsrv1.mitre.org>" "42" "[oss-security] Re: CVE Request Qemu: net: e1000 infinite loop issue" nil nil nil "9" "2015090516:11:54" "[oss-security] Re: CVE Request Qemu: net: e1000 infinite loop issue" (number mark "        cve-assign@m Sep  5   42/1614  " thread-indent "\"[oss-security] Re: CVE Request Qemu: net: e1000 infinite loop issue\"\n") "<alpine.LFD.2.20.1509050128380.647@wniryva>" ("<alpine.LFD.2.20.1509050128380.647@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13950 invoked by uid 550); 5 Sep 2015 16:12:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13929 invoked from network); 5 Sep 2015 16:12:06 -0000
In-Reply-To: <alpine.LFD.2.20.1509050128380.647@wniryva>
Message-Id: <20150905161154.82E526C009F@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, luodalongde@gmail.com
Date: Sat,  5 Sep 2015 12:11:54 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request Qemu: net: e1000 infinite loop issue
To: ppandit@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Qemu emulator built with the e1000 NIC emulation support is vulnerable to an
> infinite loop issue. It could occur while processing transmit descriptor data
> when sending a network packet.
> 
> A privileged user inside guest could use this flaw to crash the Qemu instance
> resulting in DoS.

> https://lists.gnu.org/archive/html/qemu-devel/2015-09/msg01199.html
> 
> [The guest can force 'bytes' to 0 by setting the hdr_len and mss
> descriptor fields to 0.

Use CVE-2015-6815.

(not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/net/e1000.c)

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJV6xP0AAoJEL54rhJi8gl5ZzIP/1DtazmDcZVyDAR0BysUdj4E
/9Jp/RYt5iKmJ7AkYNQQDZs2C6HZ4uOQ7rVcU9zVk+9Z5WmECZ8lwrD/d1FSN6kI
ZhpbyfkKxlFmMldKMRdYi+I/WUXYfLGiE99KiB0OaSMlH8DzWJmNDlnEAc250enO
AQkMs7S5qLlZ0nGn0wFNIsw0mgLMNu+L62zvZ37FhISJrMdjgToNFkKMs6AjVgvB
AsgoCsjO3V9Pxtu8RQ61iX4C33FbQv5DbYv6M+0IBffkpEb8j8nzeYwGBUFIdAfM
+TEGMUqY5rMLRArvf+Dern5M9RuK/NUl/xtpyy1HpQJl00JAmo8xRd2H7tjQlV9y
tWB1zhSKU6Ilr0YRPv6ZQ0I7nBoB0BiaslpObVSyKckmxOGPb6FB0UXgF/fuUBKQ
AIOsKLdxmqqpNIwlL9jwNOURMNVlEelJqkwfoXJRk2ri8AXuJsoDQgodhTv59lBK
HDWw2+jP12PwDDpvxHbPR1HmyeRVJBuXty73AXHki1gCtjdBYLyX6zoEMiFo56Gp
mwmTK9IyavHxeLpkCop8XRVsKiI2JvLucXW2Epjw2DbkoaKVDyJUP7IGJAgHQdD6
nQcT4rm37YvPG1Zgbo5Hvvtr1qe7WlLqujTFduSVqC5LCo/3JzoqKFakjII0zhzz
Za83YKAaEH3eFasIiUrO
=8f0T
-----END PGP SIGNATURE-----
