X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/01/08/5
Message-ID: <CANn89iLnNC16YVkNJ4y8Bet2C2Yy0F=wjyii1RRpqfCUL=Okxw@mail.gmail.com>
Date: Tue, 8 Jan 2019 07:14:11 -0800
From: Eric Dumazet <edumazet@...gle.com>
To: 3ntr0py1337@...il.com
Cc: security@...nel.org, oss-security@...ts.openwall.com
Subject: Re: Linux Kernel 4.20(21) deadlock vulnerability.
Content-Type: text/plain; charset=utf-8

Hello Entropy Moe

syzbot reported dozens of similar issues involving printk

https://syzkaller.appspot.com/

Not sure why this would be a security concern ?

Thanks.

On Tue, Jan 8, 2019 at 7:08 AM Entropy Moe <3ntr0py1337@...il.com> wrote:
>
> Hello,
> I wanted to let you know that there seem to be a deadlock vulnerability on the linux kernel 4.20.
> I am attaching the result report from syzkaller which also got the c code for replication.
>
> thank you,
>
