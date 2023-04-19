X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/04/19/10
Message-ID: <eff48e8f-cb22-bda0-772b-d9c9c5f16fbc@suse.de>
Date: Wed, 19 Apr 2023 17:11:28 +0200
From: Carlos López <clopez@...e.de>
To: "Jonathan Bar Or (JBO)" <jobaror@...rosoft.com>
Cc: oss-security@...ts.openwall.com
Subject: Re: ncurses fixes upstream
Content-Type: text/plain; charset=utf-8

Hi,

On 12/4/23 22:40, Jonathan Bar Or (JBO) wrote:
> Hello oss-security,
> 
> Our team has worked with the maintainer of the ncurses library (used by several software packages in Linux) to fix several memory corruption vulnerabilities.
> They are now fixed at commit 20230408 - see details here (https://invisible-island.net/ncurses/NEWS.html#index-t20230408)
> A CVE was assigned (CVE-2023-29491) - it's still under a "reserved" status.

Are there any plans to disclose any proofs of concept to test these
issues? From the distro side these are not only useful to check which
ncurses snapshots we need to fix, but also for our QA teams to test the
update and detect regressions.

For example, we are not sure if the build option
`--disable-root-environ` does anything to mitigate the issues.

> How can we ensure those fixes get deployed upstream, in major Linux distributions?
> We've reached out to Arch, RedHat, Canonical and other popular distros independently.
> 
> Thanks!
>                               JBO

For what is worth, we have not been contacted, as far as I can tell.

Best,
Carlos

-- 
Carlos López
Security Engineer
SUSE Software Solutions
