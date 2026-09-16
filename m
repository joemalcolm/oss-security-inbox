X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/16/5
Message-ID: <CAKG2iZg-7aLdv8+pELMq7V78Ob4VRYwQobJsT3HOrBjwmR7Riw@mail.gmail.com>
Date: Wed, 16 Sep 2026 15:27:29 +0200
From: Kevin Guerroudj <kguerroudj@...udbees.com>
To: oss-security@...ts.openwall.com
Subject: Multiple vulnerabilities in Jenkins plugins
Content-Type: text/plain; charset=utf-8

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Bitbucket Push and Pull Request Plugin 4.1.0
* Bitbucket Server Integration Plugin 6.0.2
* Coverage Plugin 3.3361.v0626103a_67e6
* Gitee Plugin 1304.v2702f1d71cde
* GitLab Plugin 1.2152.veec0897048b_0
* Gradle Plugin 2.20.1253.vc116f0763a_eb_
* Keycloak Authentication Plugin 2.4.2
* OWASP Dependency-Check Plugin 5.6.5
* Pipeline: Groovy Libraries Plugin 806.v408277b_33d1d
* Pipeline: Multibranch Plugin 842.v3a_b_59b_57b_e6e
* Robot Framework Plugin 6.3.0
* Script Security Plugin 1422.v06869826dd9b_
* Warnings Plugin 13.10259.v80f407cb_03a_e


Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2026-09-16/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-3929 / CVE-2026-92122
Script Security Plugin provides a sandbox feature that allows running
user-provided scripts safely by intercepting and checking potentially
unsafe operations.

Groovy coerces a value to an interface by creating a proxy that forwards
each interface method call to a method of the same name on that value.

Script Security Plugin 1415.v9a_f9b_3a_c253d and earlier does not check the
method that the proxy calls when the value inherits a method of the same
name as an interface method.

This allows attackers with permission to define and run sandboxed scripts,
including Pipelines, to bypass the sandbox protection and execute arbitrary
code in the context of the Jenkins controller JVM.


SECURITY-3931 / CVE-2026-92123
Script Security Plugin provides a sandbox feature that allows running
user-provided scripts safely by intercepting and checking potentially
unsafe operations.

Script Security Plugin 1415.v9a_f9b_3a_c253d and earlier does not intercept
operations performed on a `null` receiver (method calls, property and
attribute accesses, and array accesses).

This allows attackers with permission to define and run sandboxed scripts,
including Pipelines, to bypass the sandbox protection and execute arbitrary
code in the context of the Jenkins controller JVM.


SECURITY-3923 / CVE-2026-92124
Script Security Plugin provides a sandbox feature that allows running
user-provided scripts safely by intercepting and checking potentially
unsafe operations.

Groovy casts a collection to another type using the elements of that
collection, either passing them to a constructor of that type or casting
each of them.

Script Security Plugin 1415.v9a_f9b_3a_c253d and earlier checks the
operations Groovy will perform with the elements it reads from the
collection, but performs the cast on the collection itself rather than on
the elements it checked.

This allows attackers with permission to define and run sandboxed scripts,
including Pipelines, to have the cast performed on different elements by
overriding the methods of a collection, bypassing the sandbox protection
and executing arbitrary code in the context of the Jenkins controller JVM.


SECURITY-3925 (1) / CVE-2026-92125
Script Security Plugin provides a sandbox feature that allows running
user-provided scripts safely by intercepting and checking potentially
unsafe operations.

Script Security Plugin 1415.v9a_f9b_3a_c253d and earlier does not reject
the `@...ovyASTTransformationClass` annotation, which a script can use to
link an annotation type it declares to an arbitrary AST transformation,
causing Groovy to run that transformation at compile time, before the
sandbox is applied.

This allows attackers with permission to define and run sandboxed scripts,
including Pipelines, to bypass the sandbox protection and execute arbitrary
code in the context of the Jenkins controller JVM.


SECURITY-3925 (2) / CVE-2026-92126
Script Security Plugin provides a sandbox feature that allows running
user-provided scripts safely by intercepting and checking potentially
unsafe operations.

Groovy's `@...lder` annotation generates builder code at compile time using
the strategy class named by its `builderStrategy` member, which can be one
of the strategies provided by Groovy or a custom implementation.

Script Security Plugin 1415.v9a_f9b_3a_c253d and earlier does not reject
`@...lder` annotations whose `builderStrategy` member names an arbitrary
class, which causes Groovy to instantiate that class at compile time,
before the sandbox is applied.

This may allow attackers with permission to define and run sandboxed
scripts, including Pipelines, to execute code outside the sandbox, in the
rare case that a suitable class is present on the classpath of the
component that evaluates the script.


SECURITY-3897 / CVE-2026-92127
Script Security Plugin allows Groovy scripts to load classpath entries from
JAR files, which administrators must approve before any script is allowed
to use them.

Script Security Plugin 1415.v9a_f9b_3a_c253d and earlier automatically
approves the classpath entries in an item configuration when a user with
Overall/Administer permission copies the item, or updates that
configuration through the REST API or CLI, allowing attackers able to
define classpath entries to execute arbitrary code in the context of the
Jenkins controller JVM.


SECURITY-3932 / CVE-2026-92128
Script Security Plugin allows Groovy scripts to load classpath entries from
JAR files, specified either by file path or by URL, which administrators
must approve before any script is allowed to use them.

Script Security Plugin 1415.v9a_f9b_3a_c253d and earlier downloads a JAR
file specified by URL twice when a script is evaluated, confirming the
approval of the first download and loading the classpath entries from the
second.

This results in a time-of-check to time-of-use (TOCTOU) race condition that
allows attackers able to define classpath entries to execute arbitrary code
in the context of the Jenkins controller JVM.

NOTE: Exploitation requires an already approved JAR file to be served from
an attacker-controlled server.


SECURITY-3977 / CVE-2026-92129
Script Security Plugin provides a sandbox feature that allows running
user-provided scripts safely by intercepting and checking potentially
unsafe operations.

Groovy allows an existing class to be extended at runtime with additional
methods.

Script Security Plugin 1415.v9a_f9b_3a_c253d and earlier does not check
calls to such methods from sandboxed scripts.

This allows attackers with permission to define and run sandboxed scripts,
including Pipelines, to bypass the sandbox protection and execute code
outside the sandbox.

NOTE: Exploitation requires that the dynamically added methods have already
been defined by code running outside the sandbox, e.g. by a plugin, as
sandboxed scripts cannot extend a class themselves.


SECURITY-3729 / CVE-2026-92130
Pipeline: Multibranch Plugin 841.vec5b_9e1806ec and earlier does not set
the appropriate context for credentials lookup in the `resolveScm` Pipeline
step, allowing the use of System-scoped credentials otherwise reserved for
the global configuration.

This allows attackers with Item/Configure permission to access and capture
credentials they are not entitled to use.


SECURITY-3796 / CVE-2026-92131
Pipeline: Groovy Libraries Plugin provides the `library` step to retrieve a
shared library from an SCM, using a library path to specify the directory
containing the library inside the SCM checkout.

Pipeline: Groovy Libraries Plugin 805.va_fc79344957d and earlier does not
restrict that library path to a relative path inside the SCM checkout.

Additionally, it follows symbolic links to locations outside of the SCM
checkout when retrieving the library.

This results in a path traversal vulnerability, allowing attackers able to
configure Pipelines to read files in a `resources` directory and to delete
files in a `test` directory on the Jenkins controller file system.


SECURITY-4028 / CVE-2026-92132
Gradle Plugin provides global options for administrators to detect build
scan links in build logs, and to show an enriched build scan summary for
those build scans on the build page.

In Gradle Plugin 2.19.1252.v15196b_5a_6e10 and earlier, the enriched build
scan summary requests data from the build scan link detected in the build
log, even when a Develocity server URL is configured in the global
configuration.

This allows attackers able to control the build log to capture the
Develocity access key configured in the global configuration by having
Jenkins connect to an attacker-specified URL.


SECURITY-3851 / CVE-2026-92133
GitLab Plugin allows jobs to override the globally configured GitLab API
token credentials with an alternative one, and caches the GitLab API client
it builds for those credentials.

GitLab Plugin 1.2149.vcfc32c82b_f7f and earlier derives the cache key from
the credentials ID alone, omitting the folder in which the credentials are
resolved, resulting in the GitLab API token credentials being taken from
the folder of the job that created the cache entry.

This allows attackers with Item/Configure permission to access GitLab API
token credentials they are not entitled to use.


SECURITY-3937 / CVE-2026-92134
Warnings Plugin uses analysis results IDs to create the links to analysis
results on the Jenkins UI.

Warnings Plugin 13.10258.va_17d49a_78c3b_ and earlier does not validate the
analysis results ID when a job configuration is submitted through the REST
API. This allows attackers with Item/Configure permission to use a
`javascript:` scheme URL as identifier, resulting in a stored cross-site
scripting (XSS) vulnerability.

TIP: On Jenkins 2.539 and newer, LTS 2.541.1 and newer, enforcing
Content Security Policy protection mitigates this vulnerability.


SECURITY-4118 / CVE-2026-92135
Coverage Plugin uses coverage results IDs to create the links to coverage
results on the Jenkins UI.

Coverage Plugin 3.3358.v9487dde48783 and earlier does not validate the
coverage results ID when a job configuration is submitted through the REST
API. This allows attackers with Item/Configure permission to use a
`javascript:` scheme URL as identifier, resulting in a stored cross-site
scripting (XSS) vulnerability.

TIP: On Jenkins 2.539 and newer, LTS 2.541.1 and newer, enforcing
Content Security Policy protection mitigates this vulnerability.


SECURITY-3992 / CVE-2026-92136
OWASP Dependency-Check Plugin 5.6.4 and earlier does not escape CWE values
from Dependency-Check reports on the Jenkins UI.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers with Item/Configure permission.

TIP: On Jenkins 2.539 and newer, LTS 2.541.1 and newer, enforcing
Content Security Policy protection mitigates this vulnerability.


SECURITY-3971 / CVE-2026-92137
Robot Framework Plugin 6.2.2 and earlier does not check that the archive
directory configured for Robot Framework report files is contained within
the build directory on the Jenkins controller.

This allows attackers with Item/Configure permission to create or replace
arbitrary files on the Jenkins controller file system with
attacker-specified content, which can lead to remote code execution.


SECURITY-3778 / CVE-2026-92138
Bitbucket Server Integration Plugin implements an OAuth provider for
Bitbucket Server.

The OAuth authorization endpoint in Bitbucket Server Integration Plugin
6.0.1 and earlier reads the `oauth_callback` URL from the submitted form
rather than from the server-side stored request token. An attacker who can
manipulate the form submission can cause Jenkins to redirect the
authorizing user's browser to an arbitrary URL. The redirect includes the
`oauth_token` and `oauth_verifier` parameters, allowing the attacker to
complete the OAuth flow and obtain an access token on behalf of the victim.

NOTE: Exploiting this vulnerability requires the attacker to have
previously registered an OAuth consumer (requires Overall/Administer
permission) and to be able to intercept and modify the victim's form
submission.


SECURITY-3980 / CVE-2026-92139
Bitbucket Push and Pull Request Plugin provides a webhook endpoint at
`/bitbucket-hook/` to receive webhook notifications.

When acting on these notifications, Bitbucket Push and Pull Request Plugin
4.0.1 and earlier trusts values provided in the webhook payload, including
certain URLs, and uses configured Bitbucket credentials to connect to those
URLs.

This allows attackers to capture Bitbucket credentials stored in Jenkins by
sending a crafted webhook payload.


SECURITY-4027 / CVE-2026-92140
Gitee Plugin 1301.v8957053c7902 and earlier does not escape the sender name
from Gitee push webhook payloads in build causes.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers able to trigger builds via the Gitee Plugin
webhook endpoint.


SECURITY-3767 / CVE-2026-92141
Keycloak Authentication Plugin 2.4.1 and earlier does not restrict the
redirect URL after login.

This allows attackers to perform phishing attacks by having users go to a
Jenkins URL that will forward them to a different site after successful
authentication.

-- 
CONFIDENTIALITY NOTICE:_ This email and any attachments contain 
confidential and proprietary information of CloudBees intended only for the 
named recipient(s). Unauthorized use or distribution is prohibited. If you 
received this in error, please notify the sender and delete this email._

