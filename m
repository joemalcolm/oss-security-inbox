X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2258" "Thursday" "16" "April" "2015" "01:20:11" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150416052011.C25D86C0072@smtpvmsrv1.mitre.org>" "53" "[oss-security] Re: Problems in automatic crash analysis frameworks" nil nil nil "4" "2015041605:20:11" "[oss-security] Re: Problems in automatic crash analysis frameworks" (number mark "        cve-assign@m Apr 16   53/2258  " thread-indent "\"[oss-security] Re: Problems in automatic crash analysis frameworks\"\n") "<552F38FC.3010109@redhat.com>" ("<552F38FC.3010109@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23574 invoked by uid 550); 16 Apr 2015 05:20:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22523 invoked from network); 16 Apr 2015 05:20:23 -0000
In-Reply-To: <552F38FC.3010109@redhat.com>
Message-Id: <20150416052011.C25D86C0072@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 16 Apr 2015 01:20:11 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Problems in automatic crash analysis frameworks
To: huzaifas@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> IMO two CVEs are required:
> 
> "Various symlink flaws in abrt" and "Various race conditions in abrt"

For purposes of CVE, a set of vulnerabilities related to symlink
following normally isn't assigned two CVE IDs solely because some of
the symlink attacks depend on a race condition, whereas other symlink
attacks don't depend on a race condition.

The specific exploitation scenario disclosed in raceabrt.c is about
replacing maps with a symlink to /etc/passwd and then waiting for the
next line of the code to chown /etc/passwd. This requires symlink
following, and will have the same CVE ID as other issues that require
symlink following.

If the only goal of an attacker were to delete the maps file in order
to cause data loss, then we think that attacker does not need to win a
race. That attacker can delete the maps file either before or after
the chown. (It's also conceivable that file deletion, by itself, was
considered an acceptable risk, and not a valid attack goal.)

However, the text of
http://openwall.com/lists/oss-security/2015/04/14/4 said "is
vulnerable to a filesystem race where a user unlinks the file." That's
why we asked about the possibility of another scenario in which:

  1. The ultimate goal is only to unlink the file.
  2. Achieving this ultimate goal requires winning a race.

We think there's isn't any such scenario, but we wanted to confirm
that before doing a CVE mapping. If there isn't any such scenario,
then the total number of CVE IDs for the whole "Furthermore, Abrt
suffers" section will be 1.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVL0V/AAoJEKllVAevmvmsNBgH/1cm1EzfPto2c5q9CF9fSd7v
MJ3O/53tfiuWGrWecFyFtn5NsAXb3t35TEioQe6EbDDmEO+ogN6xh+lBJSxc0hBI
+kTCjza08/6a1+vfgQaHX5zLdXUrA0BXi97Id1gfr+LcelSVMY0yoGfFlE/VvoKN
CXNiXu+FtukYMUSwIdmuHvTjmo54yPyMWI3bMRrw+Tt8X4KQq6mpUZKwNKQ8cOMb
1CVXIWSzs7cdVOEWe4xAeqKKbzhfclB4VB6uFRf/As5z6sWBcvY3sQMUfvvcw0yS
3rQ0LU90yq1rjnUGID4ckzFhV7o9h/AdshYrfi15SmdcR3G5TaKFs2fEkP5PZR0=
=h2Xd
-----END PGP SIGNATURE-----
