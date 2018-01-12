X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/01/12/5
Message-ID: <20180112155812.l3ye6n4ymengrcbc@jwilk.net>
Date: Fri, 12 Jan 2018 16:58:13 +0100
From: Jakub Wilk <jwilk@...lk.net>
To: oss-security@...ts.openwall.com
Subject: Re: Libc Realpath Buffer Underflow CVE-2018-1000001
Content-Type: text/plain; charset=utf-8

* halfdog <me@...fdog.net>, 2018-01-11, 21:34:
>One of the weaknesses of Linux kernel is, that it is not fully POSIX 
>compliant

To clarify, POSIX deliberately doesn't have concepts of "kernel" or 
"system call"[*]. If you're debating POSIX compliance, you should take 
the whole system (kernel, libc, compiler, shell and what not...) into 
account.

That said, it's true that the current behavior of the getcwd() syscall, 
apart from being incredibly stupid, makes building a POSIX-compliant OS 
on top of the Linux kernel harder than it could be.


[*] http://pubs.opengroup.org/onlinepubs/9699919799/xrat/V4_xbd_chap03.html#tag_21_03_00_77

-- 
Jakub Wilk
