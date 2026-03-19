Received: (qmail 9687 invoked by uid 550); 19 Mar 2026 15:15:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 8010 invoked from network); 19 Mar 2026 11:09:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1773918566;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=n+UhggIvr7rxQ+sh7OAVe0029K77bNi8W0fNi+cEqJQ=;
	b=gF3B5MXwzQqrlEHceQxZMfYWBu0fNZG22h4ox7cHTNmGT9Ifra+rm/3Fvx7e4prMGW8muJ
	jem3JUD8eKDJ7GlIAyPjsAzjx6HatJV8bcrkPYyk36cDd8opRtbxikxXMt61TgpPu2uEGO
	YdUyt0aH48kIuGDug7JUSLRGNFC+Dk8j5a6gJSV+5YrxzuQ7Xc9PxG0leIEY2bJCpe3Tld
	iXVDy7al+KIZMn9qqndS3EQw9iv2/gOqczoCIQVanHtZpd8C6d5sybe2jCS9IhB+8HL5Zx
	7fqRgXMoDwXTBxCMA/ptzSYID8mFl/Ja21/hXnpJnqfBe74SR3KaR9vHgTudZw==
MIME-Version: 1.0
Date: Thu, 19 Mar 2026 08:09:25 -0300
From: Timothy Legge <timlegge@cpansec.org>
To: Cve Announce <cve-announce@security.metacpan.org>, Oss Security
 <oss-security@lists.openwall.com>
Message-ID: <416c62dde44caead4f52aac488b5de30@cpansec.org>
X-Sender: timlegge@cpansec.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-GND-Sasl: timlegge@cpansec.org
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdeftdeikeeiucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeggfffhvffukfigtgfgsehtjehjtddttddvnecuhfhrohhmpefvihhmohhthhihucfnvghgghgvuceothhimhhlvghgghgvsegtphgrnhhsvggtrdhorhhgqeenucggtffrrghtthgvrhhnpeefheetteeuveevlefghefgledvvdejudevudefhfffheekffduveduiedvheegffenucffohhmrghinhepmhgvthgrtghprghnrdhorhhgpdhgihhthhhusgdrtghomhdptghprghnrdhorhhgnecukfhppedutddrvddttddrvddtuddrkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpedutddrvddttddrvddtuddrkedphhgvlhhopehrohhunhgutghusggvrdhgrghnughirdhnvghtpdhmrghilhhfrhhomhepthhimhhlvghgghgvsegtphgrnhhsvggtrdhorhhgpdhqihgupedvleejvdekfefgueffffdpmhhouggvpehsmhhtphhouhhtpdhnsggprhgtphhtthhopedvpdhrtghpthhtoheptghvvgdqrghnnhhouhhntggvsehsvggtuhhrihhthidrmhgvthgrtghprghnrdhorhhgpdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomh
X-GND-State: clean
X-GND-Score: -100
Subject: [oss-security] CVE-2006-10003: XML::Parser versions through 2.47 for Perl has an
 off-by-one heap buffer overflow in st_serial_stack

========================================================================
CVE-2006-10003                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2006-10003
   Distribution:  XML-Parser
       Versions:  through 2.47

       MetaCPAN:  https://metacpan.org/dist/XML-Parser
       VCS Repo:  http://github.com/toddr/XML-Parser


XML::Parser versions through 2.47 for Perl has an off-by-one heap
buffer overflow in st_serial_stack

Description
-----------
XML::Parser versions through 2.47 for Perl has an off-by-one heap
buffer overflow in st_serial_stack.

In the case (stackptr == stacksize - 1), the stack will NOT be
expanded. Then the new value will be written at location (++stackptr),
which equals stacksize and therefore falls just outside the allocated
buffer.

The bug can be observed when parsing an XML file with very deep element
nesting

Problem types
-------------
- CWE-193 Off-by-one Error
- CWE-122 Heap-based Buffer Overflow

Workarounds
-----------
Apply the patch that has been publicly available since 2006-06-13.


Solutions
---------
Apply the patch that has been publicly available since 2006-06-13 or
upgrade to version 2.48 or later when it is released.


References
----------
https://rt.cpan.org/Ticket/Display.html?id=19860
https://github.com/cpan-authors/XML-Parser/issues/39
https://github.com/cpan-authors/XML-Parser/commit/3eb9cc95420fa0c3f76947c4708962546bf27cfd.patch

Timeline
--------
- 2006-06-13: Issue logged and patch provided in Request Tracker for
   XML::Parser
- 2019-09-23: Issue migrated to github issue tracker
- 2019-09-24: Patch provided in github issue tracker
- 2026-03-16: PR created and commit merged to git repo

