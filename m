X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/01/30/13
Message-ID: <BAY405-EAS152F9FC814BD515624211BADF310@phx.gbl>
Date: Fri, 30 Jan 2015 11:09:01 +0100
From: linkbc02 <linkbc02@...look.com>
To: <oss-security@...ts.openwall.com>
Subject: R: GHOST gethostbyname() heap overflow in glibc (CVE-2015-0235)
Content-Type: text/plain; charset=utf-8

Sorry Alexander, I quoted the wrong one.
I can confirm, Dovecot, at least, got crashed, I asked also Timo S. that is
digging about it.
Screenshot
http://goo.gl/JwhWIf



|-----Messaggio originale-----
|Da: Solar Designer [mailto:solar@...nwall.com]
|Inviato: venerdì 30 gennaio 2015 10:47
|A: oss-security@...ts.openwall.com
|Cc: linkbc02
|Oggetto: Re: [oss-security] GHOST gethostbyname() heap overflow in glibc
|(CVE-2015-0235)
|
|On Fri, Jan 30, 2015 at 10:24:56AM +0100, linkbc02 wrote:
|> Dovecot: It seems that libdovecot-storage.so can be triggered and you can
|read the core dump
|>
|> imap[29914]: segfault at 0 ip 00007f1e525263a0 sp 00007fffaeed7818
|>  error 4 in libdovecot-storage.so.0.0.0[7f1e5249e000+10f000]
|
|I reluctantly approved the above posting even though it contains no
|indication this has anything to do with GHOST, and it bottom-quotes a
|mostly irrelevant message (latest one from the thread).
|
|linkbc02, if you have any reason to believe this is relevant to GHOST,
|then please explain.  And if you have no such reason, then please also
|state so, and we'll more confidently disregard this false alarm. ;-)
|
|Alexander
