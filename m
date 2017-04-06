X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/04/06/8
Message-ID: <09b0b280-113c-e309-f507-27cd7de850f8@cleal.org>
Date: Thu, 6 Apr 2017 14:22:55 +0100
From: Dominic Cleal <dominic@...al.org>
To: oss-security@...ts.openwall.com
Cc: foreman-security@...glegroups.com
Subject: CVE-2017-2672: Foreman image password disclosure in audit log
Content-Type: text/plain; charset=utf-8

CVE-2017-2672: Foreman compute resource image passwords disclosed via
audit log

When images for compute resources (e.g. an OpenStack image) are
added/registered in Foreman, the password used to log in is recorded in
plain text in the audit log. This may allow users with access to view
the audit log to access newly provisioned hosts using the stored
credentials.

Mitigation: remove view_audit_logs permission from users, change image
passwords.

This issue was reported by Daniel Kimsey.

Affects Foreman 1.4 and higher
Fix due to be released

Patch:
https://github.com/theforeman/foreman/commit/02489389f1a4443e1f437b86aa7ce245f1437020

More information:
https://theforeman.org/security.html#2017-2672
http://projects.theforeman.org/issues/19169
https://theforeman.org

-- 
Dominic Cleal
dominic@...al.org





Download attachment "signature.asc" of type "application/pgp-signature" (210 bytes)
