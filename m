X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/01/15/5
Message-ID: <20130115093221.GA5967@elende>
Date: Tue, 15 Jan 2013 10:32:21 +0100
From: Salvatore Bonaccorso <carnil@...ian.org>
To: oss-security@...ts.openwall.com
Cc: team@...urity.debian.org
Subject: CVE request: Digest::SHA double free when using load subroutine
Content-Type: text/plain; charset=utf-8

Hi

The following was fixed in Digest-SHA Perl module in Version 5.81:

5.81  Mon Jan 14 05:17:08 MST 2013
	- corrected load subroutine (SHA.pm) to prevent double-free
		-- Bug #82655: Security issue - segfault
		-- thanks to Victor Efimov and Nicholas Clark
			for technical expertise and suggestions

Upstream bugreport is: https://rt.cpan.org/Public/Bug/Display.html?id=82655

Diff: https://metacpan.org/diff/release/MSHELOR/Digest-SHA-5.80/MSHELOR/Digest-SHA-5.81

A reproducer is given in the upstream bugreport. Does this warrants a
CVE? (It's at least a DoS).

Regards,
Salvatore
