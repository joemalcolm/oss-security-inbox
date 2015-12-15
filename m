X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2182" "Tuesday" "15" "December" "2015" "16:18:12" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151215211812.7F21A6C010C@smtpvmsrv1.mitre.org>" "44" "[oss-security] Re: User man Local Root Exploit/Linux Kernel setgid Directory Privilege Escalation/PAM Owner Check Weakness" "^Cc:" nil nil "12" "2015121521:18:12" "[oss-security] Re: User man Local Root Exploit/Linux Kernel setgid Directory Privilege Escalation/PAM Owner Check Weakness" (number mark "        cve-assign@m Dec 15   44/2182  " thread-indent "\"[oss-security] Re: User man Local Root Exploit/Linux Kernel setgid Directory Privilege Escalation/PAM Owner Check Weakness\"\n") "<5670692A.4050001@halfdog.net>" ("<5670692A.4050001@halfdog.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19538 invoked by uid 550); 15 Dec 2015 21:18:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19489 invoked from network); 15 Dec 2015 21:18:24 -0000
In-Reply-To: <5670692A.4050001@halfdog.net>
Message-Id: <20151215211812.7F21A6C010C@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org
Date: Tue, 15 Dec 2015 16:18:12 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: User man Local Root Exploit/Linux Kernel setgid Directory Privilege Escalation/PAM Owner Check Weakness
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> http://www.halfdog.net/Security/2015/MandbSymlinkLocalRootPrivilegeEscalation/
> PAM library should not operate on shadow writable by anyone else than root user.

In case there was interest in this report of a possibly unexpected PAM
behavior: the MITRE CVE team has no current plans to assign a CVE ID.
This seems to be essentially a design issue where multiple valid
opinions may exist. In other words, if /etc/shadow is in an incorrect
state, possibly the ideal outcome would be to halt the system until it
can be recovered using console access, possibly the ideal outcome is
to let the system continue running with otherwise normal software
behaviors in case an authorized user is relying on those behaviors to
fix the problem, or possibly it's something in between. Another
example would be a case where /etc/shadow is not critically
misconfigured (e.g., owned by the man account) but only slightly
misconfigured (e.g., the root group has read access). Some people may
prefer a design in which password-based authentication always fails
until the permissions are fixed; however, that's not necessarily the
prevailing opinion.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWcIMhAAoJEL54rhJi8gl5oJsQAIZWMm3K94q59jP/HzruZbfn
WCo8GXY1lRnjWfcfSncS+SgSwI/gNDIQAq2Z+EzPrTd27zmXEQdL77affnWMWojX
HslCHsAo5jAtk9ytNnalCKQ6Y6dNuoWa61O43F6IOZlksyRMrdapA9B3XXXr4MkA
YHuEbSFK4tbgmUP/wM0RGZLV4a7LKWoDMKuLBTd56pWBQ7429QV2tVGPgx+xFg03
zaEiXE8w8s1qGXWQVICJaPhu5mCejDejzF34h0DhcxVJlzFpEaQIO1KZgtYUifDB
cbPjSfZvdZGSZl3fJC+QBf20g4hyyocqUwzJI0qXpT0L6rhBzZoeRbuO8W/levZG
oaZuVism8k3wvVC/NzmoG1nrPuNp4hp6hQIzdyPo+WwSyCFYSeZe0DPYh51kURZN
qAA+R6LjQKPUwiOLpgRy1h19Qc08tfUvrZeTmT8ZB9s9LTpKZRy5N9/jJDne5lLZ
KuNIu1Lz6LhdELIQdNEMJ/PbjQTUu1Y6us4geDJYaCmPyiqxl/bjXmj4jez2jScK
1FVWg9Pixdf811xY2FOouBOIeXHBWQlykEZcTFsy12ykolcHi81pXZTeatsoQZ8H
yVGxe1+reNFULx1Yf3IOd1UWqsPoTE+jwEDO3s5REox7pigK4SGbxntREevkTLnu
8QvfJp8ra+vE0NgtoUZs
=Z+Rm
-----END PGP SIGNATURE-----
