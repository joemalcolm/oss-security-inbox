X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1511" "Friday" "22" "May" "2015" "15:04:05" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150522190405.D4E026FC00C@smtpvmsrv1.mitre.org>" "37" "[oss-security] Re: Wordpress Roomcloud plugin v1.1(rev @1115307) XSS vulnerability" nil nil nil "5" "2015052219:04:05" "[oss-security] Re: Wordpress Roomcloud plugin v1.1(rev @1115307) XSS vulnerability" (number mark "        cve-assign@m May 22   37/1511  " thread-indent "\"[oss-security] Re: Wordpress Roomcloud plugin v1.1(rev @1115307) XSS vulnerability\"\n") "<CAARZ5vpRu9sgev=p9M+zbxagBjbGRWBHrA-yUO9a2V7vpyVfRA@mail.gmail.com>" ("<CAARZ5vpRu9sgev=p9M+zbxagBjbGRWBHrA-yUO9a2V7vpyVfRA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9534 invoked by uid 550); 22 May 2015 19:04:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9491 invoked from network); 22 May 2015 19:04:17 -0000
In-Reply-To: <CAARZ5vpRu9sgev=p9M+zbxagBjbGRWBHrA-yUO9a2V7vpyVfRA@mail.gmail.com>
Message-Id: <20150522190405.D4E026FC00C@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Fri, 22 May 2015 15:04:05 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Wordpress Roomcloud plugin v1.1(rev @1115307) XSS vulnerability
To: venkatesh.nitin@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> http://seclists.org/fulldisclosure/2015/May/40
> https://plugins.trac.wordpress.org/changeset/1117499

> # Affected Versions: Tested on v1.1 (revision @1115307)
> # Fixed Version: v1.1 (revision @1117499)

(The https://wordpress.org/plugins/roomcloud/changelog/ page does not
currently list this issue. Note that a download labeled 1.1 could
potentially be either a vulnerable version or a fixed version.)

> Unsantized POST parameters are susceptible to XSS in the roomcloud.php file
> viz., (1)pin, (2)start_day, (3)start_month, (4)start_year, (5)end_day,
> (6)end_month, (7)end_year, (8)lang, (9)adults, (10)children

The implication seems to be that potential hotel guests, who obviously
do not have administrative access to the hotel web site, can make the
POST request. Use CVE-2015-3904.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVX30nAAoJEKllVAevmvms6Q8H/0pXtn2l5nEy3dTh1S3YH7xD
capTFDit0z8L4SzFR4BrJx0YEpEgOujsZdLRZkJzZbT3gw3Sgk3H3sELl82DHu3Q
oHx+K+Gg3MptO+yVinivPkWyKdGn63UxVKwCX58nU3JA7b3FHnxlyRiC/wihyxyx
KBu0RZ+3gW9+jiJTyLs00SJ/NTAG+HjivhBbMqUP+suOvExhlnNgF1EUeB5LftGF
LppAP17wYYKvy1m+upk+JdlmzBA4K7uxPpklkfSXdcQbOxN7GnNrBB31uzFrff88
6P8AMpwGJOscJ3VjTnI7XIyzyn2I9sWCd5y1FhIexyMse73rJt+aGjMQZGYKf/w=
=WA80
-----END PGP SIGNATURE-----
