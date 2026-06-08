X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/08/2
Message-ID: <aibfh4NnJ-LuMJqg@eldamar.lan>
Date: Mon, 8 Jun 2026 17:28:07 +0200
From: Salvatore Bonaccorso <carnil@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: libinput: libinput-device-group unescaped phys output can inject udev properties
Content-Type: text/plain; charset=utf-8

On Fri, Jun 05, 2026 at 10:23:15PM +0200, Salvatore Bonaccorso wrote:
> Hi,
> 
> On Fri, Jun 05, 2026 at 09:01:56AM +1000, Peter Hutterer wrote:
> > On Thu, Jun 04, 2026 at 08:12:22PM +1000, Peter Hutterer wrote:
> > > =========================================
> > > libinput Security Advisory: June 4, 2026
> > > =========================================
> > > 
> > > An issue has been found in libinput:
> > > 
> > > 1) libinput-device-group unescaped phys output can inject udev properties
> > >    leading to arbitrary root code execution
> > > 
> > > libinput uses a udev helper called libinput-device-group. This helper uses a
> > > device's phys sysattr as one element of a udev property value which is printed
> > > as a KEY=VALUE pair and imported as ENV by udev.
> > > 
> > > A malicious uinput or uhid device that sets a phys sysattr containing \n caused
> > > the output to be interpreted as two separate KEY=VALUE pairs by udev. This could
> > > cause arbitrary execution as root (e.g. by setting the REMOVE_CMD property).
> > > 
> > > A CVE has been requested for this issue but did not get assigned in time for
> > > this disclosure.
> > > 
> > > Upstream issue: https://gitlab.freedesktop.org/libinput/libinput/-/work_items/1296
> > > Upstream fix: https://gitlab.freedesktop.org/libinput/libinput/-/commit/76f0d8a7f57e2868882864b4611281f12f704b55
> > > Versions affected: libinput <= 1.31.2 and <= 1.30.3
> > > Fixed versions: libinput 1.31.3, 1.30.4
> > 
> > This issue has now been assigned CVE-2026-50265
> 
> FTR, this is bit odd since before that assignment MITRE seems to have
> already assigned CVE-2026-50292:
> https://www.cve.org/CVERecord?id=CVE-2026-50292
> 
> And it had the references:
> https://gitlab.freedesktop.org/libinput/libinput/-/work_items/1296
> https://gitlab.freedesktop.org/libinput/libinput/-/commit/76f0d8a7f57e2868882864b4611281f12f704b55
> https://www.openwall.com/lists/oss-security/2026/06/04/5
> 
> So that is clashing with the assignment from Red Hat as
> CVE-2026-50265:
> https://www.cve.org/CVERecord?id=CVE-2026-50265
> 
> I asked Red Hat CNA if they can reject the later assigned one, but not
> sure which should be kept now. 

As a followup: CVE-2026-50265 has been rejected in favour of
CVE-2026-50292.

Regards,
Salvatore
