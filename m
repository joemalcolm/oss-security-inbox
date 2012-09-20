X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/09/20/6
Message-ID: <20120920161014.2a4f9d0c@redhat.com>
Date: Thu, 20 Sep 2012 16:10:14 +0200
From: Tomas Hoger <thoger@...hat.com>
To: oss-security@...ts.openwall.com
Cc: geissert@...ian.org
Subject: Re: CVE request: opencryptoki insecure lock files handling
Content-Type: text/plain; charset=utf-8

On Wed, 12 Sep 2012 12:42:17 -0500 Raphael Geissert wrote:

> > When do pkcsslotd does that, and which version?  It does not happen
> > on its start or stop, or when client as pkcsconf queries for some
> > data.
> 
> I apparently confused it with another set of CreateXProcLock and 
> XProcUnLock's. pkcsslotd indeed doesn't seem to chmod spinloc.

Ok, so I think we need 1 CVE for the two insecure temporary file uses,
unless we want to split each temporary file issue under a separate
CVE.  I don't believe there's a real need to assign CVE for 2.4.1
(which did not improve things on systems with world writable /var/lock)
or 2.4.2 (which re-opens the attack for pkcs11 group members on systems
with restricted /var/lock, but improves things on systems with world
writable /var/lock).

-- 
Tomas Hoger / Red Hat Security Response Team
