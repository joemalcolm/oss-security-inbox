X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/04/07/1
Message-ID: <49DAE693.9020400@redhat.com>
Date: Tue, 07 Apr 2009 13:37:23 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>, Chris Wright <chrisw@...hat.com>, Greg KH <greg@...ah.com>
Subject: CVE request: kernel: exit_notify: kill the wrong capable(CAP_KILL) check
Content-Type: text/plain; charset=utf-8

A malicious application can execute a setuid binary before exit. This
would mean that we will not reset the ->exit_signal to SIGCHLD unless
the binary drops CAP_KILL.

https://bugzilla.redhat.com/show_bug.cgi?id=493771
http://git.kernel.org/linus/432870dab85a2f69dc417022646cb9a70acf7f94

Chris/Greg, we probably need this in -stable.

Thanks, Eugene
-- 
Eugene Teo, RHCA, RHCSS / Red Hat Security Response Team
