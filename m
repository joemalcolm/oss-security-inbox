X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/10/15/11
Message-ID: <deb7a2310910150744j36c32728t54e9a649edc8e46e@mail.gmail.com>
Date: Thu, 15 Oct 2009 16:44:49 +0200
From: Julien Tinnes <julien.tinnes@...il.com>
To: oss-security@...ts.openwall.com
Cc: "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE request: oping allows the disclosure of  arbitrary file contents
Content-Type: text/plain; charset=utf-8

On Thu, Oct 15, 2009 at 4:34 PM, Josh Bressers <bressers@...hat.com> wrote:
> ----- "Julien Tinnes" <jt@....org> wrote:
>>
>> in case anyone cares, oping also attempts to drop privileges with
>> setuid(getuid()); without checking setuid()'s return value.
>>
>> It's an obvious vulnerability, because a local attacker can make
>> setuid() fail by setting a resource limit of 0 for RLIMIT_NPROC with
>> setrlimit().
>>
>
> Does that have any security implications though? I've not looked at the app.
> If it's a security problem, I'll give it a CVE id.

I didn't really look either. Because of this, everything will run as
root while it shouldn't, but an attacker might need a second bug to
elevate privileges.
I would still consider it a security problem.

Julien
