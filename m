X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/07/25/1
Message-ID: <CALJHwhS5Qin0-snXT458ARcXDPTHAdpsS3ax1CCPFdWSeLeLAQ@mail.gmail.com>
Date: Mon, 25 Jul 2016 10:50:30 +1000
From: Wade Mealing <wmealing@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2016-5400 - linux kernel: denial of service in airspy USB driver.
Content-Type: text/plain; charset=utf-8

Hello All,

A flaw was found in the linux kernel's implementation of the airspy
USB device driver in which a leak was found when a subdev or SDR are
plugged into the host.

An attacker can create an targeted USB device which can emulate 64 of
these devices. Then by emulating an additional device which
continuously connects and disconnects, each connection attempt will
leak memory which can not be recovered.

This issue was assigned CVE-2016-5400.

Wade Mealing
Red Hat Product Security Team
