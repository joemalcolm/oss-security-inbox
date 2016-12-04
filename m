X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1671" "Sunday" "4" "December" "2016" "14:45:58" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<d6489feaae484961a1302537b90f6bf7@imshyb02.MITRE.ORG>" "42" "[oss-security] Re: CVE Request: -- Linux kernel: double free in netlink_dump" nil nil nil "12" "2016120419:45:58" "[oss-security] Re: CVE Request: -- Linux kernel: double free in netlink_dump" (number mark "U       cve-assign@m Dec  4   42/1671  " thread-indent "\"[oss-security] Re: CVE Request: -- Linux kernel: double free in netlink_dump\"\n") "<a4156d1d-7f4c-d5ea-0687-3dd6d9ace541@gmail.com>" ("<a4156d1d-7f4c-d5ea-0687-3dd6d9ace541@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32738 invoked by uid 550); 4 Dec 2016 19:46:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32720 invoked from network); 4 Dec 2016 19:46:10 -0000
From: <cve-assign@mitre.org>
To: <sploving1@gmail.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<herbert@gondor.apana.org.au>
In-Reply-To: <a4156d1d-7f4c-d5ea-0687-3dd6d9ace541@gmail.com>
Message-ID: <d6489feaae484961a1302537b90f6bf7@imshyb02.MITRE.ORG>
Date: Sun, 4 Dec 2016 14:45:58 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE Request: -- Linux kernel: double free in netlink_dump

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> A double free vulnerability was found in netlink_dump, which could
> cause a denial of service or possibly other unspecified impact.

> http://lists.openwall.net/netdev/2016/05/15/69
> https://github.com/torvalds/linux/commit/92964c79b357efd980812c4de5c1fd2ec8bb5520

>> netlink: Fix dump skb leak/double free

>> When we free cb->skb after a dump, we do it after releasing the
>> lock.  This means that a new dump could have started in the time
>> being and we'll end up freeing their skb instead of ours.
>> 
>> This patch saves the skb and module before we unlock so we free
>> the right memory.

Use CVE-2016-9806.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYRHFwAAoJEHb/MwWLVhi2hsAP/3lgM/3+LJHUfJISIWERrGgO
U3X5tyJ7F/HE85fmpMTq1mJxS0pgfswpozEBTwMT/oVOjWNRh0lppMlZegR+yAdr
Whz/xJToSf0I/QRz2AviGtHkGDs3+SeJcVsWQbIh/WGbUpwyy8IdF3WVni+8fNUY
zIhNzdZ8XZCAEl8ZLcvFl7v1SH+t4zfiTMZX9Qalpp6fJ4oNjJlQjY/jrojQ527k
NbM7JGV3UHb+rLLaPBnykTYQ1Kip3KYEZTD26kyI1XbUlTYfjzGQ8Tfx9x+EzDnE
22Fa5aib+I/AkAW0JbPihPBlDEcXGQWMbFTIvPkfqiCjVCO2QWb+WdSJ5F/QBy1F
kPoXsJy++XNjcrtg436KR5jH3wQdUC1zwzmd9SC8QonA7ZQazxDU/vs740o5hray
DQq1Ca/ZqQp5iO8phPhEiVCOGsqwArhaQ0LuR0ZcpaFKXRP/oa5s4xxgUDsq41JZ
4W3K28o5nS3nlMaz/ekolxIhbtJYu7e6xey+YDpno6xYfTbx2mdpl3U1ICB+fSrt
i+H2NKmv4/sEpXQLEh5byJKx0RPCfU+alRfWBeyEU6lcHtmwtvks/V5ttK6OMVRQ
FSZwcRrv2QmEwTqM104umTdUFp+0+3pY4iHwtCLZ5EARp/04UhVtIH3mNScnYn9S
UPX/llj6prAyQ63BQEKg
=Yz/R
-----END PGP SIGNATURE-----
