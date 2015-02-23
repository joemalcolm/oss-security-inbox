X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/02/23/12
Message-ID: <20150223093424.GA20329@videolan.org>
Date: Mon, 23 Feb 2015 10:34:24 +0100
From: Jean-Baptiste Kempf <jb@...eolan.org>
To: Florian Weimer <fweimer@...hat.com>
Cc: oss-security@...ts.openwall.com, Assign a CVE Identifier <cve-assign@...re.org>, VideoLAN Security Team <security@...eolan.org>
Subject: Re: CVE request: BD-J implementation in libbluray
Content-Type: text/plain; charset=utf-8

On 23 Feb, Florian Weimer wrote :
> > As for https://bugzilla.redhat.com/show_bug.cgi?id=959434
> > 
> > "Fixing it would not change anything. Xlet (that requests the mount, or is
> > being executed from the mount) could as well uncompress the files by self
> > where it wants, even download other files from internet."
> > 
> > So, maybe you want to have a full Xlet sandboxing? Or is it something
> > else?
> 
> Yes, I do think full sandboxing is required because content publishers
> have attacked end user system integrity in the past, so I don't think
> they can be trusted.

BD-J code comes from Blu-Rays. Downloading non-official blurays and
executing it is like taking random binaries from internet and running
them.

Patches are welcome, though...


With my kindest regards,

-- 
Jean-Baptiste Kempf
http://www.jbkempf.com/ - +33 672 704 734
Sent from my Electronic Device
