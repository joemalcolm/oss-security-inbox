X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/03/19/2
Message-ID: <CAJzxamJ=aLUXq+DKxdZnGb5VZEtvzZBx53WeW6C7Kjo2ywAVYw@mail.gmail.com>
Date: Mon, 19 Mar 2012 21:34:14 +1100
From: David Black <disclosure@....org>
To: oss-security@...ts.openwall.com
Subject: CVE request for bitlebee
Content-Type: text/plain; charset=utf-8

A few months ago it was reported that Bitlbee did not drop extra
groups(in unix.c) that the process launching it had.
There hasn't been a CVE assigned to this issue, so I thought I would
follow up and request one.
The original report can be found at
http://bugs.bitlbee.org/bitlbee/ticket/852 and it was fixed in
http://bugs.bitlbee.org/bitlbee/changeset/devel%2C856.

--
Thank you.
