Received: (qmail 26136 invoked by uid 550); 30 May 2025 21:31:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19979 invoked from network); 30 May 2025 12:29:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stig.io; s=MBO0001;
	t=1748608171;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=8e3b6RsJkgUdxbrQo5Nrc569xuC5WHv25Oe7Rk8ppcc=;
	b=zYyDj82tIbwgvBruKy+xf+Qg3o3clFVd6m2JjCTV/yHVzdkWuIGfZD5jzYGOXirjiJmCa+
	tTXFMf7bM/BPkWlwT0LsJgwHpuR87rHPXlbDfPWyAyTa5s3y1TEqL1PdTrwajGo8sQTZ9X
	PPvp4aHBrCrQBB8mF2WM2FRzluPs/76dk5LByysYHbR0kLxwZD9wSSi2CYzTvYVea8dLLA
	FunCZX9zAQxEGqtbf0e8Y7tGSkojz9bOy3zxtraZPcDld8BuT8SKwJWqi8n91aMe5v9Iih
	rpkmg72fCwx66RHPJ9ODSqCUQWFfNhqHBNPRf41Uh4iFNqNg5YnlKwWoT9bjlg==
Date: Fri, 30 May 2025 14:29:29 +0200
From: Stig Palmquist <stig@stig.io>
To: oss-security@lists.openwall.com
Message-ID: <omnnpezilawlern5txh6xnng26fmenimxl7ijy6oykuxlurfbg@yo2pvsq3q6v6>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Subject: [oss-security] CVE-2025-40909: Perl threads have a working directory race condition
 where file operations may target unintended paths

========================================================================
CVE-2025-40909                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2025-40909
  Distribution:  perl
      Versions:  from 5.13.6 before 5.41.13

      MetaCPAN:  https://metacpan.org/dist/perl
      VCS Repo:  https://github.com/perl/perl5


Perl threads have a working directory race condition where file
operations may target unintended paths

Description
-----------
Perl threads have a working directory race condition where file
operations may target unintended paths.

If a directory handle is open at thread creation, the process-wide
current working directory is temporarily changed in order to clone that
handle for the new thread, which is visible from any third (or more)
thread already running. 

This may lead to unintended operations such as loading code or
accessing files from unexpected locations, which a local attacker may
be able to exploit.

The bug was introduced in commit
11a11ecf4bea72b17d250cfb43c897be1341861e and released in Perl version
5.13.6

Problem types
-------------
CWE-362 Concurrent Execution using Shared Resource with Improper
Synchronization ('Race Condition')
CWE-426 Untrusted Search Path

Solutions
---------
Update perl to an unaffected version, or apply the patch provided in
the references section.


References
----------
https://github.com/Perl/perl5/commit/918bfff86ca8d6d4e4ec5b30994451e0bd74aba9.patch
https://www.openwall.com/lists/oss-security/2025/05/22/2
https://github.com/Perl/perl5/issues/23010
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=1098226
https://github.com/Perl/perl5/issues/10387
https://perldoc.perl.org/5.14.0/perl5136delta#Directory-handles-not-copied-to-threads
https://github.com/Perl/perl5/commit/11a11ecf4bea72b17d250cfb43c897be1341861e

Credits
-------
Vincent Lefevre, finder

