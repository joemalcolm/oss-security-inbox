X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/07/2
Message-ID: <CAOp4FwQth_WiHAi916NNM02_-56rpR8gGOk=Yo4xH3EhZvGiUg@mail.gmail.com>
Date: Fri, 6 Nov 2026 23:57:43 +0400
From: Loganaden Velvindron <loganaden@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: "sshole": password authentication bypass: OpenSSH + musl libc
Content-Type: text/plain; charset=utf-8

I've done some auditing of crypt() usage in the Linux ecosystem.
Most software is now handling NULL from crypt() but there are some issues like
https://github.com/InfrastructureServices/vsftpd/pull/9

I think it's time for musl libc to revisit the idea and return NULL on
failure and see
which software is still breaking.

The commit in musl dates back to 2012. A lot has happened since 2012:
https://git.musl-libc.org/cgit/musl/commit/?id=b3c4cc121f70faea45389fe7ddc1127ed5cbd8bb
