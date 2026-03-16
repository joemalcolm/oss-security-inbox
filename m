Received: (qmail 19955 invoked by uid 550); 16 Mar 2026 23:16:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28637 invoked from network); 16 Mar 2026 22:35:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1773700498;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Vg41Cfz4NMYeJ+FsHaAGBBYTJ5X4F08DfHUMVSUjris=;
	b=hENhskVFyBueaVK1DuZrJLFimBt89aHDDou0TiaeoWJJnfcHYziaMvnEZk0Q4R973RjBvp
	SPByM3oZdbSvNx/mRe4nFVwN5xSejJ5cxvJwbBdEMVgo+MCp/WrCe/guqyQtSdDkhWJZ3Y
	fEsJHDQbG3ernYAJ6DVFUau8ap7rXCNr9nbqFZoJ7/BeunPWPeiF5DP1uWRJqR5qt2LtWu
	V4jtNmfvLnKvR1bKKNZv43p0e7AWL0pEkYGqNpQctiJeN1As52vzCG0C3X4O0rt4O+Cli9
	p9BsJHIMxzhKZRtcny9MKnVPACKmq1zBNQi/IRgzXiT7Am0+mVW56IOA0Bhh3g==
MIME-Version: 1.0
Date: Mon, 16 Mar 2026 19:34:57 -0300
From: Timothy Legge <timlegge@cpansec.org>
To: Cve Announce <cve-announce@security.metacpan.org>, Oss Security
 <oss-security@lists.openwall.com>
Message-ID: <a2d5982ea53763b8473e9651c0b0d416@cpansec.org>
X-Sender: timlegge@cpansec.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-GND-Sasl: timlegge@cpansec.org
X-GND-Score: -100
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddvleelheelucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeggfffhvffukfigtgfgsehtjehjtddttddvnecuhfhrohhmpefvihhmohhthhihucfnvghgghgvuceothhimhhlvghgghgvsegtphgrnhhsvggtrdhorhhgqeenucggtffrrghtthgvrhhnpeejheevfeefhfekjeejvdduhfegvddtjeetffekteetudeivdeuleekheeuhfekveenucffohhmrghinhepmhgvthgrtghprghnrdhorhhgpdhgihhthhhusgdrtghomhenucfkphepuddtrddvtddtrddvtddurdejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddtrddvtddtrddvtddurdejpdhhvghloheprhhouhhnuggtuhgsvgdrghgrnhguihdrnhgvthdpmhgrihhlfhhrohhmpehtihhmlhgvghhgvgestghprghnshgvtgdrohhrghdpqhhiugepffelieegleefgfeuveegpdhmohguvgepshhmthhpohhuthdpnhgspghrtghpthhtohepvddprhgtphhtthhopegtvhgvqdgrnhhnohhunhgtvgesshgvtghurhhithihrdhmvghtrggtphgrnhdrohhrghdprhgtphhtthhopehoshhsqdhsvggtuhhrihhthieslhhishhtshdrohhpvghnfigrlhhlrdgtohhm
X-GND-State: clean
Subject: [oss-security] CVE-2026-4177: YAML::Syck versions through 1.36 for Perl has several
 potential security vulnerabilities including a high-severity heap buffer
 overflow in the YAML emitter

========================================================================
CVE-2026-4177                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-4177
   Distribution:  YAML-Syck
       Versions:  through 1.36

       MetaCPAN:  https://metacpan.org/dist/YAML-Syck
       VCS Repo:  https://github.com/cpan-authors/YAML-Syck


YAML::Syck versions through 1.36 for Perl has several potential
security vulnerabilities including a high-severity heap buffer overflow
in the YAML emitter

Description
-----------
YAML::Syck versions through 1.36 for Perl has several potential
security vulnerabilities including a high-severity heap buffer overflow
in the YAML emitter.

The heap overflow occurs when class names exceed the initial 512-byte
allocation.

The base64 decoder could read past the buffer end on trailing newlines.

strtok mutated n->type_id in place, corrupting shared node data.

A memory leak occurred in syck_hdlr_add_anchor when a node already had
an anchor. The incoming anchor string 'a' was leaked on early return.

Problem types
-------------
- CWE-122 Heap-based Buffer Overflow

Solutions
---------
Upgrade to version 1.37 or higher when it is available.


References
----------
https://github.com/cpan-authors/YAML-Syck/commit/e8844a31c8cf0052914b198fc784ed4e6b8ae69e.patch
https://metacpan.org/release/TODDR/YAML-Syck-1.37_01/changes#L21

Credits
-------
Todd Rinaldo, finder
