X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/08/08/11
Message-ID: <20140808151611.GB9141@gremlin.ru>
Date: Fri, 8 Aug 2014 19:16:11 +0400
From: gremlin@...mlin.ru
To: oss-security@...ts.openwall.com
Subject: Re: BadUSB discussion
Content-Type: text/plain; charset=utf-8

On 08-Aug-2014 09:56:34 -0400, Daniel Kahn Gillmor wrote:

 > The same thing goes, of course, for PCI devices, disks, CPUs,
 > expressCards (or whatever they're called today), firewire, RAM,
 > etc. all of which are becoming more hot-pluggable on modern
 > hardware.

PCI and firewire seem to be most dangerous, as they have full
memory access simply by design.

I have such PCI "debug board", and making one for PCI-e is on my
agenda.

 > A well-thought-out system-wide policy of what to do on device
 > hotplug might be useful, with a set of standard profiles
 > (single-seat personal desktop (laptop), server, multi-seat
 > desktop) to encourage sane behavior by default.
 > I have no idea what form such a policy might take, though.

I possibly have some ideas, but they have to be thought a lot.


-- 
Alexey V. Vissarionov aka Gremlin from Kremlin <gremlin ПРИ gremlin ТЧК ru>
GPG: 8832FE9FA791F7968AC96E4E909DAC45EF3B1FA8 @ hkp://keys.gnupg.net
