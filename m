X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/09/26/4
Message-ID: <198718832.98881222452979039.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Fri, 26 Sep 2008 14:16:19 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security <oss-security@...ts.openwall.com>
Subject: CVE-2008-4182 clarification
Content-Type: text/plain; charset=utf-8

Hello eveyone,

So I spent some time today trying to figure out the Horde issue described in CVE-2008-4182.  Needless to say the advisory is hard to follow, so the upstream
folks were kind enough to clarify this for me.

This issue affects Turba and Imp.  The fix can be found here:
http://cvs.horde.org/diff.php/imp/test.php?r1=1.70&r2=1.71
http://cvs.horde.org/diff.php/turba/test.php?r1=1.22&r2=1.23

We don't need another CVE id as it's the same issue in both files.

-- 
    JB
