X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2025" "Thursday" "28" "September" "2017" "21:25:41" "+0300" "Henri Salo" "henri@nerv.fi" "<20170928182541.r7dzm3epg7txsplh@tunkki.bugs.fi>" "49" "[oss-security] The Internet Bug Bounty: Data Processing (hackerone.com)" "^Date:" nil nil "9" "2017092818:25:41" "[oss-security] The Internet Bug Bounty: Data Processing (hackerone.com)" (number mark "        henri@nerv.f Sep 28   49/2025  " thread-indent "\"[oss-security] The Internet Bug Bounty: Data Processing (hackerone.com)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13720 invoked by uid 550); 28 Sep 2017 18:26:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13686 invoked from network); 28 Sep 2017 18:26:04 -0000
X-Virus-Scanned: Debian amavisd-new at coconut.nerv.fi
Message-ID: <20170928182541.r7dzm3epg7txsplh@tunkki.bugs.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
Date: Thu, 28 Sep 2017 21:25:41 +0300
From: Henri Salo <henri@nerv.fi>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] The Internet Bug Bounty: Data Processing (hackerone.com)
To: oss-security@lists.openwall.com

Since these open-source software projects have been actively fixing security
issues and some of the issues has been announced in oss-security mailing list I
am writing about this hackerone project here as well:

https://hackerone.com/ibb-data

Policy:

The Internet Bug Bounty is offering rewards to security researchers who resolve
critical vulnerabilities in core infrastructure data processing libraries.
Critical vulnerabilities in these libraries have widespread consequences to the
internet community.

Bounty Qualification:

- Only Critical vulnerabilities that demonstrate unambiguous remote code
  execution are eligible under this program. Findings with alternative impact
  or severity are not in scope at this time.

- Your Proof of Concept MUST demonstrate that remote exploitation can be
  easily, actively, and reliably achieved.

- Only versions currently supported by the upstream project are eligible.
  Please verify your issue is present in a current release before submission.

- The individual library maintainers have final decision on which issues
  constitute security vulnerabilities. The Panel will respect their decision,
  and we ask that you do as well. It's important to keep in mind that not all
  submissions will qualify for a bounty, and that the decision to award a
  bounty is entirely at the discretion of the Panel.

In scope projects currently:

https://github.com/the-tcpdump-group/libpcap
https://github.com/ImageMagick/ImageMagick
https://github.com/glennrp/libpng
http://hg.code.sf.net/p/graphicsmagick/code/
https://github.com/curl/curl
https://github.com/the-tcpdump-group/tcpdump

I hope to motivate people with this email. I understand that oss-security
mailing list is not meant to announce these in regular basis, but I consider
this hackerone project highly relevant for the researchers reading this list.

Also if you have spare time please help projects like Google's oss-fuzz
https://github.com/google/oss-fuzz to get us more safer internet for everyone.

-- 
Henri Salo
