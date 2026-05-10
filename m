Received: (qmail 11867 invoked by uid 550); 10 May 2026 23:22:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24097 invoked from network); 10 May 2026 20:55:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stig.io; s=MBO0001;
	t=1778446541;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=WbL5aOjzsgQHt11tNGy2gJ1NviUni4ESHt7L0uerp7U=;
	b=I29hJR+etfzgDZAiKegBJKtinz+fuPVSP5lYr4qkZsOdinWoawrB13E3kee8CSsRwHqo4e
	jhBvJ1TvIRGlqFttIhvFsCjd3WRY/p3ijg/ymdvCzGB2DTSgN7fbpNb073M7NrJCvzck2b
	0LLA2lO6U90koj8czfKjoeRLyVD3R+3VozfDUEOIrsIyE/f4ZoCfMA0T4tcrPV7vspKJab
	hTtT2Qd9A2wcekjLnH/RmVpqdB3KxFY0pSXHiixUOnGmDO8/v05xg0cOwoHhzzBRSj+c4r
	FmZ9QwFoHh2AAzWt7j8lG14DeBV+EEoko48H4RUNP11leus6oNlJIbO0hdgIVA==
Authentication-Results: outgoing_mbo_mout;
	dkim=none;
	spf=pass (outgoing_mbo_mout: domain of stig@stig.io designates 2001:67c:2050:b231:465::1 as permitted sender) smtp.mailfrom=stig@stig.io
From: Stig Palmquist <stig@stig.io>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0
Message-Id: <411A28FF-F12F-46AD-9A96-E4764E447C2A@stig.io>
Date: Sun, 10 May 2026 22:55:28 +0200
To: cve-announce@security.metacpan.org,
 oss-security@lists.openwall.com
Subject: [oss-security] CVE-2026-8177: XML::LibXML versions through 2.0210 for Perl read
 out-of-bounds heap memory when parsing XML node names containing truncated
 UTF-8 byte sequences

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
CVE-2026-8177                                        CPAN Security Group
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

        CVE ID:  CVE-2026-8177
  Distribution:  XML-LibXML
      Versions:  through 2.0210

      MetaCPAN:  https://metacpan.org/dist/XML-LibXML
      VCS Repo:  https://github.com/cpan-authors/XML-LibXML


XML::LibXML versions through 2.0210 for Perl read out-of-bounds heap
memory when parsing XML node names containing truncated UTF-8 byte
sequences

Description
-----------
XML::LibXML versions through 2.0210 for Perl read out-of-bounds heap
memory when parsing XML node names containing truncated UTF-8 byte
sequences.

A node name ending in the middle of a multi byte UTF-8 sequence causes
the parser to read past the end of the input string into adjacent heap
memory.

Any Perl process that passes attacker controlled strings to
XML::LibXML's DOM node-name methods can reach this path on the default
API. The likely consequence is a crash, causing denial of service.

Problem types
-------------
- CWE-125 Out-of-bounds Read

Solutions
---------
Upgrade to a future XML::LibXML release, or apply the upstream patch.


References
----------
https://github.com/cpan-authors/XML-LibXML/issues/146
https://github.com/cpan-authors/XML-LibXML/commit/15652bd905a6c9dda59a81b14=
d4766adbbae2ea8.patch

Timeline
--------
- 2026-05-08: Upstream fix merged.

