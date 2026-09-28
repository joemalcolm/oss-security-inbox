X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/28/9
Message-ID: <d725e135-8eb9-0916-85c6-613962e124df@apache.org>
Date: Mon, 28 Sep 2026 15:52:22 +0000
From: Jean-Baptiste Onofré <jbonofre@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-91048: Apache Karaf: Missing authorization on the jdbc:* shell command scope allows privilege escalation to remote code execution via jdbc:ds-create 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Karaf before 4.4.12

Description:

The jdbc shell command scope shipped no org.apache.karaf.command.acl.jdbc.cfg. Karaf's command guard (SecuredSessionFactoryImpl) treats a command with no matching ACL rule as allowed, so any authenticated shell session (including one holding only the viewer role) could run every jdbc:* command. jdbc:ds-create stores a fully attacker-controlled JDBC URL into a pax-jdbc-config factory Configuration with no validation. pax-jdbc-config reactively turns that into a live DataSource. Several JDBC drivers run code or SQL at connection time based on URL parameters (e.g. H2 INIT=RUNSCRIPT), so a viewer-level shell user could reach arbitrary code execution, bypassing the admin-role gate that already protects shell:exec. This is a privilege-escalation-to-RCE chain, not merely an "admin misconfiguration".


The same applies to jms:* shell commands.

Credit:

MopMonk-AI <mopmonk-ai@...hant.com> (reporter)

References:

https://karaf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-91048

