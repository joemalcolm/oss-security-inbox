X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/07/23
Message-ID: <CALx_OUAnZoME3gb8KD_XmiM9m+NssgV7wjcV8Oc9orNfoxsPng@mail.gmail.com>
Date: Fri, 7 Nov 2014 13:11:59 -0800
From: Michal Zalewski <lcamtuf@...edump.cx>
To: oss-security <oss-security@...ts.openwall.com>
Subject: Re: random number generators - rand(), random(), etc
Content-Type: text/plain; charset=utf-8

> https://sourceware.org/ml/libc-alpha/2014-11/msg00143.html

In general, rand() and random() are not backed by cryptosafe PRNGs and
should not be used for security purposes.

/mz
