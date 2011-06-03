X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/06/03/1
Message-ID: <4DE87A38.3030604@redhat.com>
Date: Fri, 03 Jun 2011 14:07:52 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE request: kernel: ksm: race between ksmd and exiting task
Content-Type: text/plain; charset=utf-8

A race condition issue was found in the KSM implementation.

https://bugzilla.redhat.com/show_bug.cgi?id=710338
Report: http://www.spinics.net/lists/linux-mm/msg20233.html
Proposed patch: http://www.spinics.net/lists/linux-mm/msg20301.html

Thanks, Eugene
