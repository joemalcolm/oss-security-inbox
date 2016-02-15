X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1712" "Monday" "15" "February" "2016" "12:09:55" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160215170955.33F4D6CC060@smtpvmsrv1.mitre.org>" "40" "[oss-security] Re: CVE request: foomatic-rip unhtmlify() buffer overflow vulnerability" nil nil nil "2" "2016021517:09:55" "[oss-security] Re: CVE request: foomatic-rip unhtmlify() buffer overflow vulnerability" (number mark "U       cve-assign@m Feb 15   40/1712  " thread-indent "\"[oss-security] Re: CVE request: foomatic-rip unhtmlify() buffer overflow vulnerability\"\n") "<20160215104458.56184e27@redhat.com>" ("<20160215104458.56184e27@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28245 invoked by uid 550); 15 Feb 2016 17:10:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28225 invoked from network); 15 Feb 2016 17:10:07 -0000
From: cve-assign@mitre.org
To: scorneli@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20160215104458.56184e27@redhat.com>
Message-Id: <20160215170955.33F4D6CC060@smtpvmsrv1.mitre.org>
Date: Mon, 15 Feb 2016 12:09:55 -0500 (EST)
Subject: [oss-security] Re: CVE request: foomatic-rip unhtmlify() buffer overflow vulnerability

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> A buffer-overflow vulnerability was discovered in the unhtmlify()
> function of foomatic-rip. The function did not properly calculate
> buffer sizes, possibly leading to a heap-based memory corruption. A
> remote, unauthenticated attacker could exploit this flaw to cause
> foomatic-rip to crash or possibly execute arbitrary code.
> 
> https://bugs.linuxfoundation.org/show_bug.cgi?id=515
> https://bugzilla.redhat.com/show_bug.cgi?id=1218297

Use CVE-2010-5325.

(Although https://bugzilla.redhat.com/show_bug.cgi?id=1218297#c2
also has a mention of "an off-by-one-ish problem" in addition to the
larger problem, there will not be multiple CVE IDs for this.)

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWwgUSAAoJEL54rhJi8gl5uykQAJzaoeYlGDOykAPG4FKygAuW
j4WKh5JltgiHBp4Fd22pr02A+LrIU0gH0iAEPU6lA8484P6YnWHvs3OMmYa4FRJT
ct9Nxf6Zjm3tewnhROTcx3pb8Xv5ooUtlvjDQ7S1HY2WrQ3+r/VGykGoupYNZFwC
HCNHW/HKaw33/eidUpaigRaCR9ftH24YjOa46bp6OJr+C3PGeR9GjE/umv6inJHz
byM+evEmzubiUYnahIzUyPjCYFjW+YyHfb9juoWWmNfVbLG+YqL3sbt8HeMI4y2W
dPXGgHkrm/B1GY1D/IO2rA3JGRrC7LSg6v0Tq33BbealBzwsdrwGQJewSEuJKnyc
fujBb3FnYQwbzcWL/XIxwwVnN/FldDuub+JpaesIY+pHhWf96KjJn5UmhYYRI0NE
I2EgKDhSzidCu3IdcCd7Ei2bKER8VRiq6EEnxy40o5QUTip2UTsroup9/NggIGo8
FZcXWRTMRKIWexMsUW5Fkmh4NobzLKAbYCDOaCy1vs8usysE0xeXh9gPB6+qLbtv
cR9FKMTqFRSQ5AXQ0YhSCnbxx3pP/5VAw7rnfFlEPHasAPdNyYNVSrNIUbPfIZTw
nSZ3x88l4jGgB4X4ydBM/fUSJ22A24fuu9tXAcvfsr2zNGWgrj676lbqAzFT51PC
qq3z5dhfv6awjdCptaC7
=kqIA
-----END PGP SIGNATURE-----
