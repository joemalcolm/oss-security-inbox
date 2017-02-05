X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1760" "Saturday" "4" "February" "2017" "21:32:29" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<69c817560b7e40d0995ab6ed8b2e8f32@imshyb01.MITRE.ORG>" "67" "[oss-security] Re: [FOXMOLE SA 2016-07-05] ZoneMinder - Multiple Issues" nil nil nil "2" "2017020502:32:29" "[oss-security] Re: [FOXMOLE SA 2016-07-05] ZoneMinder - Multiple Issues" (number mark "U       cve-assign@m Feb  4   67/1760  " thread-indent "\"[oss-security] Re: [FOXMOLE SA 2016-07-05] ZoneMinder - Multiple Issues\"\n") "<ad74ed31-dcff-24b7-ae84-2421ad10b7ef@foxmole.com>" ("<ad74ed31-dcff-24b7-ae84-2421ad10b7ef@foxmole.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25828 invoked by uid 550); 5 Feb 2017 02:32:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25796 invoked from network); 5 Feb 2017 02:32:41 -0000
From: <cve-assign@mitre.org>
To: <advisories@foxmole.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <ad74ed31-dcff-24b7-ae84-2421ad10b7ef@foxmole.com>
Message-ID: <69c817560b7e40d0995ab6ed8b2e8f32@imshyb01.MITRE.ORG>
Date: Sat, 4 Feb 2017 21:32:29 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: [FOXMOLE SA 2016-07-05] ZoneMinder - Multiple Issues

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://www.foxmole.com/advisories/foxmole-2016-07-05.txt
> The following findings are only examples there are quite more.

> 1)Cross Site Scripting (XSS)

> [] index.php?view=request&
> request=log&
> task=download&
> key=a9fef1f4&
> format=[XSS]

Use CVE-2016-10201.


> [] index.php/[XSS]

Use CVE-2016-10202.


> [] Creating a new monitor using [XSS in] the name

Use CVE-2016-10203.


> [] 2)SQL Injection
> Parameter: limit (POST)

Use CVE-2016-10204.


> [] 3)Session Fixation
> After a successful authentication the Session Cookie ZMSESSID remains the same.

Use CVE-2016-10205.


> [] 4)No CSRF Protection
> A possible CSRF attack form, which changes the password of the admin

Use CVE-2016-10206.


- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYlo37AAoJEHb/MwWLVhi2nWEP/219hKMVosSqRw9bj9SbRjbL
bRGYYuYjwbE7/JWLFL0o0IdjoO3Rndkwg39SAn4Bf92ZbSk+mrTLDHyM+sOI0JBD
5m9/yE1Oh/Nnlw0dwNSL74Qo1LeHlj6Dq1WbALwQy+Nr46PYrKTeK2RyOFtX2mXF
ogzDiPv6vzkRaAp90T5eVkTLUm6WUhvo0lsE0w2B5iJLDXZ9JWyCyRiagJhwTqCa
pRfvRG/0k6rar7lsyxVVC1LhAAhKiJUo7ZKH+3RAcvd+0S0FOWUH2SEhiDpqvnQS
WAx8Y/iE6Ijuymlmd0U+CeEg3dIpnqFu6haof/m+g5pNFXJlQbnElwW80rH2b56n
rhG8xNx+hd9tUKqtfTIX+T4dXkGcWEe5A9dqBN6BNmzNXWJ6tmSuFyGTDfsyMWxH
ima3jgZVmoIYlVxfUXNrUMetsdD1nDr1bGFsecN+WV8JaTf9lo1vEum1NHMr4ruC
hxFmDVGsmxJa2VEmqcRrAGs6JYvJKiQT0gu7y8g2EeYzRiprdlh9sLaPnG9aXgQa
M+OD0M2tgcc4hFCbS65jxyf8NmaIKBR2UuApkDQxIO4uv7neuIuBvJr16STE2baZ
jkWbYAtZDyXtJ5Vs5+Nb6IhdYcq6eW6/2qfz7AI48cSZHWop6l8o6q01VkgrLU/h
0pxDmijjxjLENgyn6Mg0
=jw7Y
-----END PGP SIGNATURE-----
