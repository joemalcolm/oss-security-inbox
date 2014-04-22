X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/04/22/5
Message-ID: <CANDc0N+RU6oJ0aDYUGGB6o9AQCD9HODEX58+r838Kzf3Ly=mPw@mail.gmail.com>
Date: Tue, 22 Apr 2014 15:46:48 +0800
From: Eduardo Tongson <propolice@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request: Nagios Remote Plugin Executor <= 2.15 Remote Command Execution
Content-Type: text/plain; charset=utf-8

On Tue, Apr 22, 2014 at 12:11 PM,  <cve-assign@...re.org> wrote:
> ...
> Use CVE-2014-2913.
>
>

Thanks.

> We have not seen additional comments about whether \r would prevent an
> alternate attack approach. If it does, a separate CVE ID would be
> assigned. We do not know of a version of Bash in which \r separates
> commands in the same way that \n does. For example:
>
>   % /bin/bash -c "`echo -e "echo a\x0aecho b"`" | cat -v
>   a
>   b
>   % /bin/bash -c "`echo -e "echo a\x0decho b"`" | cat -v
>   a^Mecho b
>

Agreed. It's pointless to add a bunch of characters to a blacklist if
they do not have any effect.
