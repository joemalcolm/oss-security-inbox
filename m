X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/02/14/7
Message-ID: <CA+rthh9y56D09z6pkcFyBSQ49Zwj2y=Rv+JckcOw+L0SvSD3zw@mail.gmail.com>
Date: Thu, 14 Feb 2013 19:39:23 +0100
From: Mathias Krause <minipli@...glemail.com>
To: oss-security@...ts.openwall.com
Cc: Eric Dumazet <edumazet@...gle.com>, "David S. Miller" <davem@...emloft.net>,  Brad Spengler <spender@...ecurity.net>
Subject: CVE Request: kernel -- local DOS (endless loop with interrupts disabled)
Content-Type: text/plain; charset=utf-8

Hi,

Eric Dumazet recently fixed a local DOS in commit 77c1090 "net: fix
infinite loop in __skb_recv_datagram()"? An unprivileged local user
can easily trigger this bug and lock-up the system.

A reproducer is attached.

Thanks,
Mathias

View attachment "sock_lock.c" of type "text/x-csrc" (1030 bytes)
