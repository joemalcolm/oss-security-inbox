X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/05/3
Message-Id: <91CE8F7F-6A45-431A-8DFB-CA2642CFB8B0@beckweb.net>
Date: Wed, 5 Aug 2026 15:18:34 +0200
From: Daniel Beck <ml@...kweb.net>
To: oss-security@...ts.openwall.com
Subject: Multiple vulnerabilities in Jenkins and Jenkins plugins 
Content-Type: text/plain; charset=utf-8

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Jenkins 2.576
* Jenkins LTS 2.568.2
* External Workspace Manager Plugin 1.4.2
* HCL AppScan Plugin 1.8.4
* Multijob Plugin 677.v7ffc23d6a_4c2
* SCM-Manager Plugin 1.12.1
* Webhook Secret Credentials Provider Plugin 32.v09c9b_522f0a_8

Additionally, we announce unresolved security issues in the following
plugins:

* AWS CodeBuild Plugin
* CodeSonar Plugin
* Google Chat Notification Plugin
* Horreum Plugin
* Ivy Report Plugin
* Parameterized Remote Trigger Plugin
* Qualys Container Scanning Connector Plugin
* Sauce OnDemand Plugin
* Summary Display Plugin
* Violation Comments to GitLab Plugin
* XML Job to Job DSL Plugin

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2026-08-05/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-3911 / CVE-2026-70426
Jenkins uses the Remoting library (typically `agent.jar` or `remoting.jar`)
for communication between the controller and agents via serialized Java
objects. To protect against deserialization vulnerabilities, Jenkins
enforces the JEP-200 class filter during deserialization of objects
received over a Remoting channel on the controller.

In Remoting 3384.v60d89463d9e0 and earlier, except 3355.3357.v931d3c992987,
included in Jenkins 2.575 and earlier, LTS 2.568.1 and earlier, the JEP-200
class filter is not applied to classes resolved via a fallback path in the
Remoting deserialization implementation. This allows agent processes, code
running on agents, and attackers with Agent/Connect permission to bypass
the JEP-200 deserialization filter for classes on the Jenkins core
classpath, which could be leveraged to execute code on the Jenkins
controller.

NOTE: This is limited to classes on the Jenkins core classpath (i.e.,
bundled with Jenkins or part of the Java platform) that are _not_ on the
pre-JEP-200 deserialization denylist. Dependencies bundled with plugins
will not be deserialized.


SECURITY-3930 / CVE-2026-70427
Jenkins 2.575 and earlier, LTS 2.568.1 and earlier does not safely handle
symbolic links with effectively empty names during the extraction of `.tar`
and `.tar.gz` archives. This allows attackers able to control agent
processes to provide crafted archives to the controller to write files to
arbitrary locations on the file system, restricted only by file system
access permissions of the user running Jenkins. This can result in code
execution by, e.g., writing malicious scripts to the
`JENKINS_HOME/init.groovy.d/` directory, or deploying plugins to
`JENKINS_HOME/plugins/`.


SECURITY-3927 / CVE-2026-70428
Jenkins 2.575 and earlier, LTS 2.568.1 and earlier improperly identifies
file paths attempting path traversal in file parameter names. This allows
attackers with Item/Configure and Item/Build permission to write files to
arbitrary locations on the controller file system, restricted only by file
system access permissions of the user running Jenkins. This can result in
code execution by, e.g., writing malicious scripts to the
`JENKINS_HOME/init.groovy.d/` directory, or deploying plugins to
`JENKINS_HOME/plugins/`.


SECURITY-3924 / CVE-2026-70429
Jenkins 2.575 and earlier, LTS 2.568.1 and earlier handles
case-insensitivity in user names and group names inconsistently. While the
canonical ID for a case-insensitive user or group name is created by
lowercasing the name, comparisons of user names and group names are done
using `String#equalsIgnoreCase`. The latter considers some Unicode
characters to be equal to other characters, while the former does not
(e.g., the letter "dotless i" `ı` being equal to regular lowercase i). This
allows attackers able to create new users or groups with names that
case-insensitively match other characters to impersonate other users or be
granted their permissions.

NOTE: This requires a security realm that allows these characters in user
names or group names, and allows creation of users or groups that
case-insensitively match existing users or groups. The Jenkins user
database does not allow users to sign up with usernames outside of the
ASCII range.


SECURITY-3916 / CVE-2026-70430
Jenkins 2.575 and earlier, LTS 2.568.1 and earlier does not restrict the
types of objects that can be instantiated as part of the project naming
strategy configuration. This allows attackers with Overall/Manage
permission to instantiate arbitrary types related to configuration,
including those intended for configuration only by administrators.


SECURITY-3823 (1) / CVE-2026-70431
Multijob Plugin 669.v9d96a_d9c71b_0 and earlier provides Groovy scripting
features that do not integrate with Script Security Plugin.

This vulnerability allows attackers with Item/Create or Item/Configure
permission to execute arbitrary code in the context of the Jenkins
controller JVM.


SECURITY-3823 (2) / CVE-2026-70432
Multijob Plugin 669.v9d96a_d9c71b_0 and earlier does not require POST
requests for a form validation endpoint, resulting in a cross-site request
forgery (CSRF) vulnerability.

This vulnerability allows attackers to execute arbitrary code in the
context of the Jenkins controller JVM.


SECURITY-3771 / CVE-2026-70433
HCL AppScan Plugin 1.8.3 and earlier does not perform permission checks in
multiple HTTP endpoints.

This allows attackers with Overall/Read permission to enumerate credentials
IDs of credentials stored in Jenkins. Those can be used as part of an
attack to capture the credentials using another vulnerability.


SECURITY-3888 / CVE-2026-70434 (CSRF) & CVE-2026-70435 (permission check)
SCM-Manager Plugin 1.11.1 and earlier does not perform permission checks in
several HTTP endpoints.

This allows attackers with Overall/Read permission to connect to an
attacker-specified HTTP URL using attacker-specified credentials IDs
obtained through another method, capturing credentials stored in Jenkins.

Additionally, these endpoints do not require POST requests, resulting in a
cross-site request forgery (CSRF) vulnerability.


SECURITY-3907 / CVE-2026-70436
External Workspace Manager Plugin 1.4.1 and earlier does not perform a
permission check (1.4.0 and earlier) or performs an improper permission
check (1.4.1) when providing access to externally-managed workspaces
through the workspace browser.

This allows attackers with Overall/Read permission to read files in
workspaces they are not authorized to access.


SECURITY-3918 / CVE-2026-70437
Webhook Secret Credentials Provider Plugin 16.v0cfa_f0215cf5 and earlier
does not use a constant-time comparison function when checking whether the
provided and expected webhook bearer token are equal.

This could potentially allow attackers to use statistical methods to obtain
a valid webhook bearer token.


SECURITY-3768 / CVE-2026-70438
Parameterized Remote Trigger Plugin 3.2.2 and earlier does not perform
permission checks in HTTP endpoints.

This allows attackers with Overall/Read permission to enumerate credentials
IDs of credentials stored in Jenkins. Those can be used as part of an
attack to capture the credentials using another vulnerability.

As of publication of this advisory, there is no fix.


SECURITY-3779 / CVE-2026-70439
XML Job to Job DSL Plugin 0.1.13 and earlier does not perform permission
checks, and makes its functionality available to users lacking Overall/Read
permission. While only jobs the user has Item/Read permission for will be
accessible, it does not require Item/Extended Read permission to convert
their configuration.

Additionally, the plugin allows any user to invoke the conversion
functionality, replacing any previously generated output in `userContent`.

As of publication of this advisory, there is no fix.


SECURITY-3749 / CVE-2026-70440
Qualys Container Scanning Connector Plugin 1.8.0.5 and earlier does not
escape user-controlled field values in a JavaScript context.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers with Item/Configure permission.

As of publication of this advisory, there is no fix.


SECURITY-3750 / CVE-2026-70441
Summary Display Plugin 1.15 and earlier does not escape the job name in a
JavaScript context in build report pages.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers with Item/Create or Item/Configure permission.

As of publication of this advisory, there is no fix.


SECURITY-3752 / CVE-2026-70442
Google Chat Notification Plugin 166.ve6b_de280f2e8 and earlier does not set
the appropriate context for credentials lookup, allowing the use of
System-scoped credentials otherwise reserved for the global configuration.

This allows attackers with Item/Configure permission to access and capture
credentials they are not entitled to use.

As of publication of this advisory, there is no fix.


SECURITY-3756 / CVE-2026-70443
Horreum Plugin 0.16.162.v33b_4a_a_b_5f828 and earlier does not set the
appropriate context for credentials lookup, allowing the use of
System-scoped credentials otherwise reserved for the global configuration.

This allows attackers with Item/Configure permission to have Jenkins send
credentials they are not entitled to use to the administrator-configured
Horreum URL.

As of publication of this advisory, there is no fix.


SECURITY-3763 / CVE-2026-70444
Violation Comments to GitLab Plugin 2.62.0 and earlier does not perform a
permission check in an HTTP endpoint.

This allows attackers with Overall/Read permission to enumerate credentials
IDs of credentials stored in Jenkins. Those can be used as part of an
attack to capture the credentials using another vulnerability.

As of publication of this advisory, there is no fix.


SECURITY-3770 / CVE-2026-70445
Sauce OnDemand Plugin 2.2.0 and earlier does not perform permission checks
in several HTTP endpoints.

This allows attackers with Overall/Read permission to enumerate credentials
IDs of credentials stored in Jenkins. Those can be used as part of an
attack to capture the credentials using another vulnerability.

As of publication of this advisory, there is no fix.


SECURITY-3772 / CVE-2026-70446
CodeSonar Plugin 3.6.0 and earlier does not perform permission checks in
several HTTP endpoints.

This allows attackers with Overall/Read permission to enumerate credentials
IDs of credentials stored in Jenkins. Those can be used as part of an
attack to capture the credentials using another vulnerability.

As of publication of this advisory, there is no fix.


SECURITY-3773 / CVE-2026-70447
AWS CodeBuild Plugin 0.59 and earlier does not perform permission checks in
several HTTP endpoints.

This allows attackers with Overall/Read permission to enumerate credentials
IDs of credentials stored in Jenkins. Those can be used as part of an
attack to capture the credentials using another vulnerability.

As of publication of this advisory, there is no fix.


SECURITY-3899 / CVE-2026-70448
Ivy Report Plugin 1.2 and earlier does not configure its XML parser to
prevent XML external entity (XXE) attacks.

This allows attackers able to control workspace contents to have Jenkins
parse a crafted Ivy report XML file that uses external entities for
extraction of secrets from the Jenkins controller or server-side request
forgery.

As of publication of this advisory, there is no fix.



