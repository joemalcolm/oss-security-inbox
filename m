X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1225" "Saturday" "15" "October" "2016" "22:58:12" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161016025812.1F72742E008@smtpvbsrv1.mitre.org>" "31" "[oss-security] Re: potrace: memory allocation failure" nil nil nil "10" "2016101602:58:12" "[oss-security] Re: potrace: memory allocation failure" (number mark "U       cve-assign@m Oct 15   31/1225  " thread-indent "\"[oss-security] Re: potrace: memory allocation failure\"\n") "<2504156.RvxX7vydSL@arcadia>" ("<2504156.RvxX7vydSL@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24359 invoked by uid 550); 16 Oct 2016 02:58:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24206 invoked from network); 16 Oct 2016 02:58:23 -0000
From: cve-assign@mitre.org
To: ago@gentoo.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <2504156.RvxX7vydSL@arcadia>
Message-Id: <20161016025812.1F72742E008@smtpvbsrv1.mitre.org>
Date: Sat, 15 Oct 2016 22:58:12 -0400 (EDT)
Subject: [oss-security] Re: potrace: memory allocation failure

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2016/08/29/potrace-memory-allocation-failure

> AddressSanitizer failed to allocate 0x200003000 bytes of LargeMmapAllocator

Use CVE-2016-8686.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYAud7AAoJEHb/MwWLVhi2mLoP+gOHwdcHB9ST9f6s+cXdsw5L
CNiHdy5X+nYHsvDCYqZq8v5x+wCcSzAKzdMyU/VhWMQVLWMKNKXfL+qm/EI67L9m
+7CG8d0G1pWuES1ynTn078ZS/wxIkudo5keiyCWGLl6ckJp0YLcQhCVC1fARNh9T
5bTetm3By5PzKGxvQO0NOOHo53Tn3bTZSf30fXqwb/qce2boMw1uD0eupRkqEwtN
jGLQYVN+31RvhJe42ojZU3NaB7XOhxZURrejLVjgjp8hSOAvSKsqP4AsECO8Dckv
9/MVc+duI35gecZ8gZHjPiMt1mlDvJrG+5fPXnbL0g7IG4VOiwCrzVkxiRGTsyE7
Dcy/JGivXOZmq2ZzB6sWT7jvKVne9/5eOKTl40ldv0Gl4XnEgoKr8lADEA8C5/5p
8+yWIj/wpap5TES5k32Yh24jkEYtOTxPwkwIvIZxIfyGqT2Tx/vG20EML7nC+gXd
fxjUrXuHIjwFoBxQ7tzArv4V9/zheGVXozTjvKoNRYkzpHcE33Q9zDIBy9dUTdkL
/8AALluIu/CQo3Rmfw//6IOVCUXCWmqyj1dWTJNI6Y9Cn7uyKmnDAhbwO82xC9NE
4FOu0TtpHWqsFQeSNbAjK7RK0bM8oFK9zK0ECUzFkci5b9HqIWn8XluBPn//exQt
DC56la9Lf9FJgtXtaUa0
=PZwg
-----END PGP SIGNATURE-----
