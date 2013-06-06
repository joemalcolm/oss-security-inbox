X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/06/06/9
Message-ID: <CAHmME9qaqRSL05diFJM=-9UPCaMBhj9LrVWN4SbRGP71J1e-pQ@mail.gmail.com>
Date: Thu, 6 Jun 2013 15:31:25 +0200
From: "Jason A. Donenfeld" <Jason@...c4.com>
To: oss-security <oss-security@...ts.openwall.com>
Subject: Re: chroots & uid sharing
Content-Type: text/plain; charset=utf-8

Alright that one-liner killed kittens. Sorry. Here we go:

frisell zx2c4 # cat find-bad-chroots.py
#!/usr/bin/env python2

import os

chroots = { }

for pid in os.listdir("/proc/"):
        if not pid.isdigit():
                continue
        try:
                uid = os.stat("/proc/" + pid).st_uid
                root = os.readlink("/proc/" + pid + "/root")
        except:
                continue
        if uid not in chroots:
                chroots[uid] = [root]
        elif root not in chroots[uid]:
                chroots[uid].append(root)

for uid in chroots:
        if len(chroots[uid]) > 1:
                print "UID: %d" % uid
                for root in chroots[uid]:
                        print "\t%s" % root

frisell zx2c4 # ./find-bad-chroots.py
UID: 25
        /var/empty
        /
