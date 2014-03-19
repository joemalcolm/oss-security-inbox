X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/03/19/6
Message-ID: <CAL2OCeX0+cNufGHC9P2wdu7wYkAUN8YPuieamwVxmc4_+XRuxQ@mail.gmail.com>
Date: Wed, 19 Mar 2014 21:56:07 +0800
From: Qixue Xiao <s2exqx@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE request for a bug in gnu coreutils 8.22
Content-Type: text/plain; charset=utf-8

I am not sure whether this needs a CVE.


this bug will result an illegal memory access, which may be leak
information without authority.

and the author had fixed it after my report.

please see:
http://debbugs.gnu.org/cgi/bugreport.cgi?bug=16855


### Bug overview

    shuf -er or shuf -eer [ segment fault]
    impact [coreutils 8.22 ]

```
[15:03:59]xqx <at> server:~/data/xqx/projects/coreutils-8.22$
./obj-gcov/src/shuf -er
Segmentation fault (core dumped)

```

thanks
.

