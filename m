X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/02/27/19
Message-ID: <CAH5b-BXazLei2bQxaZRsF7fnQC0nM_KPXMf5ienPi8UFjZQW8Q@mail.gmail.com>
Date: Mon, 27 Feb 2012 12:42:35 +0100
From: yersinia <yersinia.spiros@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: Attack on badly configured Netfilter-based firewalls
Content-Type: text/plain; charset=utf-8

On Sun, Feb 26, 2012 at 11:37 PM, Eric Leblond <eric@...it.org> wrote:

> Hello,
>
>
> This is a correct definition of the condition on the network required
> for the attack.
>
> Hi. If i have undestood correcly,  setting arp_announce and arp_ignore as
below should be fix the problem you have  described, isn't it ?

net.ipv4.conf.all.arp_announce=1
net.ipv4.conf.all.arp_ignore=2


We set so by default in our env by policy.

Thanks and Regards

Elia

