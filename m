X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/08/04/2
Message-ID: <20080804122102.39a4c011@redhat.com>
Date: Mon, 4 Aug 2008 12:21:02 +0200
From: Tomas Hoger <thoger@...hat.com>
To: oss-security@...ts.openwall.com
Cc: thijs@...ian.org, coley@...re.org
Subject: Re: CVE request: httrack buffer overflow
Content-Type: text/plain; charset=utf-8

On Mon, 4 Aug 2008 11:42:15 +0200 Thijs Kinkhorst <thijs@...ian.org>
wrote:

> Please see:
> http://www.frsirt.com/english/advisories/2008/2221
> http://www.debian.org/security/2008/dsa-1626
> 
> Could we get a CVE name assigned to that please?

CVE-2008-3429 ?

Buffer overflow in URI processing in HTTrack and WinHTTrack before
3.42-3 allows remote attackers to cause a denial of service (crash) and
possibly execute arbitrary code via a long URL.

http://nvd.nist.gov/nvd.cfm?cvename=CVE-2008-3429

-- 
Tomas Hoger / Red Hat Security Response Team
