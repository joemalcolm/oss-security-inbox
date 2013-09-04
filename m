X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/09/04/1
Message-ID: <CAGVo=bE1Q8zRkm9XCqDXYjbpRiFtkKr1Ru51mLbVAT_Pj5=-AQ@mail.gmail.com>
Date: Wed, 4 Sep 2013 02:14:08 -0400
From: Eric Wimberley <wimberleyeric@...il.com>
To: oss-security@...ts.openwall.com
Subject: Watchman - GCC buffer overflow framework
Content-Type: text/plain; charset=utf-8

I'm working on a new framework that does a better job than glibc's malloc
implementation at preventing overflows. Right now it just does the heap,
but there are plans to improve upon stack canary checks as well. It's not
really at a production level yet, but feel free to test it out and comment.

https://github.com/ewimberley/Watchman

