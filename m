X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/10/21/1
Message-ID: <4EA1428D.4020109@redhat.com>
Date: Fri, 21 Oct 2011 15:29:41 +0530
From: Huzaifa Sidhpurwala <huzaifas@...hat.com>
To: oss-security@...ts.openwall.com
CC: Solar Designer <solar@...nwall.com>
Subject: Re: hardlink(1) has buffer overflows, is unsafe on changing trees
Content-Type: text/plain; charset=utf-8

On 10/20/2011 08:27 PM, Josh Bressers wrote:

>> The hardlink(1) program from Fedora is susceptible to buffer overflows of
>> fixed-size nambuf1 and nambuf2 buffers when run on a tree with deeply
>> nested directories and/or with long directory or file names.  I was able
>> to reproduce the problem (got a segfault) by running the program on a
>> directory containing 20 nested directories with 250-character names.
>>
>
> CVE-2011-3630 hardlink buffer overflows
> https://bugzilla.redhat.com/show_bug.cgi?id=746709
>

FORTIFY_SOURCE should really be able to catch this buffer overflow.
The buffer being overflown here in in BSS, But strcat() is used to 
append to this buffer and __builtin___strcat_chk catches it, resulting 
in the program being terminated.

Nice one though!


-- 
Huzaifa Sidhpurwala / Red Hat Security Response Team
