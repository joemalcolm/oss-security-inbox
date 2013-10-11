X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/10/11/11
Message-ID: <CAMoU6uZ5o7Cc96T6RZmHeS=GRZ7U1bYS+LT60E2mJntUrMeG5A@mail.gmail.com>
Date: Fri, 11 Oct 2013 19:10:31 +0200
From: Bas Pape <baspape@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request - Quassel IRC SQL injection
Content-Type: text/plain; charset=utf-8

2013/10/11 Kurt Seifried <kseifried@...hat.com>:
> On 10/09/2013 10:48 AM, Bas Pape wrote:
>> No upstream fix is available at this time, although the below
>> patch does fix the current issue.
>
> Please use CVE-2013-4422 for this issue.

Thanks, glad to see I didn't botch the request. I am correct in
thinking Mitre will fill the details (e.g. description and references)
once they get around to it, or does that require something from my or
upstream's end?

For completeness sake, upstream fixed it [1] and announced a new
release (0.9.1 [2]).

[1] https://github.com/quassel/quassel/commit/aa1008be162cb27da938cce93ba533f54d228869
[2] http://quassel-irc.org/node/120

--
Tucos
