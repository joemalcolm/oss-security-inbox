X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/02/24/13
Message-ID: <4D66B6FF.8030503@redhat.com>
Date: Thu, 24 Feb 2011 20:52:31 +0100
From: Jan Lieskovsky <jlieskov@...hat.com>
To: "Steven M. Christey" <coley@...us.mitre.org>
CC: oss-security <oss-security@...ts.openwall.com>, Mike Tremaine <mgt@...llarcore.net>, Karel Klic <kklic@...hat.com>
Subject: CVE Request -- logwatch: Privilege escalation due improper sanitization of special characters in log file names
Content-Type: text/plain; charset=utf-8

Hello Josh, Steve, vendors,

   a security flaw was found in the way logwatch, a log file
   analysis program, pre-processed log files, containing certain
   special characters in their names. A remote attacker could
   use this flaw to execute arbitrary code with the privileges
   of the privileged system user (root) by creating a
   specially-crafted log file, subsequently analyzed by the
   logwatch script.

   Upstream bug report:
   [1] http://sourceforge.net/tracker/?func=detail&aid=3184223&group_id=312875&atid=1316824

   Related patch:
   [2] http://logwatch.svn.sourceforge.net/viewvc/logwatch?view=revision&revision=26

   Other references:
   [3] http://sourceforge.net/mailarchive/forum.php?thread_name=4D604843.7040303%40mblmail.net&forum_name=logwatch-devel
   [4] https://bugzilla.redhat.com/show_bug.cgi?id=680237

Could you allocate a CVE id for this issue?

Thanks && Regards, Jan.
--
Jan iankko Lieskovsky / Red Hat Security Response Team
