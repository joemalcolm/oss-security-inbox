X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/06/21/14
Message-ID: <1285918669.841735.1308684244595.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Tue, 21 Jun 2011 15:24:04 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: taskstats authorized_keys presence infoleak PoC
Content-Type: text/plain; charset=utf-8


----- Original Message -----
> /*
> * This program tries to learn whether ~user/.ssh/authorized_keys exists
> * and is nonempty for any user on local machine. It uses world-readable
> * taskstats' nature to get somewhat private io statistics information.  If
> * implant taskstats or /proc//io polling into ssh client, it would be
> * possible to learn precise authorized_keys' size (and estimate private
> * key's(s') size).

Are you considering this a flaw, or just an interesting security exercise?
Nothing currently comes to mind, but it's possible there could be other
data where knowing it exists and the size would be useful. I'm thinking
this isn't terribly dangerous for something like ssh.

This is very interesting either way. Well done.

-- 
    JB
