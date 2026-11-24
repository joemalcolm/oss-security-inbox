X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/24/12
Message-ID: <a18b6036-d8e0-693f-6638-958fcdd90051@apache.org>
Date: Tue, 24 Nov 2026 10:17:14 +0000
From: Jean-Baptiste Onofré <jbonofre@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-130808: Apache Karaf: feature requirement-add installs bundles from restricted SSH shell 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Karaf through 4.4.12

Description:

In Apache Karaf, the default command ACL configuration for the feature scope (etc/org.apache.karaf.command.acl.feature.cfg, defined in assemblies/features/standard/src/main/feature/feature.xml and the child-instance template instance/src/main/resources/org/apache/karaf/instance/resources/etc/org.apache.karaf.command.acl.feature.cfg) restricts feature:install, feature:uninstall, feature:start, and feature:stop to users with the admin role, while leaving feature:requirement-add and feature:requirement-remove without ACL entries.


Because Karaf's command guard (SecuredSessionFactoryImpl) allows commands with no matching ACL rule (NO_MATCH) to execute, an authenticated SSH user holding only the ssh and viewer roles can execute feature:requirement-add bundle:<uri> (or feature:<name>). RequirementAdd forwards the requirement directly to FeatureService.addRequirements(), causing the resolver to download, install, and start an arbitrary bundle with the Karaf JVM process's full authority, bypassing the admin-only restrictions on feature:install and bundle:install. Similarly, feature:requirement-remove allows removing provisioning requirements and uninstalling features/bundles.

MitigationUsers are recommended to upgrade to Apache Karaf 4.4.13 or 4.5.0.




For existing deployments or upgrades that preserve existing files in etc/, add the following rules to etc/org.apache.karaf.command.acl.feature.cfg (and any child instance etc/org.apache.karaf.command.acl.feature.cfg files):




requirement-add = admin 

requirement-remove = admin

Credit:

hataehoon (reporter)

References:

https://karaf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-130808

