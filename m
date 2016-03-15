X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1347" "Tuesday" "15" "March" "2016" "19:40:36" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160315234036.61BDBB2E19E@smtpvbsrv1.mitre.org>" "40" "[oss-security] Re: please assign CVE for cacti bug 2667: SQL Injection Vulnerability" nil nil nil "3" "2016031523:40:36" "[oss-security] Re: please assign CVE for cacti bug 2667: SQL Injection Vulnerability" (number mark "U       cve-assign@m Mar 15   40/1347  " thread-indent "\"[oss-security] Re: please assign CVE for cacti bug 2667: SQL Injection Vulnerability\"\n") "<56E19B88.3000908@debian.org>" ("<56E19B88.3000908@debian.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29846 invoked by uid 550); 15 Mar 2016 23:41:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29823 invoked from network); 15 Mar 2016 23:41:24 -0000
From: cve-assign@mitre.org
To: elbrus@debian.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <56E19B88.3000908@debian.org>
Message-Id: <20160315234036.61BDBB2E19E@smtpvbsrv1.mitre.org>
Date: Tue, 15 Mar 2016 19:40:36 -0400 (EDT)
Subject: [oss-security] Re: please assign CVE for cacti bug 2667: SQL Injection Vulnerability

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> http://bugs.cacti.net/view.php?id=2667
> 
> case TREE_ITEM_TYPE_HEADER:
> 
> where id=" . $_GET["parent_id"]);

> POC && EXP
> /tree.php?action=item_edit&tree_id=2&parent_id=8%20and%20sleep(1)

>> tree.php
>> 
>> +  input_validate_input_number(get_request_var("parent_id"));

Use CVE-2016-3172.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJW6J0SAAoJEL54rhJi8gl5wSMQAKCXHxaRSnS5tv4i/uuP5VgQ
SCXTR1VCtGN+L40tk9PTdMZCOQVbztdlWApRJd9pQByKHL1uCO1msyR7JowOsMFk
7lQGhOT5n1xlaAmEwXzlGGflFU7/CNUNYn8ywR8vTYR8KMCuVTqACGU+KhokzHao
1d9RG/rdTS/n5dPCa/IQfyGq8+eaYM972FrwqWjYHUPRVVF3/AYPwv6bhgdYFUwA
gmy70yIs9OYS+AZskqd1ViYwyqkrvh1A9SH9lM+g5oGVj74bXXqR35iRml86njr8
+cD8hpI9ngcz2J+XYEiQFNr1uTGhPCWHrAgkvEvAp521VFegJN/Lp84It1Nfq80P
URK6fu9FC7K5lEseiIK4rcge3ETcDqi8dSmgRODLtUz5WKOBOfIBRT1oJFOHNH70
FRyjLXSIEGVFb/oL7bkpffsucI4DLq0BpYGGex2wGT+puts6OGKdThKbSWlOxRDJ
vUaWf5XospQa9rdSxOzVk5qh4hXx23v02hS3+rvmoznFHvaOFhMKaBVso1ZA3dSx
MlBVVNBQzVXm+iFr/DgWOilFy5x06KtkmzrImItPJwSANwTr2/txA+z+sdE7liiA
SDP/WUSadyPCBtdylQcq6AS8GH6/I3Wqx5/iz87Ou7UlkUjGXa+LNbPFKRd903/w
dnhgQ7X5YlApn7+ywcfE
=6K3M
-----END PGP SIGNATURE-----
