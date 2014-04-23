X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/04/23/1
Message-ID: <CALCETrWAHQsaiJtAF3LhqcrHwgq8N+q8e4tCBH6HiBL=Ffmu3g@mail.gmail.com>
Date: Tue, 22 Apr 2014 20:01:53 -0700
From: Andy Lutomirski <luto@...capital.net>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2014-0181: Linux network reconfiguration due to incorrect netlink checks
Content-Type: text/plain; charset=utf-8

On Apr 22, 2014 2:37 PM, "Andy Lutomirski" <luto@...capital.net> wrote:
>
> It is possible to reconfigure the network on Linux by calling write(2)
> on an appropriately connected network socket.  By passing such a
> socket as stdout or stderr to a setuid program, anyone can reconfigure
> the network.

s/network socket/netlink socket

>
> Eric Biederman sent patches to netdev containing a possible fix.
>
> --
> Andy Lutomirski
> AMA Capital Management, LLC

