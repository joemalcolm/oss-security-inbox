X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1815" "Wednesday" "25" "March" "2015" "16:36:52" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150325203652.6FAF56DC007@smtpvmsrv1.mitre.org>" "48" "[oss-security] Re: CVS-Request: realmd code execution/auth bypass" nil nil nil "3" "2015032520:36:52" "[oss-security] Re: CVS-Request: realmd code execution/auth bypass" (number mark "        cve-assign@m Mar 25   48/1815  " thread-indent "\"[oss-security] Re: CVS-Request: realmd code execution/auth bypass\"\n") "<20150325131648.GC3795@suse.de>" ("<20150325131648.GC3795@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28507 invoked by uid 550); 25 Mar 2015 20:37:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28467 invoked from network); 25 Mar 2015 20:37:04 -0000
In-Reply-To: <20150325131648.GC3795@suse.de>
Message-Id: <20150325203652.6FAF56DC007@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed, 25 Mar 2015 16:36:52 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVS-Request: realmd code execution/auth bypass
To: krahmer@suse.de

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> Upstream has opened two bugs for issues in realmd

This initial response has a CVE ID only for the second one.

> could lead to remote attackers logging into the local system
> by placing an evil AD server in the LAN
> https://bugs.freedesktop.org/show_bug.cgi?id=89205

Is upstream planning to announce this as a vulnerability fix? Although
the old behavior was unsafe if there was any possibility of an
untrusted device on the LAN, it appears that the old behavior had been
intentional. For example, the old behavior may have been chosen as a
security/convenience tradeoff. This example might be applicable:

  https://fedoraproject.org/wiki/QA:Testcase_realmd_join_automatic


> could lead to remote attackers logging into the local system by
> offering \r in LDAP responses that are treated by sssd and winbind as
> newline separator; therefore allowing to smuggle options into the
> config files used for startup

> https://bugs.freedesktop.org/show_bug.cgi?id=89207

> No data that was retrieved before join ... should be used when
> configuring sssd.conf and/or smb.conf.

Use CVE-2015-2704.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVExugAAoJEKllVAevmvmsjMkIAJ50zsMP++L4lIXkp7U004Yf
u6+e0GUl9EHTAhbF3vT8XMqcpPN3EKmG9TFMTBQUQ1NhofQ3WhZsvXnbFV2nsDz1
e7SC+gk21IejoRbCxZjgLKLYv3WaPz46Lzfd61UjgMAxCOvx8c0QvmrF1tSoS/8h
PCU1prMYhEUdTOdlVU0TQ73FKVMyjJl5KyiVG3WmLwHxloUsYnJKCGLByu8oiG7B
BSafuVQUPKp3EROUBqGubLKjojGWv48Jp2D4EAJWVnuB2gwqab1Vzvrr7uOiVYNZ
jtjkzoH9r6BK1DiWE7MGQFlvDTp1XY5MClYnq7dLC0RKRJtXy05UeFFxYvwsjsI=
=QaAk
-----END PGP SIGNATURE-----
