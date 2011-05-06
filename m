X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/05/06/4
Message-ID: <20110506205341.GA13429@dhcp-28-215.brq.redhat.com>
Date: Fri, 6 May 2011 22:53:42 +0200
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley@...us.mitre.org
Subject: CVE request -- virt-v2v: vnc password protection is missing after vm conversion
Content-Type: text/plain; charset=utf-8

Hello Steve, vendors.

Description:
It was found that after virtual machine conversion using virt-v2v the
target VM does not have VNC password enabled even though the source VM does.
An attacker able to connect to the target VM can possibly use this flaw to
operate the VM with privileges of the logged in user.

References:
https://bugzilla.redhat.com/show_bug.cgi?id=702754
 
Could you please allocate a CVE identifier for this issue?

Thanks you,
--
Petr Matousek / Red Hat Security Response Team

