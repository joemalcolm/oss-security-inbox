X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/03/04/21
Message-ID: <20110304171347.654f8997@orphan>
Date: Fri, 4 Mar 2011 17:13:47 +0100
From: Tomas Hoger <thoger@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: Re: CVE request: More Evince overflows
Content-Type: text/plain; charset=utf-8

On Fri, 18 Feb 2011 17:57:00 -0600 Raphael Geissert wrote:

> On Friday 18 February 2011 08:41:08 Thomas Biege wrote:
> > Has someone assigned a CVE-ID for this already?
> > > https://bugzilla.gnome.org/show_bug.cgi?id=640923
> 
> Looks like everyone is just waiting for somebody else to assign an id, so 
> let's just assign one:
> 
> Please use CVE-2011-0433

There's an off-by-one in those fixes, as it's been pointed out to me.
So if you've not fixed yet, you may want to look at:
  https://bugzilla.gnome.org/show_bug.cgi?id=643882

-- 
Tomas Hoger / Red Hat Security Response Team
