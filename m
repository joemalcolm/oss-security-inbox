X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/28/3
Message-ID: <901b22cd-c4ac-d4c5-b6b0-31d43e63943c@apache.org>
Date: Mon, 28 Sep 2026 09:56:28 +0000
From: Jean-Baptiste Onofré <jbonofre@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-91006: Apache Karaf: OS Command Injection in Child-Instance Launch (instance:* / InstancesMBean)
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Karaf (org.apache.karaf:org.apache.karaf.instance.core) before 4.4.12

Description:

Apache Karaf's instance-management service (InstanceServiceImpl) builds the command line used to launch a child Karaf JVM by string concatenation, then executes it through /bin/sh (Unix) or cscript (Windows). The caller-supplied javaOpts value is spliced into that string unquoted. A javaOpts value containing shell metacharacters (;, |, `, $(...)) is interpreted by the shell instead of being passed to the JVM as an option, giving arbitrary OS command execution as the Karaf process user.


Reachable via the shell commands instance:create, instance:start, instance:restart, instance:change-opts, and the equivalent InstanceMBean JMX operations (createInstance, startInstance, changeJavaOpts, cloneInstance).

Mitigation   *  Set karaf.secured.command.compulsory.roles=admin in etc/system.properties to close the fail-open gap for all unconfigured command scopes.
  *  Restrict which principals can reach instance:* commands and InstancesMBean via etc/users.properties role assignments.
  *  Treat javaOpts passed to instance:create/instance:start/instance:change-opts/InstancesMBean as untrusted input only from fully-trusted operators.

This issue is being tracked as https://github.com/apache/karaf/pull/2878 

Credit:

n0mi1k <nomilksec@...il.com> (reporter)

References:

https://karaf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-91006
https://issues.apache.org/jira/browse/https://github.com/apache/karaf/pull/2878

