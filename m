X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/03/10/5
Message-ID: <226963363.35919.1299787475271.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Thu, 10 Mar 2011 15:04:35 -0500 (EST)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com, Petr Matousek <pmatouse@...hat.com>
Cc: coley@...us.mitre.org
Subject: Re: CVE request: libvirt: several API calls do not honour read-only connection
Content-Type: text/plain; charset=utf-8



----- Original Message -----
> "It has been found that several libvirt API calls
> (virNodeDeviceDettach,
> virNodeDeviceReset, virDomainRevertToSnapshot,
> virDomainSnapshotDelete) did not
> honour read-only connection. Remote attacker could use this flaw to
> crash the
> host server (DoS)."
> 
> Reference:
> https://bugzilla.redhat.com/show_bug.cgi?id=683650
> 

This should only need one ID.

Please use CVE-2011-1146

Thanks.

-- 
    JB
