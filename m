Received: (qmail 7382 invoked by uid 550); 13 Apr 2025 14:21:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15493 invoked from network); 13 Apr 2025 13:23:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stig.io; s=MBO0001;
	t=1744550607;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=ZQWS4pWmJUVk4b7no8uGSXq2oYs+8M/2qFKT4TrF9Do=;
	b=1Hect4I8RDUv2xvHRgxwx7nrLK4SlhbFX04y+BRaxJet8uaexAi+CqKYp2QYBWYvsLrPLe
	CrhZL23ZTwdSZpOPlNjRWutsGUy3/jpNYDYu3mAKWRlu7fvwtuKLe4t89Cv4ilWycX4Hik
	J3K9WasG/ZkfM9r4G4cxHIRP1XY6MObgEN0HIGBi4JKn7jmnGwM3yPLVeolx96/YA4HGpj
	IFskiVOG6W4wnTjsiZKhXgiIuHYKRkZHGS0IHxI58lM6oRvQ4vB0fse8RyKL6XtMlIFYs+
	mW9Q2NKbdR7VvfBqOYX/ONTqTbX2UHqwP7V5KVsge8xArnIghDBgOToDbjNmMQ==
Date: Sun, 13 Apr 2025 15:23:25 +0200
From: Stig Palmquist <stig@stig.io>
To: oss-security@lists.openwall.com
Message-ID: <gawci7t5wtkbk3kj3d3wjqqyy6jshli6mnyimynu5cngjvtm72@chxdlvz3vhsi>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Subject: [oss-security] CVE-2024-56406: Perl 5.34, 5.36, 5.38 and 5.40 are vulnerable to a
 heap buffer overflow when transliterating non-ASCII bytes

========================================================================
CVE-2024-56406                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2024-56406
  Distribution:  perl
      Versions:  from 5.40.0 until 5.40.2
                 from 5.38.0 until 5.38.4
                 from 5.36.0 through 5.36.3
                 from 5.34.0 through 5.34.3

      MetaCPAN:  https://metacpan.org/dist/perl
      VCS Repo:  https://github.com/Perl/perl5/


Perl 5.34, 5.36, 5.38 and 5.40 are vulnerable to a heap buffer overflow
when transliterating non-ASCII bytes

Description
-----------
A heap buffer overflow vulnerability was discovered in Perl. 

When there are non-ASCII bytes in the left-hand-side of the `tr`
operator, `S_do_trans_invmap` can overflow the destination pointer `d`.

   $ perl -e '$_ = "\x{FF}" x 1000000; tr/\xFF/\x{100}/;' 
   Segmentation fault (core dumped)

It is believed that this vulnerability can enable Denial of Service and
possibly Code Execution attacks on platforms that lack sufficient
defenses.

Problem types
-------------
CWE-122 Heap-based Buffer Overflow
CWE-787 Out-of-bounds Write

Mitigations
-----------
Users should update perl to 5.40.2 or 5.38.4, or apply the upstream
patch provided in the References section.

References
----------
https://github.com/Perl/perl5/commit/87f42aa0e0096e9a346c9672aa3a0bd3bef8c1dd.patch
https://metacpan.org/release/SHAY/perl-5.38.4/changes
https://metacpan.org/release/SHAY/perl-5.40.2/changes

Credits
-------
Nathan Mills, finder



-- 
Stig Palmquist
