X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/10/23/5
Message-ID: <CALx_OUDF2Rs1b63NMhh1qBCrRGyX87yb40hh8gjctU8FT4HtRQ@mail.gmail.com>
Date: Thu, 23 Oct 2014 08:24:00 -0700
From: Michal Zalewski <lcamtuf@...edump.cx>
To: oss-security <oss-security@...ts.openwall.com>
Subject: Re: strings / libbfd crasher
Content-Type: text/plain; charset=utf-8

> http://lcamtuf.coredump.cx/stringme

The immediate cause is due to srec_scan() in srec.c decreasing 'bytes'
without range checking until it wraps around. The already-bad value of
'bytes' is assigned to 'sec->size' few lines before the crash, so
perhaps there would be potential for exploitability later down the
line; but the code ends up crashing soon thereafter in a 'while (bytes
> 0)' loop that has no other exit conditions. That loop would need to
go over the entire address space without SEGV to avoid the crash.

/mz
