X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1411" "Thursday" "8" "October" "2015" "15:09:48" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151008190948.9A7BAB2E4E3@smtpvbsrv1.mitre.org>" "40" "[oss-security] Re: CVE request: Gummi" nil nil nil "10" "2015100819:09:48" "[oss-security] Re: CVE request: Gummi" (number mark "U       cve-assign@m Oct  8   40/1411  " thread-indent "\"[oss-security] Re: CVE request: Gummi\"\n") "<56169779.3060002@danielstender.com>" ("<56169779.3060002@danielstender.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25906 invoked by uid 550); 8 Oct 2015 19:10:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25878 invoked from network); 8 Oct 2015 19:10:00 -0000
In-Reply-To: <56169779.3060002@danielstender.com>
Message-Id: <20151008190948.9A7BAB2E4E3@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, 756432@bugs.debian.org, team@security.debian.org, carnil@debian.org
Date: Thu,  8 Oct 2015 15:09:48 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: Gummi
To: debian@danielstender.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> release is 0.6.5.
> 
> The program uses predictable filenames for files in /tmp, which produces a race
> condition
> 
> I'm Debian maintainer for this software.
> 
> https://bugs.debian.org/756432

Use CVE-2015-7758.

Note that the discussion referenced by the bug report suggests that
Linux exploitability depends on the /proc/sys/fs/protected_symlinks
file.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWFr7qAAoJEL54rhJi8gl5yNgQAIL2pKeo+zvzciqCpj0iSFYK
WITk6rVfX72Tp6FSQBLcXxGpBlOHbtz7gT8bqE/Xk8iCkcBayXyTWEs2LQvMwhws
rzyDeGFrj8iL/Z35PjAwDG5eGgsqcoDdlgCcu8SdKQX03qE6wI7jpKH2MZ2KF0JH
gQ3FuzvEiGvPDpSS31Y1PtoOZ2+5tO5duO6DS3mcilwwr19Dw8YnMg/Xa0snQAU1
/FjH1vt0WafAKxJwobjFUeZYfhYHGSA8hF6vofWOLT4hm5pIDpi22JgUEJdkzFq0
a18fKa6AW26LRWi6Qh41xCz8jbOnXJMoNTv+KwbyXOK0ZayXx/UD//SEhrx0DXgZ
C45Zu8bYnsXTckK35nELVHfPkswb1+BPwUkItehVcmCVxdT985p8M2pclRTAPTOu
KR2PUb9OAlGeZ5fk9ex1y/uUMg18ZBhssCqN8uC11YuzfdeVHsBfVUeO6jUCleIn
/KHqBTeXu6TZONKYIerExDuqKYW44ueHmgk+BzrjBeTlE7TmJuqwrYg0p+enRU6P
XwKvE1bKuZ+mMM2OW+zgl0iErFhZtsfXF1YNYUXudLKUCyNJtqGZl9WwJDvZA7eb
vetVlXgIkuz15KPumfilIZd+D3x5cba/kPtqN2upnoluFvFElJKS6s/g3ANZoVXz
XNKwz/M8+eIpxi1KsXjV
=9wUr
-----END PGP SIGNATURE-----
