X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/10/08/22
Message-ID: <CALCETrXDNiGfvSiRLR_nomXMY8EujAaUC3vzSrf2KXaO-8u+gw@mail.gmail.com>
Date: Wed, 8 Oct 2014 12:54:15 -0700
From: Andy Lutomirski <luto@...capital.net>
To: oss-security@...ts.openwall.com
Subject: CVE-2014-7975: 0-day umount denial of service
Content-Type: text/plain; charset=utf-8

I just screwed up and typoed my git send-email command, so there's now
a publicly available exploit for a new umount bug.

Fortunately this one isn't terribly serious, but it might be usable
for more than just DoS if some daemon reacts poorly to being unable to
write to the filesystem.

http://thread.gmane.org/gmane.linux.kernel.stable/109312

Sorry!

--Andy
