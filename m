X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/10/28/2
Message-ID: <20081028084238.258e8a09@redhat.com>
Date: Tue, 28 Oct 2008 08:42:38 +0100
From: Tomas Hoger <thoger@...hat.com>
To: OSS Security <oss-security@...ts.openwall.com>
Subject: CVE-2008-4619 / milw0rm6775
Content-Type: text/plain; charset=utf-8

Hi!

Just a heads up ...  In the case you distribute rpcbind using
(lib)tirpc as an RPC port mapper, you may be interested in the
CVE-2008-4619.  Some more info is in our BZ, along with Steve Dickson's
patch: https://bugzilla.redhat.com/show_bug.cgi?id=468014

This is very likely the same issue as Solaris one, as tirpc is based on
the Sun's RPC source code, and fails in the same place.

-- 
Tomas Hoger / Red Hat Security Response Team
