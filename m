X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1733" "Thursday" "10" "March" "2016" "12:36:52" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160310173652.D548D33201D@smtpvbsrv1.mitre.org>" "48" "[oss-security] Re: Announce: Portable OpenSSH 7.2p2 released" "^Cc:" nil nil "3" "2016031017:36:52" "[oss-security] Re: Announce: Portable OpenSSH 7.2p2 released" (number mark "        cve-assign@m Mar 10   48/1733  " thread-indent "\"[oss-security] Re: Announce: Portable OpenSSH 7.2p2 released\"\n") "<bffeab9e56b0b9ef@openbsd.org>" ("<bffeab9e56b0b9ef@openbsd.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3657 invoked by uid 550); 10 Mar 2016 17:37:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3557 invoked from network); 10 Mar 2016 17:37:04 -0000
In-Reply-To: <bffeab9e56b0b9ef@openbsd.org>
Message-Id: <20160310173652.D548D33201D@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org
Date: Thu, 10 Mar 2016 12:36:52 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Announce: Portable OpenSSH 7.2p2 released
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

>  * sshd(8): sanitise X11 authentication credentials to avoid xauth
>    command injection when X11Forwarding is enabled.
> 
> http://www.openssh.com/txt/x11fwd.adv
> 
> The contents of the credential's components (authentication
> scheme and credential data) were not sanitised to exclude
> meta-characters such as newlines.

Use CVE-2016-3115.


We also noticed this very recent entry in the Dropbear SSH changelog:

> https://matt.ucc.asn.au/dropbear/CHANGES
> 
> 2016.72 - 9 March 2016
> 
> - Validate X11 forwarding input. Could allow bypass of authorized_keys command= restrictions,
>   found by github.com/tintinweb. Thanks for Damien Miller for a patch.

Use CVE-2016-3116.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJW4bBqAAoJEL54rhJi8gl5tQEP/3580WbVSVM7XSOW3IyR5+GY
ZoMmlEAafKV4BtSc/U/vlbvYSyLTQq7a2RPw8hWQrbjT8GPnE6YAxhYLC338eTIs
UK0ETcZ04qbEglkvf3DFhWCdqrfQ9N8Qls00pebPa5nlIhUx8tf/qRt39Kle9hfJ
T9Ni64gWYXIcRp2jXSlAeTHwuPqjZJpwLj1J18L+LKBytU07fxgaebdpeo9enakm
z9ytFZZ95ibkvOr7aSLJ9QCLhD1pp1Lyuw0dWrcjcz7VZXMyvvAQTJ4aFKLWI/Zl
Ygo8zBh0dKx82cGD1GyMRGtpryjYoNsq4FKKbe71qbCt2qVapHV9g0AZDf6AOZ2W
vJ3j5md74cPllo06vuMpm8JhJQwOAqCe5wZG4WvOKy9h8ELy1DUlP+V6TFiF3GOm
8ehk58oVAu8Isgex3I4uNkTf4vhlufut5TkC+JJAA3klJFVrgq57pSk2PSTpGZR2
//RudkF3fjivbndn20CRF7Qb1TUh4aQj96+r/yxBYZk18717ACO/MBO/SgCs9DiE
VOl2Hpo+sDyhenEinwFFu1uJebSQqiAnHAKmWbpKAYWdDErcuN6PE00uYr/RAUW0
qFo8E6bjy8emNL/Zw16x+dYb41Khh8KJp0ROobxbdbUBTlXUgSX6d301X0ZAVNXT
JyxLlvwg5t1U9NgpiTEX
=Wyah
-----END PGP SIGNATURE-----
