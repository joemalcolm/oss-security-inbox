X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/01/29/11
Message-ID: <87twlwqfat.fsf@marcos.anarc.at>
Date: Fri, 29 Jan 2016 15:52:26 -0500
From: anarcat <anarcat@...ngeseeds.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: out-of-bounds write with cpio 2.11
Content-Type: text/plain; charset=utf-8

I can't actually reproduce this on Debian, which runs 2.11 all the way
back to squeeze:

(gdb) run -i < ../overflow.cpio
Starting program: /bin/cpio -i < ../overflow.cpio
[Thread debugging using libthread_db enabled]
Using host libthread_db library
"/lib/x86_64-linux-gnu/libthread_db.so.1".
/bin/cpio: Malformed number0000000
/bin/cpio: warning: skipped 8 bytes of junk
/bin/cpio: Substituting `.' for empty member name
/bin/cpio: . not created: newer or same age version exists
/bin/cpio: premature end of file
[Inferior 1 (process 191) exited with code 02]

Did i miss something?

a.
-- 
The United States is a nation of laws:
badly written and randomly enforced.
                        - Frank Zappa

