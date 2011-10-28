X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/10/28/10
Message-ID: <e21730d7-849d-46db-80c3-373bf2c12b0f@zmail15.collab.prod.int.phx2.redhat.com>
Date: Fri, 28 Oct 2011 09:07:00 -0400 (EDT)
From: Ramon de C Valle <rcvalle@...hat.com>
To: Hanno Böck <hanno@...eck.de>
Cc: oss-security@...ts.openwall.com
Subject: Re: Request for CVE Identifier: bzexe insecure temporary file
Content-Type: text/plain; charset=utf-8


> Have you checked if this also affects gzexe? It is pretty much the
> same
> as bzexe, just using gzip instead of bzip2. (afaik, no xzexe exists)
It seems this issue affects only executables compressed by bzexe. The self-uncompressing executable created by gzexe seems to make appropriate use of the /tmp directory uncompressing the executable file to a previously created subdirectory created with mkdir--all with appropriate permissions.


-- 
Ramon de C Valle / Red Hat Security Response Team
