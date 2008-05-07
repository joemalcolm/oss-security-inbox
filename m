X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/05/07/3
Message-ID: <20080507194238.GX12850@outflux.net>
Date: Wed, 7 May 2008 12:42:38 -0700
From: Kees Cook <kees@...ntu.com>
To: oss-security@...ts.openwall.com, "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE-2008-0352 is a dup of CVE-2007-4567
Content-Type: text/plain; charset=utf-8

Hello,

I believe CVE-2008-0352 is an accidental dup of CVE-2007-4567.  The
referenced 2.6.21.2 commit[1] matches the commit used to originally
address CVE-2007-4567 in Ubuntu's 2.6.20-based kernel[2].

Thanks,

-Kees

[1] http://git.kernel.org/?p=linux/kernel/git/stable/linux-2.6.21.y.git;a=commitdiff;h=08a6507044dd70c326de3ea484fd6d29b8101f17
[2] http://kernel.ubuntu.com/git?p=ubuntu-security/ubuntu-feisty.git;a=commitdiff;h=158eeb50e460dd7f6e6bc13e2322989bd87dd804

-- 
Kees Cook
Ubuntu Security Team
