X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/07/25
Message-ID: <loom.20141107T221529-292@post.gmane.org>
Date: Fri, 7 Nov 2014 21:21:52 +0000 (UTC)
From: jb <jb.1234abcd@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: random number generators - rand(), random(), etc
Content-Type: text/plain; charset=utf-8

Michal Zalewski <lcamtuf@...> writes:

> 
> > https://sourceware.org/ml/libc-alpha/2014-11/msg00143.html
> 
> In general, rand() and random() are not backed by cryptosafe PRNGs and
> should not be used for security purposes.
> 
> /mz
> 
> 

Well, rand() in Linux and ISO C standard are not threadsafe, but random(),
srandom(), etc in Linux are claimed to be threadsafe:

- pthread(7) - the function random() is listed as threadsafe
- random(3)
  Multithreading (see pthreads(7))
       The random(), srandom(),  initstate(),  and  setstate()  functions  are
       thread-safe.

But apparently they are not.

A problem ?

jb


