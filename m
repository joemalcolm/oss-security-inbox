X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/28/8
Message-ID: <649e56b8-232f-5007-ecd3-4efc1bf5aa33@apache.org>
Date: Mon, 28 Sep 2026 15:31:48 +0000
From: Jean-Baptiste Onofré <jbonofre@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-91012: Apache Karaf: Path Traversal in Config Service Allows Manager-to-Admin Privilege Escalation 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Karaf (org.apache.karaf.config.core.impl) before 4.4.12

Description:

org.apache.karaf.config.core.impl.ConfigRepositoryImpl#update(pid, properties),
which backs the "config" MBean and the config:* shell commands, derives the file
it writes a configuration to from caller-supplied input without checking that
the result stays inside ${karaf.etc}:

  *  if the submitted property map contains a felix.fileinstall.filename entry, that value is turned directly into a File (getCfgFileFromProperty), so it can point to any absolute path the Karaf process can write to;
  *  otherwise the configuration PID is concatenated verbatim into the target file name (generateConfigFilename(): new File(karaf.etc, pid + ".cfg")), so a PID containing ".." segments resolves outside ${karaf.etc}. createFactoryConfiguration() has the same issue via the factory PID/alias.


Both code paths are reachable by any caller holding the "manager" role under Karaf's shipped command/JMX ACL (org.apache.karaf.command.acl.conf.cfg: "update = manager"). Such a user can therefore write attacker-controlled content to any file the Karaf process can write, including files the same ACL otherwise reserves to "admin" (etc/users.properties, etc/*.acl.*.cfg, etc/org.apache.karaf.management.cfg, and similar), allowing a manager-role user to grant themselves the admin role or otherwise take over the container.






ConfigMBeanImpl.install() and the config:install shell command already guarded the equivalent risk on their own code path with a finalname.contains("..") string check, but that check does not stop absolute paths or symlink-based escapes, and it was never applied to ConfigRepositoryImpl.update() / createFactoryConfiguration() at all.

Credit:

n0mi1k <nomilksec@...il.com> (reporter)

References:

https://karaf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-91012

