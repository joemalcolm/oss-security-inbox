X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/02/2
Message-ID: <20141102180640.GA8210@jwilk.net>
Date: Sun, 2 Nov 2014 19:06:40 +0100
From: Jakub Wilk <jwilk@...lk.net>
To: oss-security@...ts.openwall.com
Subject: unzip -t crasher
Content-Type: text/plain; charset=utf-8

Latest American fuzzy lop[0] tarball[1] contains a zip file that crashes 
unzip -t:

$ unzip -qt afl-0.43b/docs/samples/unzip_t_malloc.zip
foo/:  mismatching "local" filename (/UT),
         continuing with "central" filename version
*** Error in `unzip': free(): corrupted unsorted chunks: 0x00000000015d0170 ***

I'm not sure if inclusion of said zip file was intentional, but since 
the cat is already out of the bag, I thought I'll let you know.

[0] https://code.google.com/p/american-fuzzy-lop/
[1] http://lcamtuf.coredump.cx/afl.tgz

-- 
Jakub Wilk
