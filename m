X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/25/8
Message-Id: <ACAB18F2-52C2-45AE-B396-04478A2D77A0@beckweb.net>
Date: Wed, 25 Nov 2026 16:51:53 +0100
From: Daniel Beck <ml@...kweb.net>
To: oss-security@...ts.openwall.com
Subject: Multiple vulnerabilities in Jenkins plugins
Content-Type: text/plain; charset=utf-8

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Configuration as Code Plugin 2148.v9d0c041b_a_13c
* Gradle Plugin 2.22.1283.v53b_41fe4cb_d9
* Nested View Plugin 262.v4e24ddfe477e
* Performance Plugin 1025.ve64297f8ccb_c
* Pipeline DORA Metrics Plugin 43.v0b_b_d09ef2440
* Pipeline: Groovy Plugin 4403.4405.va_b_cdb_b_d0b_89f
* Rich Text Publisher Plugin 1.6
* Script Security Plugin 1436.1438.v3dc5ef7d16f2
* Spira Importer Plugin 58.v33212b_f5b_2d1
* Subversion Plugin 1349.v15e470a_46048
* Warnings Plugin 13.10365.10367.v2db_e2de17661


Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2026-11-25/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-4152 / CVE-2026-136834
Pipeline: Groovy Plugin provides a sandbox feature that allows running
user-provided scripts safely by intercepting and checking potentially
unsafe operations.

Sandbox protection in Pipeline: Groovy Plugin 4403.v471713a_cea_19 and
earlier can be circumvented through interface field initializers.
Non-constant interface field initializers were not subject to sandbox
protection.

This allows attackers with permission to define and run sandboxed Pipelines
to bypass the sandbox protection and execute arbitrary code in the context
of the Jenkins controller JVM.


SECURITY-4278 / CVE-2026-136835
Script Security Plugin provides a sandbox feature that allows running
user-provided Groovy scripts safely by intercepting and checking
potentially unsafe operations.

Groovy's `@...lder` annotation generates builder code at compile time using
the strategy class named by its `builderStrategy` member, which can be one
of the strategies provided by Groovy or a custom implementation.

Script Security Plugin 1436.v1082791135e4 and earlier does not reject
`@...lder` annotations whose `builderStrategy` member names an arbitrary
class when the annotation is referred to using a partially qualified class
name, which causes Groovy to instantiate that class at compile time, before
the sandbox is applied.

This may allow attackers with permission to define and run sandboxed
scripts, including Pipelines, to execute code outside the sandbox, in the
rare case that a suitable class is present on the classpath of the
component that evaluates the script.


SECURITY-4075 / CVE-2026-136836
Gradle Plugin provides a Maven auto-injection feature that reads
`.mvn/extensions.xml` files from build workspaces to detect previously
applied Maven extensions. These files are read on SCM checkout by the
Jenkins controller.

Gradle Plugin 2.21.1282.v024680ce00a_b_ and earlier does not configure its
XML parser to prevent XML external entity (XXE) attacks when processing
these files.

This allows attackers able to control workspace contents to have Jenkins
parse a crafted `.mvn/extensions.xml` file that uses external entities for
extraction of secrets from the Jenkins controller or server-side request
forgery.

NOTE: This vulnerability only affects controllers with the Develocity Maven
auto-injection feature enabled.


SECURITY-4325 / CVE-2026-136837
Since Warnings Plugin 13.10251.va_452d3553728, Groovy parsers can be
defined inline in job configurations.

Warnings Plugin 13.10251.va_452d3553728 through 13.10365.v85cd7a_c8110b_
(both inclusive) parses the specified Groovy script on the controller to
validate it.

This allows attackers able to define inline Groovy parsers to execute
arbitrary code in the context of the Jenkins controller JVM.


SECURITY-4342 / CVE-2026-136838 (Sventon) & CVE-2026-136839 (Sventon2)
Subversion Plugin 1327.vc36e0019a_653 and earlier does not restrict URLs to
HTTP or HTTPS schemes in form validation methods for the Sventon and
Sventon2 repository browsers.

This allows attackers with Item/Configure permission to determine the
existence of paths on the Jenkins controller file system.


SECURITY-4429 / CVE-2026-136840
Configuration as Code Plugin provides an HTTP endpoint that allows users
with Overall/SystemRead permission to validate a configuration YAML
document.

Configuration as Code Plugin 2134.ve13a_2fc90835 through
2147.v8a_8d38668c72 (both inclusive), except 2140.2142.v3836c98f1b_30,
resolves variables in submitted YAML documents before validation, including
references to files on the Jenkins controller file system, environment
variables, system properties, and values from configured secret sources.
When a resolved value is invalid in the context in which it appears, the
error response returned to the user includes it.

This allows attackers with Overall/SystemRead permission to read arbitrary
files on the Jenkins controller file system (which can lead to remote code
execution), environment variables, system properties, and values from
configured secret sources.

NOTE: This vulnerability only affects controllers with the
Overall/SystemRead permission enabled and granted to users.


SECURITY-4284 / CVE-2026-136841
Nested View Plugin 241.v178f0b_a_cd76a_ and earlier does not require POST
requests for a view creation endpoint, resulting in a cross-site request
forgery (CSRF) vulnerability.

This vulnerability allows attackers to create views.


SECURITY-4285 / CVE-2026-136842
Performance Plugin 1024.ve69e11844523 and earlier does not limit URL
schemes for the external report links it creates on build pages based on
Taurus XML format performance reports, allowing the `javascript:` scheme.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers able to control Taurus XML reports processed by
the plugin.

TIP: On Jenkins 2.539 and newer, LTS 2.541.1 and newer, enforcing Content
Security Policy protection mitigates this vulnerability.


SECURITY-3912 / CVE-2026-136843 (CSRF) & CVE-2026-136844 (permission check)
Spira Importer Plugin 4.0.0 and earlier does not perform a permission check
in an HTTP endpoint.

This allows attackers with Overall/Read permission to have Jenkins connect
to an attacker-specified URL.

Additionally, this HTTP endpoint does not require POST requests, resulting
in a cross-site request forgery (CSRF) vulnerability.


SECURITY-4251 / CVE-2026-136845 through CVE-2026-136853 (both inclusive)
Pipeline DORA Metrics Plugin 40.vdfd2cb_f019d5 and earlier does not
correctly perform permission checks in several HTTP endpoints and on its
dashboard.

This allows attackers with Overall/Read permission to view build
statistics, stage names, and DORA metrics for jobs they do not have
Item/Read permission to.


SECURITY-4449 / CVE-2026-136854
Rich Text Publisher Plugin 1.5 and earlier does not escape job names in
error messages rendered by the Rich Text Portlet.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers with View/Configure permission.

TIP: On Jenkins 2.539 and newer, LTS 2.541.1 and newer, enforcing Content
Security Policy protection mitigates this vulnerability.



