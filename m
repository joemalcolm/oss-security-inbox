X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1638" "Wednesday" "18" "November" "2015" "10:59:03" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151118155903.69F3E332396@smtpvbsrv1.mitre.org>" "39" "[oss-security] Re: race condition checking digests/checksums in sudoers" "^Cc:" nil nil "11" "2015111815:59:03" "[oss-security] Re: race condition checking digests/checksums in sudoers" (number mark "        cve-assign@m Nov 18   39/1638  " thread-indent "\"[oss-security] Re: race condition checking digests/checksums in sudoers\"\n") "<20151110203830.67ABE6C001F@smtpvmsrv1.mitre.org>" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1405 invoked by uid 550); 18 Nov 2015 15:59:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1358 invoked from network); 18 Nov 2015 15:59:15 -0000
In-Reply-To: <20151110203830.67ABE6C001F@smtpvmsrv1.mitre.org>
Message-Id: <20151118155903.69F3E332396@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, Todd.Miller@courtesan.com
Date: Wed, 18 Nov 2015 10:59:03 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: race condition checking digests/checksums in sudoers
To: amilburn@zall.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

>> http://www.sudo.ws/man/1.8.15/sudoers.man.html

>> If a command name is prefixed with a Digest_Spec, the command will
>> only match successfully if it can be verified using the specified
>> SHA-2 digest. This may be useful in situations where the user invoking
>> sudo has write access to the command or its parent directory.

> This results in a race condition if the digest functionality is used
> as suggested (in fact, the rules are matched before the user is
> prompted for a password, so you have quite some time to replace the
> binary from underneath sudo).

Use CVE-2015-8239.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWTJ/cAAoJEL54rhJi8gl5Ej8QALlEI/5YbcrblU789Kk+Xk/R
zpoF0hgkKfkN4nKIjYDDz/BVQCa7glsZh2tRdcS6HAChsKhEzHc3cFfkZbw4p1nF
ftNANRAMZRnnkyh4IfZdVdgWlW+UFWJ5nEFqGTwMmcaSTDmD7AonAkbak/mxJKCH
gewR9Lv6+Gt2urw32OMUxTtFBtQM7suIpI5Cs0nvyEg4VXxIqiiIS7uZa1RqFQPv
XI2u22+eD3kNewTpif9VzlkDM1tehkjZWhKcIOswwbIyCDOKCj2DlzvPRCx/90DX
owanq/ZNpPt8Uw8xN4VtoN/7SFZcaqekONbRCcqYQu+aSzZc8k8XEYLZjxLaAeKG
jHMpxDhPj2DInZzel2gyCPG+bkqpzHuNvUmTebJPU+8GLCDnq7RjCZ9UvvOT0BXT
JTRd72wEWXxHa3Gxc7fwS1rincgg4Cw18tDguZMYG2y/LvNLsm9UP0aeZVhCnP0N
7ich7V8ZrgiyDupPqEGMAupE/c9bC+o90/nKzoSDliuj+mRAjmVuA5ZpVRBo6i69
qiJxlwep7PFgVE1FmG7AsQACXq7cd6e8wsb2xxF/b2eNnwEp2QGVmOkDs5WUB7wU
3OXLJVppMPWwX2Y9Wpf4imGUV+4oKRczo2CDu58+muMf95ng5yosPIKKIhd3MqKY
HJN2Edk+lRA5O8oPxvf4
=l+r1
-----END PGP SIGNATURE-----
