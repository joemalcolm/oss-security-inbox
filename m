X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1471" "Wednesday" "6" "July" "2016" "07:03:53" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160706110353.A6EF56C0CFF@smtpvmsrv1.mitre.org>" "38" "[oss-security] Re: Malicious primary DNS servers can crash secondaries" "^Cc:" nil nil "7" "2016070611:03:53" "[oss-security] Re: Malicious primary DNS servers can crash secondaries" (number mark "        cve-assign@m Jul  6   38/1471  " thread-indent "\"[oss-security] Re: Malicious primary DNS servers can crash secondaries\"\n") "<03907aa5-5c2d-8bac-9053-7130e3159d62@redhat.com>" ("<03907aa5-5c2d-8bac-9053-7130e3159d62@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12204 invoked by uid 550); 6 Jul 2016 11:04:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12186 invoked from network); 6 Jul 2016 11:04:05 -0000
In-Reply-To: <03907aa5-5c2d-8bac-9053-7130e3159d62@redhat.com>
Message-Id: <20160706110353.A6EF56C0CFF@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed,  6 Jul 2016 07:03:53 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Malicious primary DNS servers can crash secondaries
To: fweimer@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://lists.dns-oarc.net/pipermail/dns-operations/2016-July/015058.html
> 
> BIND 9, knot DNS and Power
> DNS slave servers received unlimited zone information and died.
> NSD slave DNS server received unlimited zone data and /tmp became full.

For consistency, it seems best to provide all of the CVE IDs together:

BIND 9:    CVE-2016-6170
Knot DNS:  CVE-2016-6171
PowerDNS:  CVE-2016-6172
NSD:       CVE-2016-6173

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXfOSvAAoJEHb/MwWLVhi2D40P/Re3q1hB5fMa1xURAlXul+9U
FordlgC0zRFq/HuE3ZnDqpuCAmcExpp8fxClIwGKFHu0R1bfqYqnlPlsnLShpGfr
uAN2Ca0KFR/km6TYSpEXk4nRsLB23ynpB+/7+6i8SHzeVYm/T1d2RVy09jBtqzYl
gCcgSezWDa+CtwoF5aY7MwN5esYu54tPgGX6bvI8RnMhzg8hC+vF3btspcwMQyli
uA4/mbZKwQgxiXbDdfKeHcDrnpcaWSBEQtEwSEr3QYnEve3AeUCnxRDMqAYUCWy1
fgPO5ZEWRjzSjXKFvTucupgVMGWjHFReWRqL+K9E4Lw3PtGeeKs1L0gIfizcbWrE
H3CGmIomD6mBqxg5LaQeYVGWikG6Xym11J+IIP3Y8FV3UkWpdEhA3dk3HSGmYHh+
PUwFYHcQUfuIkqYR6B3XnaYOa0VBIqhV34ECKY9TQF54oFaEVt1hMj5zrPIFS5ML
y2z+HsvhGYYwEydwvE110n5BR0cJKtELwAHT/YHPh62Fd+j5K7zaayaQvoccIE6Q
C75Ez05wugIZUmuRMWcEc4HZ2Ak88Mcc3ke92WSR6dA6o30ZRSXN71F92aAVUuzZ
vH6e6yJO+lRxpC1xTRiQglgn5sANOWCsW5R8+ZgYG/K7Hc1h+7RTkAux+qn52Bch
kp4BKN3bOsKMC/RXfK4X
=R3BK
-----END PGP SIGNATURE-----
