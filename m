X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2356" "Monday" "22" "August" "2016" "02:51:07" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160822065107.12D721BE0E5@smtpvbsrv1.mitre.org>" "55" "[oss-security] Re: Path traversal vulnerability in WordPress Core Ajax handlers" nil nil nil "8" "2016082206:51:07" "[oss-security] Re: Path traversal vulnerability in WordPress Core Ajax handlers" (number mark "U       cve-assign@m Aug 22   55/2356  " thread-indent "\"[oss-security] Re: Path traversal vulnerability in WordPress Core Ajax handlers\"\n") "<cc5ec17a-0cae-f262-b865-243d67045ef9@securify.nl>" ("<cc5ec17a-0cae-f262-b865-243d67045ef9@securify.nl>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26275 invoked by uid 550); 22 Aug 2016 06:51:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26254 invoked from network); 22 Aug 2016 06:51:19 -0000
From: cve-assign@mitre.org
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
In-Reply-To: <cc5ec17a-0cae-f262-b865-243d67045ef9@securify.nl>
Message-Id: <20160822065107.12D721BE0E5@smtpvbsrv1.mitre.org>
Date: Mon, 22 Aug 2016 02:51:07 -0400 (EDT)
Subject: [oss-security] Re: Path traversal vulnerability in WordPress Core Ajax handlers

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://sumofpwn.nl/advisory/2016/path_traversal_vulnerability_in_wordpress_core_ajax_handlers.html
> https://core.trac.wordpress.org/ticket/37490

> A path traversal vulnerability was found in the Core Ajax handlers of
> the WordPress Admin API. This issue can (potentially) be used by an
> authenticated user (Subscriber) to create a denial of service condition
> of an affected WordPress site.
> 
> OVE-20160712-0036

>> allows for a denial of service condition as the logged in attacker can
>> use this flaw to read up to 8 KB of data from /dev/random. Doing this
>> repeatedly will deplete the entropy pool, which causes /dev/random to
>> block; blocking the PHP scripts. Using a very simple script, it is
>> possible for an authenticated user (Subscriber) to bring down a
>> WordPress site. It is also possible to trigger this issue via
>> Cross-Site Request Forgery as the nonce check is done too late in this
>> case.

>> wp-admin/admin-ajax.php

>> plugin=../../../../../../../../../../dev/random&action=update-plugin

>> WordPress version 4.6 mitigates this vulnerability by moving the CSRF
>> check to the top of the affected method(s).

Use CVE-2016-6896 for the directory traversal vulnerability, and
CVE-2016-6897 for the CSRF. (These two vulnerabilities have different
affected versions.)

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXuqCFAAoJEHb/MwWLVhi2OjkP/0xA4Oj1fAED71fR5c2zMtg4
fFuRRrbSltEIpWbLFi4vg7VAkOhYOqH6LbDPtehXDrZxJ5AFX7ifYyjprvxSLYvn
STcG7ve521b+tPy+0GzdlrHpGRbk81Ekh57Gny9rXEym0msdWJD/zaDV0poJbdEV
E76DEZuZ4eq1XoBQ6FsTvRFinsA7tCB5LjmCa+lZuG9xf4AYFDlMAUJu7I+/uxGO
Ep/CUqYwASjZ50IYBwhbk138PbjEw1iZmcYytlkifACRk9GNmkb2ctt4QKoCIWml
HPY6BnB26CKDGk490MPjLg6+jkAA1v+bTBru5dSMoLw3icAWfHefW/P5yH0S/HoX
eU/RIaaxovd4fkKfzz8lBhWkARGPZrPUGyOIpvaLLgMPLF10xcBraJ32ygrPNndy
ph418Yr4ZCraR9Tdg/EBZlS6Dlhztr16I+Z1FzXIyVemkxafYNAqhqJXUYgx9TFw
IgS7Isk4+2XJQU0u76lIEFGBHsHV2j9tif6lu1ZsrZDKG2OhI09+KHW1wp8gTQKG
QxlbBcl/sD4NBLm58vwdvLm9lMCxc6vv9jdK5hhfz4ATWHSsjTi1O6DC787qCfqW
pnOjNghR3stX7DxzDQmMVFB30OaGMHQ5PGVk5CgK4SmBJuwtxYOBFK919f4KPmz6
8ZrtIoD+v972q+r5kaMU
=WwXr
-----END PGP SIGNATURE-----
