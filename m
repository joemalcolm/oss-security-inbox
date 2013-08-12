X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/08/12/5
Message-ID: <20130812144408.GF25525@dhcp-25-225.brq.redhat.com>
Date: Mon, 12 Aug 2013 16:44:08 +0200
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com
Cc: Kurt Seifried <kseifrie@...hat.com>
Subject: CVE Request -- vdsm: incomplete fix for CVE-2013-0167 issue
Content-Type: text/plain; charset=utf-8

It was found that fix for CVE-2013-0167 was not complete. A privileged
guest user could still potentially make the host the guest is running on
unavailable to the management server by making guest agent return data
with invalid XML characters.

Upstream fix:
http://gerrit.ovirt.org/gitweb?p=vdsm.git;a=commit;h=5fe1615b7949999fc9abd896bde63bf24f8431d6

References:
https://bugzilla.redhat.com/show_bug.cgi?id=996166

Thanks,
-- 
Petr Matousek / Red Hat Security Response Team
