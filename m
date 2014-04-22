X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/04/22/11
Message-ID: <CALCETrWJhUYX_rLYUe29SWSVWPJfV13VzZzN4cF_m8dJJJy-+A@mail.gmail.com>
Date: Tue, 22 Apr 2014 14:37:51 -0700
From: Andy Lutomirski <luto@...capital.net>
To: oss-security@...ts.openwall.com
Subject: CVE-2014-0181: Linux network reconfiguration due to incorrect netlink checks
Content-Type: text/plain; charset=utf-8

It is possible to reconfigure the network on Linux by calling write(2)
on an appropriately connected network socket.  By passing such a
socket as stdout or stderr to a setuid program, anyone can reconfigure
the network.

Eric Biederman sent patches to netdev containing a possible fix.

-- 
Andy Lutomirski
AMA Capital Management, LLC
