X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/02/06/6
Message-ID: <87fw19gl0v.fsf@mid.deneb.enyo.de>
Date: Wed, 06 Feb 2013 23:00:48 +0100
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Subject: e1000e/82574L hardware erratum
Content-Type: text/plain; charset=utf-8

It's been reported that some Intel 82574L network controllers can be
brought into a non-processing state by receiving certain Ethernet
frames:

<http://blog.krisk.org/2013/02/packets-of-death.html>

The packet is not malformed at the lower layers and will travel over
the Internet.

I have not tried to reproduced this.  Disabling hardware offloading
features might constitue a workaround.

Reportedly, this can be fixed by appropriate EEPROM settings, so a
driver-based workaround seems feasible/necessary.
