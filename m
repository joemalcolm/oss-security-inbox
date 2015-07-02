X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1697" "Wednesday" "1" "July" "2015" "22:48:57" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150702024857.14E9A72E0D8@smtpvbsrv1.mitre.org>" "38" "[oss-security] Re: CVE Request: UDP checksum DoS" nil nil nil "7" "2015070202:48:57" "[oss-security] Re: CVE Request: UDP checksum DoS" (number mark "        cve-assign@m Jul  1   38/1697  " thread-indent "\"[oss-security] Re: CVE Request: UDP checksum DoS\"\n") "<20150630185021.GA29895@eldamar.local>" ("<20150630185021.GA29895@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30299 invoked by uid 550); 2 Jul 2015 02:49:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30281 invoked from network); 2 Jul 2015 02:49:08 -0000
In-Reply-To: <20150630185021.GA29895@eldamar.local>
Message-Id: <20150702024857.14E9A72E0D8@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, benh@debian.org
Date: Wed,  1 Jul 2015 22:48:57 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: UDP checksum DoS
To: carnil@debian.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> https://twitter.com/grsecurity/status/605854034260426753
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=beb39db59d14990e401e235faf66a6b9b31240b0

> remote DoS via flood of UDP packets with invalid checksums

It appears that you are primarily asking for a CVE ID for the issue
involving the absence of a cond_resched call. Use CVE-2015-5364.

However, the presence of "return -EAGAIN" may also have been a
security problem in some realistic circumstances. For example, maybe
there's an attacker who can't transmit a flood with invalid checksums,
but can sometimes inject one packet with an invalid checksum. The
goal of this attacker isn't to cause a system hang; the goal is to
cause an EPOLLET epoll application to stop reading for an indefinitely
long period of time. This scenario can't also be covered by
CVE-2015-5364. Is it better to have no CVE ID at all, e.g., is
udp_recvmsg/udpv6_recvmsg simply not intended to defend against this
scenario?

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVlKXfAAoJEKllVAevmvmsTSgH/jryA2NkD/Xd0D4sGAuyThe5
1Z2ZH82+foJHpPX6gd5HEdzwxlPMIWIj5Todj1YbDc/p0YHSfUitamIZNRI1LSCI
9V+ZOH+7SFk0ezeuVwNKwKS1QdfT7BROsEPY+PdmZ7MayHTBIfi3Rc94pkDe0OHI
rjf7DHiOcV9D5SgSscEm7H02PlPXw8tBPsfF2zxJkdobDh19YSLXUB3B2rcCz4vA
+z5dhx/SuxuAwfvY+a+wP4xXxvpMmp3pO2CAnxvcVaOVjw18oYS5GegvrPWgDEiL
F2QPkzBs4BYGUPPIzsR8CaduV2g/IsZjF4aHokIY86HQ1FI85MMnXNXRbqQxPFk=
=f64G
-----END PGP SIGNATURE-----
