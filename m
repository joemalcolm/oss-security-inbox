X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/04/24/5
Message-ID: <87zka1cnqo.fsf@mid.deneb.enyo.de>
Date: Tue, 24 Apr 2012 14:34:23 +0200
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request -- libgssapi, libgssglue -- Ability to load untrusted configuration file, when loading GSS mechanisms and their definitions during initialization
Content-Type: text/plain; charset=utf-8

* Sebastian Krahmer:

> Indeed, the point was to also check against fscaps:
>
> https://bugzilla.novell.com/show_bug.cgi?id=694598
>
> At least it should be considered for future builds. The mount.nfs
> case was only interesting for the suid bit.

Okay.  Our mount.nfs doesn't seem to use libgssglue.  I wonder if you
use a different code base, or if this is something that's going to be
come relevant to use with a newer upstream version, too.
