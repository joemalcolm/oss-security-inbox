Received: (qmail 8136 invoked by uid 550); 19 Mar 2026 15:15:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25611 invoked from network); 19 Mar 2026 11:06:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1773918378;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Cfz50ffSJcCTFbJs2wBs27spWTlFuCKhBbPe6hL9s4M=;
	b=MDt/3EUNLW0Lo8YERejgfcp4nQHC8lOWIpLRT+1rvVePmKUhDhcZg5dM/aoW3kI3KF4Hxh
	jA1x1v8iZT14Pi2RZsjlHGXkDEpzbEO6LNA0dYMly/uhVy9dLGCtioGYcWUcdk/RVG+10V
	t/CRweGnScROoO9Q6YMdfTk5lX7+IztFMDz9kh5o1xAkQKHEfBLbYVchHpjfxrz8Y1fNw4
	Fjcx8TANuODwp8nWOnyIkhiEjMi7t2okuxDyRE4zH6tLK9xgjFwvnKtGjZY71cTyjuylnr
	c65uqdkwyKJ9QrTsaqL03L6AA1QfXjVTZ8AXwLAwSWp/C2fsyXavhayg8gY6Yg==
MIME-Version: 1.0
Date: Thu, 19 Mar 2026 08:06:17 -0300
From: Timothy Legge <timlegge@cpansec.org>
To: Cve Announce <cve-announce@security.metacpan.org>, Oss Security
 <oss-security@lists.openwall.com>
Message-ID: <f364e074ecc549033a42517c76c38366@cpansec.org>
X-Sender: timlegge@cpansec.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-GND-Sasl: timlegge@cpansec.org
X-GND-State: clean
X-GND-Score: -100
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdeftdeikeehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeggfffhvffukfigtgfgsehtjehjtddttddvnecuhfhrohhmpefvihhmohhthhihucfnvghgghgvuceothhimhhlvghgghgvsegtphgrnhhsvggtrdhorhhgqeenucggtffrrghtthgvrhhnpeefheetteeuveevlefghefgledvvdejudevudefhfffheekffduveduiedvheegffenucffohhmrghinhepmhgvthgrtghprghnrdhorhhgpdhgihhthhhusgdrtghomhdptghprghnrdhorhhgnecukfhppedutddrvddttddrvddtuddrkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpedutddrvddttddrvddtuddrkedphhgvlhhopehrohhunhgutghusggvrdhgrghnughirdhnvghtpdhmrghilhhfrhhomhepthhimhhlvghgghgvsegtphgrnhhsvggtrdhorhhgpdhqihgupedvueevvedufefgueekkedpmhhouggvpehsmhhtphhouhhtpdhnsggprhgtphhtthhopedvpdhrtghpthhtoheptghvvgdqrghnnhhouhhntggvsehsvggtuhhrihhthidrmhgvthgrtghprghnrdhorhhgpdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomh
Subject: [oss-security] CVE-2006-10002: XML::Parser versions through 2.47 for Perl could
 overflow the pre-allocated buffer size cause a heap corruption (double free or
 corruption) and crashes

========================================================================
CVE-2006-10002                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2006-10002
   Distribution:  XML-Parser
       Versions:  through 2.47

       MetaCPAN:  https://metacpan.org/dist/XML-Parser
       VCS Repo:  http://github.com/toddr/XML-Parser


XML::Parser versions through 2.47 for Perl could overflow the
pre-allocated buffer size cause a heap corruption (double free or
corruption) and crashes

Description
-----------
XML::Parser versions through 2.47 for Perl could overflow the
pre-allocated buffer size cause a heap corruption (double free or
corruption) and crashes.

A :utf8 PerlIO layer, parse_stream() in Expat.xs could overflow the XML
input buffer because Perl's read() returns decoded characters while
SvPV() gives back multi-byte UTF-8 bytes that can exceed the
pre-allocated buffer size. This can cause heap corruption (double free
or corruption) and crashes.

Problem types
-------------
- CWE-122 Heap-based Buffer Overflow
- CWE-176 Improper Handling of Unicode Encoding

Workarounds
-----------
Apply the patch that has been publicly available since 2006-06-13.


Solutions
---------
Apply the patch that has been publicly available since 2006-06-13 or
upgrade to version 2.48 or later when it is released.


References
----------
https://rt.cpan.org/Ticket/Display.html?id=19859
https://github.com/cpan-authors/XML-Parser/issues/64
https://github.com/cpan-authors/XML-Parser/commit/6b291f4d260fc124a6ec80382b87a918f372bc6b.patch

Timeline
--------
- 2006-06-13: Issue logged in Request Tracker for XML::Parser
- 2006-08-11: Patch provided in Request Tracker for XML::Parser
- 2019-09-24: Issue migrated to github issue tracker
- 2019-09-24: Patch provided in github issue tracker
- 2026-03-16: PR created and commit merged to git repo

