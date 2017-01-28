X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2175" "Saturday" "28" "January" "2017" "17:12:19" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20398bb624f64da8b11f520c02b57cc7@imshyb01.MITRE.ORG>" "50" "[oss-security] Re: Gentoo: order of installed packages may result in vary directories permissions, leading to crontab not requiring cron group membership as example." nil nil nil "1" "2017012822:12:19" "[oss-security] Re: Gentoo: order of installed packages may result in vary directories permissions, leading to crontab not requiring cron group membership as example." (number mark "U       cve-assign@m Jan 28   50/2175  " thread-indent "\"[oss-security] Re: Gentoo: order of installed packages may result in vary directories permissions, leading to crontab not requiring cron group membership as example.\"\n") "<8bd5339f-080c-310d-9a68-3f91f725b3f7@gmail.com>" ("<8bd5339f-080c-310d-9a68-3f91f725b3f7@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13570 invoked by uid 550); 28 Jan 2017 22:12:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13535 invoked from network); 28 Jan 2017 22:12:31 -0000
From: <cve-assign@mitre.org>
To: <piotr.karbowski@gmail.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <8bd5339f-080c-310d-9a68-3f91f725b3f7@gmail.com>
Message-ID: <20398bb624f64da8b11f520c02b57cc7@imshyb01.MITRE.ORG>
Date: Sat, 28 Jan 2017 17:12:19 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: Gentoo: order of installed packages may result in vary directories permissions, leading to crontab not requiring cron group membership as example.

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> [] On one system after installing set of packages, the
> /var/spool/cron ended up being cron:root 755
> ...
> https://bugs.gentoo.org/show_bug.cgi?id=607430
> https://bugs.gentoo.org/show_bug.cgi?id=607426
> 
> https://bugs.gentoo.org/show_bug.cgi?id=396153
> https://bugs.gentoo.org/show_bug.cgi?id=141619
> https://bugs.gentoo.org/show_bug.cgi?id=58611

Use CVE-2004-2778.


This CVE is for the general issue that permissions can end up weaker
than intended because of the state of the filesystem at the time an
ebuild is installed. (It is not exclusively a CVE about directories
for cron.) As mentioned in the 607430 description, "it's not clear to
me whether Portage should provide a solution to that, or the ebuilds
authors should make sure to always depends, in case of touching
cronbase directories, on the cronbase package, to ensure that it's
installed prior to installing them." In other words, it is conceivable
that this could be considered a documentation problem, if the final
decision is that each ebuild author needs to be responsible for
letting the "correct" entity determine the appropriate permissions.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYjRbyAAoJEHb/MwWLVhi2E34P+waV8WI6umzx8yqTW76C32ti
332tDNFVAtD2w1gsdwJeFhO6LiQ9tF71FplmF9OEhGyIcg5o0AGh+EdvL+dYDP6i
gX4d5p6XFIHtWe4WfIa5DJXtT0lB8pI2PRy9lXsVK9C8asOueBkNLnHy2zB/+dXL
VCX1z1wzpcDysIUivlnI4spwWxbS65Zm2DHpUxhs7vCz9nAFSPstu/FnKWLKFe1d
fhNayuRvb0f3zUAaJwDzDJ2yoIui550eiJ+6TmUlhY8jCkOuxNGdD7hwpURG/1Wi
TvrCzH1YYJgHnCz8QT6WB5SrbQfYsZmLnB+SbQwbJNDKbL8+kaHbwl/lRY8hphsC
PW+oP8QBOh902JtREOqMBtSlReozvJEGC0yNtS6V9Dysu5vmn5nK+YkW4KHbAHCv
6ZSRDBZKr53UKBoaOqEoKxoDNgMGpYB4l2p6Cjp9a3eEXVR7Py4u/A1flVVD/pAi
SXFhSi0IKAuk1BqFf6g1KlbVpXaec7cPRrnGOToXpYcGKw1A9H1sNmnxVDYhXRqH
zW1V9hhTxhn+7zTuGhRtd0AfCYKsmBWOppGvyhDyo2HW3Fepp9UzTS5EqcqjYwf2
+45CObb2v77ZTsNDRi8YWZ79ABa3DnvYWSRJR9kB/kxTDBX2WaaamrEVH6omr/uJ
ZW3voevSL9UA648rf/OQ
=mgyN
-----END PGP SIGNATURE-----
