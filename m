X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/03/08/8
Message-ID: <20110308120621.6ac54049@orphan>
Date: Tue, 8 Mar 2011 12:06:21 +0100
From: Tomas Hoger <thoger@...hat.com>
To: OSS Security <oss-security@...ts.openwall.com>
Subject: glibc locale escaping issue
Content-Type: text/plain; charset=utf-8

Hi!

Following glibc upstream and gentoo bug reports describe a bug in the
way locale command escapes its output.

http://sources.redhat.com/bugzilla/show_bug.cgi?id=11904
http://bugs.gentoo.org/show_bug.cgi?id=330923

Gentoo bug points out possible security implications.  I've not managed
to find an example where the locale command is used in a problematic way
and where this may cross trust boundaries, so I wonder if this is worth
handling as security fix vs. security enhancement.  Comments are
welcome.

The issue was fixed in GLSA 201011-01, but its text really only
mentions Tavis' issues.

-- 
Tomas Hoger / Red Hat Security Response Team
