Received: (qmail 3996 invoked by uid 550); 26 Mar 2026 03:01:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13692 invoked from network); 26 Mar 2026 02:06:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1774490779;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ki0pbYHapkVmEbSU0SJVVv1sGvSZuwwyEL1P2OS2LUY=;
	b=bw9yvxxJ/gdYgZPheqLOCZ+Ke4XJ6DwAKrsxWHUn/9Mz364nzVkZjcaHOIMOgLWW/ob8Em
	YAYoBkJ+f1Qvrj47365Fuvc2sO2zjzjq3d6EkOrngOJX0L2d4AHuxBnAld/nLfIaZjRXmT
	vZFvCAn6FJB+2TBu1M8yEeiRYhpMy0pwrKdarrN4oPNyOFi/cJTymOvUhIaca50oFtvcws
	Bj0xeuYUn3xwCdl9odylwlF9q9Oh4rFRSQcJniJF8LAj+Q36YkcpO/tk+cf2N3QTv0j/Pq
	JgTOi11S6GZqlI6H8XNTvMT66sLA/8JEzdvEKk/mwPDYNxgoaoEN0k3BpGqL2g==
MIME-Version: 1.0
Date: Wed, 25 Mar 2026 23:06:18 -0300
From: Timothy Legge <timlegge@cpansec.org>
To: Cve Announce <cve-announce@security.metacpan.org>, Oss Security
 <oss-security@lists.openwall.com>
Message-ID: <519da6569229ef855d1d412d9b61a9da@cpansec.org>
X-Sender: timlegge@cpansec.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-GND-Sasl: timlegge@cpansec.org
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdefvdeiudduucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeggfffhvffukfigtgfgsehtjehjtddttddvnecuhfhrohhmpefvihhmohhthhihucfnvghgghgvuceothhimhhlvghgghgvsegtphgrnhhsvggtrdhorhhgqeenucggtffrrghtthgvrhhnpeejheevfeefhfekjeejvdduhfegvddtjeetffekteetudeivdeuleekheeuhfekveenucffohhmrghinhepmhgvthgrtghprghnrdhorhhgpdhgihhthhhusgdrtghomhenucfkphepuddtrddvtddtrddvtddurdejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddtrddvtddtrddvtddurdejpdhhvghloheprhhouhhnuggtuhgsvgdrghgrnhguihdrnhgvthdpmhgrihhlfhhrohhmpehtihhmlhgvghhgvgestghprghnshgvtgdrohhrghdpqhhiugepveevjeeiffefgfeugfffpdhmohguvgepshhmthhpohhuthdpnhgspghrtghpthhtohepvddprhgtphhtthhopegtvhgvqdgrnhhnohhunhgtvgesshgvtghurhhithihrdhmvghtrggtphgrnhdrohhrghdprhgtphhtthhopehoshhsqdhsvggtuhhrihhthieslhhishhtshdrohhpvghnfigrlhhlrdgtohhm
X-GND-State: clean
X-GND-Score: -100
Subject: [oss-security] CVE-2014-125112: Plack::Middleware::Session::Cookie versions through
 0.21 for Perl allows remote code execution

========================================================================
CVE-2014-125112                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2014-125112
   Distribution:  Plack-Middleware-Session
       Versions:  through 0.21

       MetaCPAN:  https://metacpan.org/dist/Plack-Middleware-Session
       VCS Repo:  https://github.com/plack/Plack-Middleware-Session


Plack::Middleware::Session::Cookie versions through 0.21 for Perl
allows remote code execution

Description
-----------
Plack::Middleware::Session::Cookie versions through 0.21 for Perl
allows remote code execution.

Plack::Middleware::Session::Cookie versions through 0.21 has a security
vulnerability where it allows an attacker to execute arbitrary code on
the server during deserialization of the cookie data, when there is no
secret used to sign the cookie.

Problem types
-------------
- CWE-565 Reliance on Cookies without Validation and Integrity Checking

Workarounds
-----------
Set the "secret" option.


Solutions
---------
Upgrade Plack::Middleware::Session to version 0.23 or later (ideally
version 0.36 or later), and set the "secret" option.


References
----------
https://gist.github.com/miyagawa/2b8764af908a0dacd43d
https://metacpan.org/release/MIYAGAWA/Plack-Middleware-Session-0.23-TRIAL/changes

Timeline
--------
- 2014-08-11: Vulnerability disclosed by MIYAGAWA.
- 2014-08-11: Version 0.22 released that warns when the "secret" option
   is not set.
- 2014-08-11: Version 0.23-TRIAL released that requires the "secret"
   option to be set.
- 2014-09-05: Version 0.24 released. Same as 0.23 but not a trial
   release.
- 2016-02-03: Version 0.26 released. Documentation improved with
   SYNOPSIS giving an example of how to set the "secret" option.
- 2019-01-26: CPANSA-Plack-Middleware-Session-Cookie-2014-01 assigned
   in CPAN::Audit::DB
- 2019-03-09: CPANSA-Plack-Middleware-Session-2014-01 reassigned in
   CPAN::Audit::DB
- 2025-07-08: CVE-2014-125112 assigned by CPANSec.

Credits
-------
mala (@bulkneets), finder

