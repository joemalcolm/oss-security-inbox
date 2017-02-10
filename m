X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/02/10/8
Message-ID: <20170210162058.lsxxabktorrk6uxf@perpetual.pseudorandom.co.uk>
Date: Fri, 10 Feb 2017 16:20:58 +0000
From: Simon McVittie <smcv@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: Re: Use after free in libmysqlclient.so
Content-Type: text/plain; charset=utf-8

On Fri, 10 Feb 2017 at 11:59:59 +0100, pali@...n.org wrote:
> On Friday 27 January 2017 23:53:29 pali@...n.org wrote:
> > C client library for MySQL (libmysqlclient.so) has use-after-free
> > defect which can cause crash of applications using that MySQL
> > client.

Is this a security vulnerability, or just a bug?

How would an attacker cause this to happen in the application
that they wish to target?

    S
