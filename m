X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/08/23/4
Message-ID: <CACYkhxiNS5rhFzyDRxSbn2ZE2H+aoKz7=Z15hVmxJcdXUNu7=Q@mail.gmail.com>
Date: Fri, 23 Aug 2013 15:59:08 +1000
From: Michael Samuel <mik@...net.net>
To: oss-security@...ts.openwall.com
Subject: Re: [PATCH] implement privmode support in dash
Content-Type: text/plain; charset=utf-8

On 23 August 2013 15:42, Seth Arnold <seth.arnold@...onical.com> wrote:

> Regardless of the answer, it is probably worth using bash's mitigation
> in dash, but I'm curious if we'll make discovering future bugs in setuid
> programs more difficult to spot by happenstance by doing so.
>

I know of one instance where this has fooled a developer into thinking that
'nice' drops privileges (because they were executing a shell script through
nice).

One could argue that the developer is at fault and that programs that use
suid bits require extra-special care - but it's often not the developer
that needs protecting.

Could an alert (via stderr or syslog) be presented when the mitigation is
activated implicitly?

