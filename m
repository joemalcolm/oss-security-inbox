X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/24/11
Message-ID: <e79bbf5c-91ef-d049-fa7f-b1d66e1555c5@apache.org>
Date: Tue, 24 Nov 2026 10:02:29 +0000
From: Jean-Baptiste Onofré <jbonofre@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-124615: Apache Karaf: feature:requirement-add / feature:requirement-remove command ACL bypass allows a viewer to install and run arbitrary code 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Karaf through 4.4.12

Description:

The shell command ACL for the feature scope (etc/org.apache.karaf.command.acl.feature.cfg) restricts feature:install, feature:uninstall, feature:start and feature:stop to the admin role, but had no entry for feature:requirement-add or feature:requirement-remove.

The provisioning resolver turns a requirement into the same install/start (or uninstall) action as feature:install / feature:uninstall: a bundle: requirement causes an arbitrary bundle to be downloaded and started, and a feature: requirement installs that feature. Because the two commands had no ACL, a user authenticated with only the viewer (and ssh) role could invoke them and cause Apache Karaf to download, install and start an attacker-chosen bundle, which then runs with the full authority of the Karaf process — thereby bypassing the admin-only authorization enforced on feature:install and bundle:install.

This is the same class of issue as the feature:repo-add -i / feature:repo-remove -u bypass, on sibling commands not covered by that earlier fix.Mitigation:Upgrade to Apache Karaf 4.4.12 or 4.5.0 (or later), which restrict feature:requirement-add and feature:requirement-remove to the admin role.

As an interim workaround on affected versions, add the following two lines to etc/org.apache.karaf.command.acl.feature.cfg; the change is picked up at runtime without a restart:

requirement-add = admin

requirement-remove = admin

Credit:

a01066622184@...il.com (reporter)

References:

https://karaf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-124615

