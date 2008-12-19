X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/12/19/3
Message-ID: <20081219191637.6f5f0bc1@redhat.com>
Date: Fri, 19 Dec 2008 19:16:37 +0100
From: Tomas Hoger <thoger@...hat.com>
To: OSS Security <oss-security@...ts.openwall.com>
Cc: coley@...re.org
Subject: CVE request - pdfjam
Content-Type: text/plain; charset=utf-8

Hi!

Insecure temporary file handling flaw was reported for pdfjam:

https://bugzilla.novell.com/show_bug.cgi?id=459031

Issue affects all 3 scripts shipped in pdfjam: pdf90, pdfjoin and pdfnup

They create various temporary files in tempfileDir (/var/tmp), process
id ($$) is used for file name uniqueness.

-- 
Tomas Hoger / Red Hat Security Response Team
