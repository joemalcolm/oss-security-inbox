X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1950" "Saturday" "4" "July" "2015" "12:58:40" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150704165840.0EE836C0490@smtpvmsrv1.mitre.org>" "49" "[oss-security] Re: please REJECT CVE-2015-3199" nil nil nil "7" "2015070416:58:40" "[oss-security] Re: please REJECT CVE-2015-3199" (number mark "        cve-assign@m Jul  4   49/1950  " thread-indent "\"[oss-security] Re: please REJECT CVE-2015-3199\"\n") "<5597FEC8.5060400@redhat.com>" ("<5597FEC8.5060400@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1953 invoked by uid 550); 4 Jul 2015 16:58:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1932 invoked from network); 4 Jul 2015 16:58:51 -0000
In-Reply-To: <5597FEC8.5060400@redhat.com>
Message-Id: <20150704165840.0EE836C0490@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Sat,  4 Jul 2015 12:58:40 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: please REJECT CVE-2015-3199
To: kseifried@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> http://projects.theforeman.org/issues/10469
> 
> "This was reported by Ori Rabin to foreman-security (thanks!) and a CVE
> identifier was filed under CVE-2015-3199, but it turned out this does
> not affect any released upstream version."
> 
> so it was effectively in an unreleased version, thus no need for CVE.

The scope of CVE isn't strictly limited to released upstream versions.
As mentioned at the bottom of the
http://openwall.com/lists/oss-security/2015/01/04/7 post, some
products sometimes have CVEs for this type of unreleased software,
whereas others do not. We feel that Foreman is probably in the latter
category.

http://theforeman.org/contribute.html and 10469 suggest that the
incorrect code was found only on the develop branch:
  
    - Master - latest stable release code
    - Develop - new features and bug fixes

    Master is frozen between major releases.

http://theforeman.org/introduction.html doesn't suggest that anyone
ships a product using code from the Foreman develop branch, but we
don't want to immediately rule out that possibility. This seems to be
a good choice for moving to the REJECT state, and we will most likely
do that next week unless there's an important reason to keep
CVE-2015-3199.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVmBAvAAoJEKllVAevmvmsXS4IAMYPSg8K5gDoSq+LV5lTS+na
HTpCQP4POO8NY8YcTQnKY4bnZOF13CXZqUzGxpUiw1uwJlH3yeJI6c3J/EFfAC/s
jnZgLBQ4PgDu3wk3gtIwfQROFQPz07TsAAKZj36mT/v7zA/7UhgVjfqCK9iZxwGd
ejN8Xcfz6ATKyNZvuxxPblqhb4FSdl2cyaQ87VRUVgDcdWnHrcWlimyEN9muNjX6
zeBIYohDVnkkktOu3OeKMkKOyH1ejHNJ3zxcKZMbUpo9fwmRrlssLEslqNbEzIWq
Iv+Pruul3SIENuUVpZgYjq6fbB1sbRuGKBHzxApqVKLZOAXkFAXuPyYf4WqJYlc=
=jqn1
-----END PGP SIGNATURE-----
