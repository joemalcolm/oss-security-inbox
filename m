X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/11/08/3
Message-ID: <CAOSRhROOAg33GnudkF910gx+a3Ee=VY3Z=qKOVJ3HngwUK_0Ww@mail.gmail.com>
Date: Tue, 8 Nov 2011 08:03:45 -0500
From: Dan Rosenberg <dan.j.rosenberg@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: Android: vold stack buffer overflow
Content-Type: text/plain; charset=utf-8

A local user with group "log" on Android may send a malformed message
to vold ("volume daemon"), causing a stack buffer overflow.  This has
been demonstrated to be exploitable to escalate privileges to root on
all Froyo (2.2.x) and Gingerbread (2.4.x)  devices via freeing an
arbitrary heap object and triggering a use-after-free condition [1].
It appears the bug was silently patched in Honeycomb (3.x), but note
that since Honeycomb is not open source, it does not fall within the
scope of this list.  Bug discovered and exploited by the Revolutionary
team [2].

-Dan

[1] https://github.com/revolutionary/zergRush/blob/master/zergRush.c
[2] http://revolutionary.io/
