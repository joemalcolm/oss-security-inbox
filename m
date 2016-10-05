X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1643" "Tuesday" "4" "October" "2016" "22:23:22" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161005022322.18575ABC00D@smtpvmsrv1.mitre.org>" "48" "[oss-security] Re: Handful of libass issues" "^Cc:" nil nil "10" "2016100502:23:22" "[oss-security] Re: Handful of libass issues" (number mark "        cve-assign@m Oct  4   48/1643  " thread-indent "\"[oss-security] Re: Handful of libass issues\"\n") "<BE57ECE4-C327-4C99-993B-D8C96A8E6465@gmail.com>" ("<BE57ECE4-C327-4C99-993B-D8C96A8E6465@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5253 invoked by uid 550); 5 Oct 2016 02:23:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5227 invoked from network); 5 Oct 2016 02:23:33 -0000
In-Reply-To: <BE57ECE4-C327-4C99-993B-D8C96A8E6465@gmail.com>
Message-Id: <20161005022322.18575ABC00D@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue,  4 Oct 2016 22:23:22 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Handful of libass issues
To: bperry.volatile@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> One is in wrap_lines_smart()
> https://github.com/libass/libass/pull/240/commits/b72b283b936a600c730e00875d7d067bded3fc26

Use CVE-2016-7969.


> One is coeff_blur121()
> https://github.com/libass/libass/pull/240/commits/08e754612019ed84d1db0d1fc4f5798248decd75

Use CVE-2016-7970.


> The third is a huge memory allocation leading to a crash that wasn't
> fixed because a good solution is unavailable at the moment.

Use CVE-2016-7971.


> The fourth is in check_allocations()
> https://github.com/libass/libass/pull/240/commits/aa54e0b59200a994d50a346b5d7ac818ebcf2d4b

Use CVE-2016-7972.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX9GN/AAoJEHb/MwWLVhi27igP/0aqAYD3zoMNk7XowyJnZxKx
xpO94xWthIYcxmPgllTuzCWeM/vn4OLQ5rHUzWHp678mcepx46jUPqeOivFad272
rOfP31o7vOOFQ3wfEcPq4tDmSTXJ44HZEJDR0aORHdZfQzm5aV0xsUR40JVEHPTQ
+lj1TZQYVYzixrWjp1yC0x7QG/c791+9ue+pU2qeUM8XHRpg69+wCw3e4Uom/gK9
bxMI7Hzm+rJayUZG5VGdfun0/77oeh2Rl6OAcuJx+m6/EljkHJluGfy6gDmsj7qW
cG+Svo57+JWQwl9lN5tmAx6qiEOZld4IDpdwglseqDYtsOo71AMhaM5/2mh2xR07
VwxWBK59Kn+Fy6WLV7qeGwhqND6vyCxfjFalixu+HNKsqPr02vBn5UBrMY5c7WRW
u7bGmxYx6SlfhH7GvThzGOq9Ks0wLXL6A7WMI2RKG6k3+P96WQNZRW37FbE6U+gJ
c0ce2tLqD1P9NGTENjcdHzse9VhERswmt8TWV7MYzTQS9dQnZwjo6MPkQmEisbE3
jCQebWjTYXvVWu9ZkVqXCfxBtUeEWJ5gyq0fiQ/kbA0teHHD/g4KgiafU0gDmNCU
GIM3HlpBV8rNs9ZzoTXgx+wnMQaZO1eVf6fYPaBHVEAzfsD8IQb81GBV7QsR3u4Z
QkSgtZKJ3TCUPgi/hxwY
=msJI
-----END PGP SIGNATURE-----
