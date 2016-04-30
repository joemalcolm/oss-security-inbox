X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1429" "Saturday" "30" "April" "2016" "15:04:32" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160430190432.D01C142E008@smtpvbsrv1.mitre.org>" "35" "[oss-security] Re: CVE request - Quassel IRC denial of service" nil nil nil "4" "2016043019:04:32" "[oss-security] Re: CVE request - Quassel IRC denial of service" (number mark "U       cve-assign@m Apr 30   35/1429  " thread-indent "\"[oss-security] Re: CVE request - Quassel IRC denial of service\"\n") "<CAMoU6uYcJu7-RbCRQ1O9zqOHF14fD+CyMB+=y6Xt21UQiiJjVQ@mail.gmail.com>" ("<CAMoU6uYcJu7-RbCRQ1O9zqOHF14fD+CyMB+=y6Xt21UQiiJjVQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29787 invoked by uid 550); 30 Apr 2016 19:04:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29748 invoked from network); 30 Apr 2016 19:04:45 -0000
From: cve-assign@mitre.org
To: baspape@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CAMoU6uYcJu7-RbCRQ1O9zqOHF14fD+CyMB+=y6Xt21UQiiJjVQ@mail.gmail.com>
Message-Id: <20160430190432.D01C142E008@smtpvbsrv1.mitre.org>
Date: Sat, 30 Apr 2016 15:04:32 -0400 (EDT)
Subject: [oss-security] Re: CVE request - Quassel IRC denial of service

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> It was found that quasselcore is vulnerable to a denial of service
> attack by unauthenticated clients. The protocol negotiation did not
> take into account lack of a match, in which case
> PeerFactory::createPeer returns a nullptr, which is immediately
> dereferenced
> 
> https://github.com/quassel/quassel/commit/e67887343c433cc35bc26ad6a9392588f427e746

Use CVE-2016-4414.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXJQFQAAoJEHb/MwWLVhi2ZcAP/1LyyMKO4YOzrX0HmWXqANyu
75tmS0QUrp1EZrMNw3phenr3FdBhpPUDfYNkqXxdR/fqfJG+yMdtW3CCnK7dxqgs
iZuDqqohyTNLPHl78KJndAtMmmGfmMy8ZRB7NCqPTBomEGrM1unELYSYMTDEF9PE
SO5m6Y8PlEJmP9c7wJeUagR32uvpeFHlNY3KzYptSYR5gEHVAZp28m912OEn1grg
nywB0MSld+JdDL1FDHd/WEP8KBTtbLawxhC+/BY20Un5IY/1O1iSLUoz2uxn8pmM
XrEKiylU+L3ifjgoP1vz00ndg160RQs+RUltJqst4yfWzjdYlWOfSqyPGenaRr0g
JclOiQzr4PnzVuESYe/1VscGnvviJceew1VmQ9/M1ocR1M3AhCjAP373n9iitCCE
fKM8PAxU5YD0Cz/XYsmZjfdKRO0WW2PZ8PTTEPtw/Ls9Q7b7tA5+xmL9zlqznhOj
Oe1IQ8fnOXIi+SGHZZVWA+ViNjHaJ9fZXsAGAcNrUlHHnlijWo6rG/GmRk0oFEAn
F2KnPoqBrx56sLWEPcpBimaKIDTz9kuU6NTd3qVZTQ23AQxbtc9Ka2X1J+L7fIsD
TK3L/2vJkVRTLL/kboGApuoHCFGHLfzea+h5EFXvMD+l9XBNS2Q+52PQ3Nh9PvDV
X+2oUb7pXqhymaQX4Zvc
=ZaBE
-----END PGP SIGNATURE-----
