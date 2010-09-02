X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/09/02/1
Message-ID: <4C7F3B8F.4090800@redhat.com>
Date: Thu, 02 Sep 2010 13:52:15 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE-2010-2960 kernel: keyctl_session_to_parent null ptr deref
Content-Type: text/plain; charset=utf-8

Reported by Tavis Ormandy.

Patches (not in upstream yet):
https://bugzilla.redhat.com/show_bug.cgi?id=627440#c4
https://bugzilla.redhat.com/show_bug.cgi?id=627440#c5

You might need to comment out all the pam_keyinit calls in /etc/pam.d/ 
to reproduce the problem if the version of the kernel you are using is 
affected.

Introduced via upstream commit ee18d64c (v2.6.32-rc1).

References:
https://bugzilla.redhat.com/CVE-2010-2960
https://bugzilla.redhat.com/show_bug.cgi?id=627440#c3

Thanks, Eugene
-- 
main(i) { putchar(182623909 >> (i-1) * 5&31|!!(i<7)<<6) && main(++i); }
