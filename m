X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/11/10/2
Message-ID: <4CDA3F5D.8070101@redhat.com>
Date: Wed, 10 Nov 2010 14:44:45 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE Request: kernel: socket filters infoleak
Content-Type: text/plain; charset=utf-8

 From Dan Rosenberg, "The "mem" array used as scratch space for socket 
filters is not initialized, allowing unprivileged users to leak kernel 
stack bytes."

proposed fix: http://www.spinics.net/lists/netdev/msg146361.html

reference: https://bugzilla.redhat.com/show_bug.cgi?id=651698

For Dave I guess: 
http://lists.grok.org.uk/pipermail/full-disclosure/2010-November/077321.html

Eugene
-- 
main(i) { putchar(182623909 >> (i-1) * 5&31|!!(i<7)<<6) && main(++i); }
