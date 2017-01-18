X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1363" "Wednesday" "18" "January" "2017" "00:57:15" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<0b70c55a935d4fcca2218cf08c4e7317@imshyb01.MITRE.ORG>" "35" "[oss-security] Re: CVE Request: php-gettext: Arbitrary code execution in select_string, ngettext and npgettext count parameter" nil nil nil "1" "2017011805:57:15" "[oss-security] Re: CVE Request: php-gettext: Arbitrary code execution in select_string, ngettext and npgettext count parameter" (number mark "U       cve-assign@m Jan 18   35/1363  " thread-indent "\"[oss-security] Re: CVE Request: php-gettext: Arbitrary code execution in select_string, ngettext and npgettext count parameter\"\n") "<20170117183420.pmc5la5zsljyzh5s@eldamar.local>" ("<20170117183420.pmc5la5zsljyzh5s@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1568 invoked by uid 550); 18 Jan 2017 05:57:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1544 invoked from network); 18 Jan 2017 05:57:27 -0000
From: <cve-assign@mitre.org>
To: <carnil@debian.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <20170117183420.pmc5la5zsljyzh5s@eldamar.local>
Message-ID: <0b70c55a935d4fcca2218cf08c4e7317@imshyb01.MITRE.ORG>
Date: Wed, 18 Jan 2017 00:57:15 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE Request: php-gettext: Arbitrary code execution in select_string, ngettext and npgettext count parameter

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://bugzilla.redhat.com/show_bug.cgi?id=1367462
> https://lwn.net/Alerts/708838/
> http://seclists.org/fulldisclosure/2016/Aug/76

>> Evaluating the plural form formula in ngettext family of calls can
>> execute arbitrary code if number is passed unsanitized from the
>> untrusted user.

Use CVE-2015-8980.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYfwJmAAoJEHb/MwWLVhi2EogP/RSoLH7GjRuEq4W4w1tSDC2o
1j//YMmSunj/52WvKBQfjk8BG/3EdJWjpFeYwiPc4d3JhDINlXN3rO1FEaYuq8wN
ldX5QaluBuPJoUvTUhF18SsQ8Y+7YEZV1uyrpsSgm+Eq8oqKp2IxjersimKDAsir
bKcnYQ3WPE7k6YS02h/cImU8dF3eH9qmDFe/xRpqvz/A8QWUG1SiW3/Mp+gsraTS
6rrPmiMoYII3mROs+hKwglCSYYBM6SPzAYAy+c247cxG6F6+X27Wb3a2MxX3kWMl
wmtXhTaJwuX1p0b5/8ic23Gwmh9phlgxqVSLqQLqVcAofma35OziN+MdwER4/9Tg
GiShgUt3j4ixWLy9PBcBtXmys63DrUZm/baBiALKPllwpwnGjfhNKtE8IKUFyCqs
rt2PcwFewQHo+ax4OSmHKjZ681zFsKXgSxl4mzoJ8YjWrybvaRJnKamy500NMLps
emwEEA1xjoHE5X2P60rRm5fROuorwa5HxT/VVwNbQVmfQ3pE5Bf7BE/tdO4HcMKC
vGzV8PxItZnx5Bu2528xEOKVcqoLVSB1kdwk6sdA6hnb/sZucsxrSHRdZUFYzI4Q
u1W/TPYK+SyowOGECxyLnXCBlrUM4WfupYUq6PNPlT5WvwQEHFP+p5UqTnyeQ6zh
wQWKw6vPjjBKc/Gw3v+z
=9cK3
-----END PGP SIGNATURE-----
