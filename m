X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/02/27/10
Message-ID: <20140227145833.3cb1e385@redhat.com>
Date: Thu, 27 Feb 2014 14:58:33 +0100
From: Tomas Hoger <thoger@...hat.com>
To: oss-security@...ts.openwall.com
Cc: jwilk@...ian.org
Subject: Re: CVE requests: Pacemaker, Python Imaging Library, eyeD3, 9base, rc, Gamera, RPLY - insecure use of /tmp
Content-Type: text/plain; charset=utf-8

On Mon, 10 Feb 2014 23:21:00 +0100 Jakub Wilk wrote:

> * Pacemaker:
> https://bugs.debian.org/633964
> This needs a CVE-2011-#### id.

This should be fixed upstream for a while:
https://github.com/ClusterLabs/pacemaker/commit/23ad834

-- 
Tomas Hoger / Red Hat Security Response Team
