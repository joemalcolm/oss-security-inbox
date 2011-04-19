X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/04/19/5
Message-ID: <4DADCFE2.30408@redhat.com>
Date: Tue, 19 Apr 2011 20:09:38 +0200
From: Jan Lieskovsky <jlieskov@...hat.com>
To: "Steven M. Christey" <coley@...us.mitre.org>
CC: oss-security <oss-security@...ts.openwall.com>
Subject: CVE Request -- OpenVAS Manager v2.0.3
Content-Type: text/plain; charset=utf-8


Hello Josh, Steve, vendors,

   based on:
   [1] http://lists.wald.intevation.org/pipermail/openvas-announce/2011-April/000120.html

This release fixes a severe security issue discovered after the release
of openvas-manager 2.0.2. By crafting a special report format plugin,
and knowing about the operating system on which OpenVAS Manager is
running, a rogue user was able to upload the plugin and execute
arbitrary code with the privileges of the user running the OpenVAS
Manager.

Could you allocate a CVE id for this?

Thanks && Regards, Jan.
--
Jan iankko Lieskovsky / Red Hat Security Response Team
