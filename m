X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/03/30/3
Message-ID: <c06880b3-9447-3e3c-2c63-fd2efcfc5e4e@oracle.com>
Date: Wed, 30 Mar 2022 13:15:15 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com, Jeffrey Walton <noloader@...il.com>
Subject: Re: SpringShell and recent OpenJDK updates
Content-Type: text/plain; charset=utf-8

On 3/30/22 11:31, Jeffrey Walton wrote:
> Hi Everyone,
> 
> I saw Ubuntu patched OpenJDK 11 recently. [1] Was that due to SpringShell? [2]

The Spring Framework is separate from OpenJDK.  (Perhaps you were thinking of
the Swing framework, which is part of OpenJDK?)

The latest I've seen on SpringShell suggests it was dropped without warning
as a zero-day: https://bugalert.org/content/notices/2022-03-30-spring.html

-- 
         -Alan Coopersmith-                 alan.coopersmith@...cle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
