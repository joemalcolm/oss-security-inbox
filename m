X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/03/15/11
Message-ID: <876004730.18832.1300220902526.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Tue, 15 Mar 2011 16:28:22 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley <coley@...re.org>
Subject: Re: CVE request for python-feedparser
Content-Type: text/plain; charset=utf-8


----- Original Message -----
> python-feedparser 5.0.1 fixes three flaws:
> 
> https://code.google.com/p/feedparser/
> 
> * Fix issue 91 (invalid text in XML declaration causes sanitizer to
> crash)

https://code.google.com/p/feedparser/issues/detail?id=91

Use CVE-2011-1156


> * Fix issue 254 (sanitization can be bypassed by malformed XML
> comments)

https://code.google.com/p/feedparser/issues/detail?id=254

Use CVE-2011-1157


> * Fix issue 255 (sanitizer doesn't strip unsafe URI schemes)

https://code.google.com/p/feedparser/issues/detail?id=255

Use CVE-2011-1158

Thanks.

-- 
    JB
