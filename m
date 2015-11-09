X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2512" "Monday" "9" "November" "2015" "15:47:35" "+0100" "Pieter Lexis" "pieter.lexis@powerdns.com" "<5640B207.5000803@powerdns.com>" "63" "[oss-security] PowerDNS Security Announcement 2015-03" nil nil nil "11" "2015110914:47:35" "[oss-security] PowerDNS Security Announcement 2015-03" (number mark "U       pieter.lexis Nov  9   63/2512  " thread-indent "\"[oss-security] PowerDNS Security Announcement 2015-03\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19575 invoked by uid 550); 9 Nov 2015 14:47:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19530 invoked from network); 9 Nov 2015 14:47:47 -0000
From: Pieter Lexis <pieter.lexis@powerdns.com>
To: pdns-users@mailman.powerdns.com, pdns-dev@mailman.powerdns.com,
 pdns-announce@mailman.powerdns.com, oss-security@lists.openwall.com
X-Enigmail-Draft-Status: N1210
Message-ID: <5640B207.5000803@powerdns.com>
Date: Mon, 9 Nov 2015 15:47:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: [oss-security] PowerDNS Security Announcement 2015-03

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Hello everyboby,

We'd like to make you aware of PowerDNS Security Advisory 2015-3[1].

* CVE: CVE-2015-5311
* Date: November 9th 2015
* Credit: Christian Hofstaedtler
* Affects: PowerDNS Authoritative Server 3.4.4 through 3.4.6
* Not affected: PowerDNS Authoritative Server 3.3.x and 3.4.7 and up
* Severity: High
* Impact: Degraded service or Denial of service
* Exploit: This problem can be triggered by sending specially crafted
  query packets
* Risk of system compromise: No
* Solution: Upgrade to a non-affected version
* Workaround: run the process inside the guardian or inside a supervisor

A bug was found using `afl-fuzz` in our packet parsing code. This bug,
when exploited, causes an assertion error and consequent termination
of the the `pdns_server` process, causing a Denial of Service.

When the PowerDNS Authoritative Server is run inside the guardian
(`--guardian`), or inside a supervisor like supervisord or systemd, it
will be automatically restarted, limiting the impact to a somewhat
degraded service.

PowerDNS Authoritative Server 3.4.4 - 3.4.6 are affected. No other
versions are affected. The PowerDNS Recursor is not affected.

PowerDNS Authoritative Server 3.4.7 contains a fix to this issue. A
minimal patch is available [2].

This issue is unrelated to the issues in our previous two Security
Announcements 2015-01 and 2015-02.

We'd like to thank Christian Hofstaedtler of Deduktiva GmbH for
finding and reporting this issue.

1 - https://doc.powerdns.com/md/security/powerdns-advisory-2015-03/
2 - https://downloads.powerdns.com/patches/2015-03/
- -- 
Pieter Lexis
PowerDNS.COM BV -- https://www.powerdns.com
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJWQLHwAAoJEF5QcVvy/+GnDhAP/0BnWPSx/KUM8MxYRxHytuXX
JTEwGT1V3JS0eZw8QjIe+3p4+Ek0SIMUf/d4xx/4aGh+c4mksU4HlWk7R68pu7vr
g7mtkjqmOmsbmqidmGUajbDd2Rx+10c7y3Ow2tA8bu52Xx5x7pinHrjfRd4VzoBN
mBdT1G/V4K9y9YX8bguJNl8m2GvTnSHEjZ/gCanvmDiEVMuZN2tNaGs3BLf4MOTq
RViXcyjs9p8DA4l2dH6srYE3FTA3r6lZSpC+vB+5rLHEpgIsjlPuHddJODmCTZP6
LXBmWz636GqI1K0uf2zETyIT+5FvAxlcb4b2j11PL7lrpAx9iiBYnwCmCrZoUFKd
/AwMuaz4NI9GSkd9aV8GjEI8TskTQJxufQQu7K4CSp/hcJBumW3rtjlKAUcyLeI0
jQ/odq34hR5vGS0+qJ4wwBtP3mpLQp6qbidnpWnmdBV5W2nn0FDpon2M/m9W+jdd
oPbLUWnwBY221qY8Jg7QZ+sanFeqlAt3vdE9KFQSUWoMXh0uHRYZt8fCwly9VCPJ
7M8ae/I4ak4IdTuvSdQbtzBhPlt6zacLKHrL4dUYxoU88/ukruDlsiuL2LHuyej5
roiQEBJVhduZ0xSFU/TI0X/hY7qRoj3ubEYVoYf3DOruHfPjdABX1wYStcz/LvHo
zj40IUG9DD0sYtPEtjBQ
=OUeD
-----END PGP SIGNATURE-----
