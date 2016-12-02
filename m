X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1359" "Friday" "2" "December" "2016" "13:05:50" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<2bc979517e9049968c78e77c115c6ad9@imshyb02.MITRE.ORG>" "40" "[oss-security] Re: CVE request: tomcat privilege escalations in Debian packaging" nil nil nil "12" "2016120218:05:50" "[oss-security] Re: CVE request: tomcat privilege escalations in Debian packaging" (number mark "U       cve-assign@m Dec  2   40/1359  " thread-indent "\"[oss-security] Re: CVE request: tomcat privilege escalations in Debian packaging\"\n") "<20161202104846.435@usenet.piggo.com>" ("<20161202104846.435@usenet.piggo.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7966 invoked by uid 550); 2 Dec 2016 18:06:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7945 invoked from network); 2 Dec 2016 18:06:03 -0000
From: <cve-assign@mitre.org>
To: <seb@debian.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <20161202104846.435@usenet.piggo.com>
Message-ID: <2bc979517e9049968c78e77c115c6ad9@imshyb02.MITRE.ORG>
Date: Fri, 2 Dec 2016 13:05:50 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request: tomcat privilege escalations in Debian packaging

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

>   * Privilege escalation when upgrading tomcat8 package
>     https://bugs.debian.org/845393
> 
>     create a symlink

Use CVE-2016-9774.


>   * Privilege escalation when removing tomcat8 package
>     https://bugs.debian.org/845385
> 
>     leave the file world-writable, setgid root

Use CVE-2016-9775.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYQbZLAAoJEHb/MwWLVhi26aEP/ivGNYnCc7vu3VwntDka67ma
DDy626ySFxqZ42rsqODKp+sUDTcvpSl3zrdjMgD2RsFcozm/Wxw3UrfwsCA2hyJe
7777Ho0aXuncTFtj+X/iWWbe0lgua1txSHukKmHrj8OUGdFrLZ++V0cKvo/UB2YC
rrezzxvjTs5MyB7hfJTIq7adB2NU02Zoq5SZG6hwZ7KJvL7BwR6S2zJcqEyE9lNB
mH9ELOcAJVEDkLp08TO+Gsjzttn5+VgV2d2Z/FZ88QlvET/pUDnq2lFE9VLwK7LH
bQ2/DXlr7L3ysQowFW8wKfVmRrIGfBf6ghSJB14HLsISpUan09M/Hxia2gnBDrqG
cFZxuqk8rB82+Wv/8d0MpYHY7wraLn1xtya0uEosq77zANLFYAUagH2U0tbKmy6x
Ynw5XlJSSfdrz99YNvUYSo9stdc0tl1fh+U+TVdceSymX05vBixrn1/6mG9U2rMO
NovO4Vw4ZlhGXhNbIfIBUC9zFeOuWMopv7TYK+koOZyMlDVRHFpCzg/uJWgM9GhX
8SmBKTu/30JFYQMXQxEr+FeK3HH4ypkuHh4ypipC3X1SSh/a/+b47HTKA4Zq3MCb
Cq+ujDVuJTHjxBrfJjdYj5pdV8L5UKPCYCwVbTq4zYKDpvNwkymk6sNitx8rl+4z
zfAuJp63CxW2QXE2CgKx
=xpEE
-----END PGP SIGNATURE-----
