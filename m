X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/08/08/18
Message-ID: <20130808192059.GA11002@eldamar.local>
Date: Thu, 8 Aug 2013 21:20:59 +0200
From: Salvatore Bonaccorso <carnil@...ian.org>
To: oss-security@...ts.openwall.com
Cc: Paul Gevers <elbrus@...ian.org>, Gandalf <gandalf@...ti.net>
Subject: CVE Request: Regression introduced in cacti with fix for CVE-2013-1435
Content-Type: text/plain; charset=utf-8

Hi Kurt

The fix for CVE-2013-1435[1] introduced a regression:

 [1] http://svn.cacti.net/viewvc?view=rev&revision=7393

It was reported in [2] and upstream proposed a fix [3] which was
confirmed to work by two of the involved people.

 [2] http://sourceforge.net/mailarchive/message.php?msg_id=31262707
 [3] http://sourceforge.net/mailarchive/message.php?msg_id=31262712

The corresponding svn commits should be the following:

 [4] http://svn.cacti.net/viewvc?view=rev&revision=7408
 [5] http://svn.cacti.net/viewvc?view=rev&revision=7409
 [6] http://svn.cacti.net/viewvc?view=rev&revision=7413

Does this need a follow-up CVE assignment for the regression part
introduced?

Regards,
Salvatore
