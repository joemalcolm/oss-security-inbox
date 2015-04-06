X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2776" "Monday" "6" "April" "2015" "16:07:00" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150406200700.46EEEB2E2E3@smtpvbsrv1.mitre.org>" "67" "[oss-security] Re: CVE Request: tor: new upstream releases (0.2.6.7, 0.2.5.12 and 0.2.4.27) fixing security issues" nil nil nil "4" "2015040620:07:00" "[oss-security] Re: CVE Request: tor: new upstream releases (0.2.6.7, 0.2.5.12 and 0.2.4.27) fixing security issues" (number mark "        cve-assign@m Apr  6   67/2776  " thread-indent "\"[oss-security] Re: CVE Request: tor: new upstream releases (0.2.6.7, 0.2.5.12 and 0.2.4.27) fixing security issues\"\n") "<20150406175716.GA26491@eldamar.local>" ("<20150406175716.GA26491@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21832 invoked by uid 550); 6 Apr 2015 20:07:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21810 invoked from network); 6 Apr 2015 20:07:12 -0000
In-Reply-To: <20150406175716.GA26491@eldamar.local>
Message-Id: <20150406200700.46EEEB2E2E3@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, team@security.debian.org, weasel@debian.org
Date: Mon,  6 Apr 2015 16:07:00 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: tor: new upstream releases (0.2.6.7, 0.2.5.12 and 0.2.4.27) fixing security issues
To: carnil@debian.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

>>   o Major bugfixes (security, hidden service):
>>     - Fix an issue that would allow a malicious client to trigger an
>>       assertion failure and halt a hidden service. Fixes bug 15600;
>>       bugfix on 0.2.1.6-alpha. Reported by "disgleirio".
> 
> https://trac.torproject.org/projects/tor/ticket/15600

Use CVE-2015-2928.


>>     - Fix a bug that could cause a client to crash with an assertion
>>       failure when parsing a malformed hidden service descriptor. Fixes
>>       bug 15601; bugfix on 0.2.1.5-alpha. Found by "DonnchaC".
> 
> https://trac.torproject.org/projects/tor/ticket/15601

Use CVE-2015-2929.


>>   This release also contains two simple improvements to make hidden
>>   services a bit less vulnerable to denial-of-service attacks.

>>   o Minor features (DoS-resistance, hidden service):
>>     - Introduction points no longer allow multiple INTRODUCE1 cells to
>>       arrive on the same circuit. This should make it more expensive for
>>       attackers to overwhelm hidden services with introductions.
>>       Resolves ticket 15515.
> 
> https://trac.torproject.org/projects/tor/ticket/15515
> 
>>     - Decrease the amount of reattempts that a hidden service performs
>>       when its rendezvous circuits fail. This reduces the computational
>>       cost for running a hidden service under heavy load. Resolves
>>       ticket 11447.
> 
> https://trac.torproject.org/projects/tor/ticket/11447

There are no CVE IDs for these issues. Typically a CVE ID is not
assigned for an issue that the software's author describes as an
"improvement." In each case, the "bit less vulnerable to
denial-of-service attacks" is apparently a tradeoff against something
else, such as robustness during times when no flooding attack is
underway. In the first case, possibly a legitimate client cannot make
use of the first INTRODUCE1 cell and therefore sends another one
intentionally. In the second case, maybe the rendezvous circuits are
failing because of physical problems with the network, and more
reattempts would have been helpful.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVIuYhAAoJEKllVAevmvmsA9AH/0g5xRDiJfAW7yD+cZMskSBF
3l9bw8plaGOhXOx48Y35dOt9aWBIQKT48lvJzVoYMMB0s69igfw4Zl/LR7aKcOQ9
Bxp2orKDKInprwW319cU4+3pGSWFcn6rhY+pDY61VpCIhhRPN7YITMafGZkgEyRK
7ORCrOsIA+vCOquiHfwptXfTc5HO6vC1fqjAs7at1UiAvYFTPTw40krPO1MGICYY
fqglQ2+qFLknQGW0QWemrrbsGomrZ91e+eMry2EIgTEFQ4M+v1DD/AUeWv31XFDv
5u+bQ3z3JX7Ky2IxzxSdO/tzKc+mMev50oqZaOoTR/5QPJXHBqUQQVqP+/tKLZM=
=HH4n
-----END PGP SIGNATURE-----
