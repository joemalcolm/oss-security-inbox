X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/04/20/2
Message-ID: <4DAE611C.4000503@redhat.com>
Date: Wed, 20 Apr 2011 12:29:16 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE request: kernel: missing socket check in can/bcm release
Content-Type: text/plain; charset=utf-8

A missing socket check in can/bcm release

Proposed patch: http://permalink.gmane.org/gmane.linux.network/192898
https://bugzilla.redhat.com/show_bug.cgi?id=698057

Thanks, Eugene
-- 
main(i) { putchar(182623909 >> (i-1) * 5&31|!!(i<7)<<6) && main(++i); }
