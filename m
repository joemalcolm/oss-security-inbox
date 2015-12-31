X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1405" "Thursday" "31" "December" "2015" "11:21:59" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151231162159.3BC0E332057@smtpvbsrv1.mitre.org>" "33" "[oss-security] Re: mail-client/claws-mail-3.13.1: Stack Overflow - CVE needed?" "^Cc:" nil nil "12" "2015123116:21:59" "[oss-security] Re: mail-client/claws-mail-3.13.1: Stack Overflow - CVE needed?" (number mark "        cve-assign@m Dec 31   33/1405  " thread-indent "\"[oss-security] Re: mail-client/claws-mail-3.13.1: Stack Overflow - CVE needed?\"\n") "<1451531793.25978.92.camel@decadent.org.uk>" ("<1451531793.25978.92.camel@decadent.org.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31951 invoked by uid 550); 31 Dec 2015 16:22:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31905 invoked from network); 31 Dec 2015 16:22:11 -0000
In-Reply-To: <1451531793.25978.92.camel@decadent.org.uk>
Message-Id: <20151231162159.3BC0E332057@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 31 Dec 2015 11:21:59 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: mail-client/claws-mail-3.13.1: Stack Overflow - CVE needed?
To: ben@decadent.org.uk

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> In conv_euctojis() the comparison is with outlen - 3, but each pass
> through the loop uses up to 5 bytes and the rest of the function may
> add another 4 bytes. The comparison should presumably be 
> '<= outlen - 9' or equivalently '< outlen - 8'.

Use CVE-2015-8708 for this additional issue that exists because
of an incomplete fix for CVE-2015-8614.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWhVWsAAoJEL54rhJi8gl583EP/Ar22NETcsAQunMB1xi81oyH
vkto+MAV1mgFL/eKrIoE0Khka+hUdF3N5YBF6GvNR2nV6bDigWurxyWpYZirXMp1
R5+SpbjsRoeqck/l7r9laILvZceudpiZwDcM60YQgwHjrUMRp82b/Xix7orIvctj
QKqaXvGKr4Uqb8ELOgMoewtcf3PtalLaXFwFzmAlbbVV52QTZlESwWXvVzM4Wde4
BM82WAT+mePcYzc4gt7525D0BXaPglBoqW/eOis22Xk0+26J3aU7MjWU2e9DY+mI
xN9UV0qRBUFK1wpmX0NsedzQkE7fFp3J5L1bzlmrVoFjWXEvZRdm8VyF9ql9XcE4
9jH0RKgCh8SWZJxsp1wZ0O7FRWLye2p23Pu+IBl6ZTQBDtfZJhdSpFnvD8b3ozcq
JmOuR00HngwYtPjvcwXSz5Uo80XBw7fY/7FUUVpYPioKqbnfyNT8Yqpf+3O5gAKu
15fRQ7/xxeE5RIM8tuXwI1UdguExWcF5EYijrOBtjnm2TamFhgeeDjhNnx7tpyVG
FmfOf2mHj8i1OooSnnG2xOzz6jeXZDXC+ILqj0P3ba6NK++vg67V/Ol/ps8Bnvm4
Jt1m3Cl9cHwePC7n49dxPBeNL1mY4B5YJEcuD0fsfA3znnG2ySvhdgguvW7+cTii
IlR4SKZFQqONyagYD9Zl
=xxDi
-----END PGP SIGNATURE-----
