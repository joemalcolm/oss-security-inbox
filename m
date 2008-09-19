X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/09/19/4
Message-ID: <1853374455.1626501221830548775.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Fri, 19 Sep 2008 09:22:28 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security <oss-security@...ts.openwall.com>
Subject: viewvc security flaw?
Content-Type: text/plain; charset=utf-8

I'm not sure about this one, I'm wondering if someone else has an opinion:
http://viewvc.tigris.org/issues/show_bug.cgi?id=354

It was submitted as a Fedora security update, which I'm letting through for
now, as better safe than sorry.

To sum it up, it looks like the mime type used to display a given file in
viewvc can be set via the URL.  Obviously this means that an attacker could
force an arbitrary mime type on any file in a viewvc repository.

It strikes me as not crossing a trust boundary though, as I suspect you'd need
something malicious in the repo in order for this to really be useful.  If the
bad guys can already add arbitrary content, you have bigger problems.

-- 
    JB
