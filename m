X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/05/25/3
Message-ID: <20080525154153.44d2782a@redhat.com>
Date: Sun, 25 May 2008 15:41:53 +0200
From: Tomas Hoger <thoger@...hat.com>
To: oss-security@...ts.openwall.com
Cc: steffen.joeris@...lelinux.de
Subject: Re: CVE id request: xscreensaver
Content-Type: text/plain; charset=utf-8

On Sun, 25 May 2008 18:29:13 +1000 Steffen Joeris
<steffen.joeris@...lelinux.de> wrote:

> Pierre Habouzit discovered that resizing with the xrandr tool can
> crash xscreensaver.
> 
> Debian Bug report:
> http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=482385
> 
> The tested version of xscreensaver is 5.05-1, but at the moment there
> is no reason to assume that the bug did not exist in previous
> versions.

Is there any known attack vector crossing trust boundary?  Usage of
xrandr should be fully under the control of the user running
xscreensaver.

-- 
Tomas Hoger / Red Hat Security Response Team
