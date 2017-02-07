X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1473" "Tuesday" "7" "February" "2017" "01:57:39" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<e62a5dd0e9b34b509b3fb4b671a5c992@imshyb02.MITRE.ORG>" "36" "[oss-security] Re: CVE Request: s-nail local root" nil nil nil "2" "2017020706:57:39" "[oss-security] Re: CVE Request: s-nail local root" (number mark "U       cve-assign@m Feb  7   36/1473  " thread-indent "\"[oss-security] Re: CVE Request: s-nail local root\"\n") "<c227f38a-f873-fbf8-b4bc-220df1b31066@yahoo.fr>" ("<c227f38a-f873-fbf8-b4bc-220df1b31066@yahoo.fr>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9364 invoked by uid 550); 7 Feb 2017 06:57:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9344 invoked from network); 7 Feb 2017 06:57:50 -0000
From: <cve-assign@mitre.org>
To: <wapiflapi@yahoo.fr>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <c227f38a-f873-fbf8-b4bc-220df1b31066@yahoo.fr>
Message-ID: <e62a5dd0e9b34b509b3fb4b671a5c992@imshyb02.MITRE.ORG>
Date: Tue, 7 Feb 2017 01:57:39 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE Request: s-nail local root

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://www.mail-archive.com/s-nail-users@lists.sourceforge.net/msg00551.html

> vulnerability in the setuid root helper binary

> The problem is that an O_EXCL file is created with a user controlled
> path because the di.di_hostname and di.di_randstr are never checked.
> This means that using s-nail-privsep a normal user can create a file
> anywhere on the filesystem, which is a security problem.

Use CVE-2017-5899.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYmW4QAAoJEHb/MwWLVhi2+zMQAKcTkP5qlPXpyAw1J0pbVHdH
Y9Gr2MYjAux/jFSo0M5ClF8RngazEBNBpidzHTaVAZ2evZiv3QT5piMVIxi0oIR6
HG7G+kuUHuO16G6X9y6/joOr92ZRxJwUnXtN64MN59rOg6UBhKWE1dk5MORbFTee
EWoEAAgG7MPk0cjdZbdDoRjZYlTmyuyC5J1WXdc6a2Vy8IiS2YXEjFfEGyMIbGgH
+rVHZPWmbX/hmngnuuXq6LmCDtlQJce+e2abochLRx4diM1BH65X3OKfHp1JiV8X
DI6W/XH13nwiiFscSakqNbhMFbbSf5ed3ogQ+LPgz62aD8Cj69zbuuA9HpnWb8ow
iow8YKYj+dHoVIohQK7OtnSw42GW7ZyQGUYiz8XrYPb8snZo348WmMWP1m5h7mGc
dr3mLWlCQam3PDQugjQ7G/Q9CgJjq+HBQPuskdVy5MnHsi+toU0Uc/np3WM2eQHG
Huu/3hCTGQUJ0hyku2u/q6Xb0HKec9ugDVNvHNsOe8701Xxsg5kD5cCm49455sYS
k2jpb0GHTfGEkwXDQjb0tHL7nxDxlERrbfx73qmF99k8ZvZOI9NUYCJUqQOhr7RZ
vx0zo0PlqyFhK910ph0WCe8KnAD4JHlERyxljCMLem7iCapH62VSfbJJzy5d8Z5h
AwjzJgsIKufVTXR4E0VF
=gzVM
-----END PGP SIGNATURE-----
