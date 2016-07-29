X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2201" "Friday" "29" "July" "2016" "13:28:48" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160729172848.B025EABC9D4@smtpvmsrv1.mitre.org>" "55" "[oss-security] Re: CVE request: mongodb: world-readable .dbshell history file" nil nil nil "7" "2016072917:28:48" "[oss-security] Re: CVE request: mongodb: world-readable .dbshell history file" (number mark "U       cve-assign@m Jul 29   55/2201  " thread-indent "\"[oss-security] Re: CVE request: mongodb: world-readable .dbshell history file\"\n") "<20160729170700.977@usenet.piggo.com>" ("<20160729170700.977@usenet.piggo.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5907 invoked by uid 550); 29 Jul 2016 17:29:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5886 invoked from network); 29 Jul 2016 17:29:00 -0000
From: cve-assign@mitre.org
To: seb@debian.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20160729170700.977@usenet.piggo.com>
Message-Id: <20160729172848.B025EABC9D4@smtpvmsrv1.mitre.org>
Date: Fri, 29 Jul 2016 13:28:48 -0400 (EDT)
Subject: [oss-security] Re: CVE request: mongodb: world-readable .dbshell history file

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=832908
> 
> | During the report on redis-tools
> | (https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=832460), lamby@
> | linked to a codesearch and the same bug was found in mongodb-clients.
> |
> | mongodb-clients stores its history in ~/.dbshell, this file is created
> | with permissions 0644. Home folders are world readable as well in
> | debian, so any user can access other users mongodb history, even though
> | db.auth commands don't appear to be logged like redis did.
> |
> | I filed a bug on upstream as well:
> | https://jira.mongodb.org/browse/SERVER-25335
> 
> The mongodb client doesn't store authentication commands, but there's
> still information leakage, though, even if only about database and
> collection names, or data structure.
> 
> As for data itself, the history could also contain sensitive
> information; for instance, if usernames for some other service were
> stored in a mongo collection, the history could contain lines like:
> 
>   db.users.find({user:"foo"})
> 
> or even:
> 
>   db.users.update({user:"foo"},{$set:{password:"OhComeOnNow"}})

Use CVE-2016-6494.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXm5HHAAoJEHb/MwWLVhi20SgQAKIXsSDuAQzAY3DN67osMxAg
BuEh9En380VzBzqz+O83tjJyqJ6kx+Ed9WWc6Yl4nd0rUW1YdnOSvK+RF1c0nN2s
ndfb3cHkC2sTCfJyh5GvDdthYLr0Th0GabAzmgOoc4QhCSHykxxGFHgEhI5Wem6T
MclVy95MpBRb3g2XNH2ue96CxRFK2buT3fZerewZe8OBh7dh6nxDEKfLKodz8zaK
vUgINsgoP53GuhlCJYExf9O4JLY2wn3CFjWTGfoMY7wDxl9Rr5VwOuBaSgO6i+Ay
MxjMApDumENwSBtXtUQ/54WPez4IxqWU193gq31V4kVWEfBvlb9QHUsd1qyWsQVp
OtboCgvY2K0u5O9ZVK/H+zJDhqe/fxw2HjMxlwju3ENORuCUFpz/nErLWXSc+iaj
C2WmJPD0O+8mzJnOCjY8WuHJtetGorivbbKTbWk2C5r3NHMI7X9DYKiiz5ISD6Us
kXVjWxXdHqfCVG3JvpmJi78Pw/+DPgw9D3sg4BTY+bhEB+Gguvh8TMVTkjtOSsBh
i5ORa+1EhvGhYVXVZJZUK0bvEH/Pxuh6Yc2WX8LWFG2Fauw5d+1sSovLls6oLnp7
xDXqv7DN6NTu3iza24JWfsZBOUTVKminX42EonOu7yOVtW5oIRO6wCALd0OiL/SP
EOsVcn9sPCF9HQog0jSZ
=OQs9
-----END PGP SIGNATURE-----
