X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/08/08/14
Message-ID: <20140808152535.GC9141@gremlin.ru>
Date: Fri, 8 Aug 2014 19:25:35 +0400
From: gremlin@...mlin.ru
To: oss-security@...ts.openwall.com
Subject: Re: BadUSB discussion
Content-Type: text/plain; charset=utf-8

On 08-Aug-2014 07:00:13 -0700, Greg KH wrote:

 >> For example, you could register keyboards by serial number
 >> with the system,
 > Most USB keyboards in the system do not have a unique serial
 > number. Heck, most USB devices in the system do not have a
 > unique serial number

Serial numbers wouldn't help even if they were unique.

Port assignment ("HID devices may be connected only to these two
ports powered by +5Vsb") could help, but:
1. Many system boards have one single bus for all physical ports.
2. This would require some human activity.


-- 
Alexey V. Vissarionov aka Gremlin from Kremlin <gremlin ПРИ gremlin ТЧК ru>
GPG: 8832FE9FA791F7968AC96E4E909DAC45EF3B1FA8 @ hkp://keys.gnupg.net
