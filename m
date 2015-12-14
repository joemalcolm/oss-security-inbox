X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2082" "Monday" "14" "December" "2015" "14:31:13" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151214193113.546CDABC018@smtpvmsrv1.mitre.org>" "47" "[oss-security] Re: User man Local Root Exploit/Linux Kernel setgid Directory Privilege Escalation/PAM Owner Check Weakness" "^Cc:" nil nil "12" "2015121419:31:13" "[oss-security] Re: User man Local Root Exploit/Linux Kernel setgid Directory Privilege Escalation/PAM Owner Check Weakness" (number mark "        cve-assign@m Dec 14   47/2082  " thread-indent "\"[oss-security] Re: User man Local Root Exploit/Linux Kernel setgid Directory Privilege Escalation/PAM Owner Check Weakness\"\n") "<566E0678.1080808@halfdog.net>" ("<566E0678.1080808@halfdog.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24242 invoked by uid 550); 14 Dec 2015 19:32:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24134 invoked from network); 14 Dec 2015 19:31:25 -0000
In-Reply-To: <566E0678.1080808@halfdog.net>
Message-Id: <20151214193113.546CDABC018@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org
Date: Mon, 14 Dec 2015 14:31:13 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: User man Local Root Exploit/Linux Kernel setgid Directory Privilege Escalation/PAM Owner Check Weakness
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> http://www.halfdog.net/Security/2015/MandbSymlinkLocalRootPrivilegeEscalation/
> http://www.halfdog.net/Security/2015/SetgidDirectoryPrivilegeEscalation/

The MITRE CVE team doesn't exactly know what we can do with these
references. The first one mentions a CVE ID from Ubuntu,
CVE-2015-1336, but
http://people.canonical.com/~ubuntu-security/cve/2015/CVE-2015-1336.html
doesn't yet exist. Possibly the CVE ID is supposed to be for use of
"chown man" in /etc/cron.daily/man-db within both Ubuntu and Debian
distributions.

The second one doesn't mention any CVE ID. Would it be useful for
MITRE to assign a CVE ID for the permissions/ownerships error of:

  drwxr-sr-x 25 man root 4096 May 15 00:40 /var/cache/man

? Our understanding is that this is, more or less, currently
unsupported by the Linux kernel. In other words, it is not valid to
choose that specific set of permissions/ownerships if one is concerned
about an attack by someone with the uid of the man account. This issue
affects both Ubuntu and Debian distributions.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWbxiyAAoJEL54rhJi8gl552wP/3D/YIy6rhxrmiWHUXu0gxAA
Xq8HHyVOTT1o1ZWmY/BkKWfGXMjD0CcE46ie0e2nqaT2DBtcr94n3djJ7TeAcrjf
D8lS7TTqMzO5IjR0kAWxxj9UzwUeKDjQk7//u4RGm1+5zm6wx3V9ES5Ey3I7eBu9
+Xb92pIl00PFaJ0xR8mYXiwBYtEDXgeY3F7AXeVWU+yGlfgJ+vZYJvb8wCm/daYE
6Flg2+6ij2UUjx5UJd1SG6k1j7vfzWHYf0nqJvZwyTUN/ljBV3Nq4Q2er/4DYsaQ
g+hEC3g3hFVqfeJKyi1fBFmk784bCR3hrBXPiwEB+61bFTIpXSX55sZiaqlKxFad
LcJqOUDkqUlhR0+KUIXYgVEKHPrmJtfJZAbZdZYpNuduSnVsS7T+A5ub3Brz1CZs
zaIwemEIgKV5o9YRSF51ZBWj2yecUdkpQ53388b0NyHCx+g9G1w4CpLxnKtVZJOm
YYp1kn3HgqXJ1l2L5HrDlrNW0KN6P6YrxgG6lr0gUwVd96ER8823m95kteiEik2p
J+SWLnphlWvSjVUU3Bwlg/iHzOOY2HOPycEb/SJhqg6FTGzs55QPkrSQnU4hdOgF
EojG2z3HzXcB6edefm/O/WWhosQ+NJhxdaO4/rnTxtfV2sokt/6988eiK8to7kdk
gGnY6T6rbsl7x+DBnpHr
=lZEJ
-----END PGP SIGNATURE-----
