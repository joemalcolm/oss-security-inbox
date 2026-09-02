X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/02/4
Message-ID: <CAKG2iZi4OtFk9gHhToeGQW_Zq2Y+hMR-TqCW7nrM9UG+S7K=Gw@mail.gmail.com>
Date: Wed, 2 Sep 2026 16:10:39 +0200
From: Kevin Guerroudj <kguerroudj@...udbees.com>
To: oss-security@...ts.openwall.com
Subject: Multiple vulnerabilities in Jenkins and Jenkins plugins
Content-Type: text/plain; charset=utf-8

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Jenkins 2.580
* Jenkins LTS 2.568.3
* Allure Plugin 2.36.0
* Customizable Header Plugin 330.v8a_8d87511ea_1
* File Parameter Plugin 433.va_0b_80359d54d
* GitLab Plugin 1.9.182144.vc1c369226a_52
* Job Configuration History Plugin 1380.v762185b_9a_793
* LDAP Plugin 825.v2fca_37dd5b_cb_
* Microsoft Entra ID (previously Azure AD) Plugin 711.v34046f788fd7
* Performance Plugin 1017.v9e9f7b_b_b_c5e7
* Pipeline: Build Step Plugin 601.v6d4c6d1a_9dc7
* Pipeline: Groovy Libraries Plugin 805.va_fc79344957d
* SAML Plugin 4.623.v7875d61cd9f5
* Script Security Plugin 1415.v9a_f9b_3a_c253d
* SonarQube Scanner Plugin 2.19.0
* ThinBackup Plugin 2.1.5
* TICS Plugin 2026.1.0
* XebiaLabs XL Deploy Plugin 26.3.0

Additionally, we announce unresolved security issues in the following
plugins:

* Parameterized Remote Trigger Plugin

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2026-09-02/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-3972 / CVE-2026-84645
Jenkins uses serialization and deserialization to load and save
configuration and build data (using XStream). Types storing their
configuration in their own files (usually `config.xml` or `build.xml`),
like agents, items, or builds, are indicated as such by implementing the
Java interface `PersistenceRoot`. To protect from common deserialization
vulnerabilities, Jenkins uses a custom deserialization filter that only
allows deserialization of types defined in Jenkins core or plugins, or
explicitly allowed types (JEP-200).

Jenkins uses the Stapler web framework for HTTP request handling. Stapler's
basic premise is that it uses reflective access to code elements matching
its naming conventions. Since 2018, Jenkins limits request routing to only
types defined in Jenkins core or plugins, and can only access fields and
methods that have (return) types, parameters, or annotations related to
HTTP request handling.

In Jenkins 2.579 and earlier, LTS 2.568.2 and earlier, serialized objects
of types marked as storing their configuration in independent top-level
configuration files can appear as nested field values in user-submitted
`config.xml` documents and subsequently handle HTTP requests via Stapler. A
crafted combination of such objects can result in attackers getting access
to an improperly protected Script Console, resulting in remote code
execution.


SECURITY-3908 / CVE-2026-84646
In Jenkins 2.579 and earlier, LTS 2.568.2 and earlier, user objects can
appear as nested field values in other deserialized XML objects, allowing
attackers with Overall/Read permission to create user objects by submitting
crafted XML.

NOTE: These user objects are not actual Jenkins accounts and cannot be used
to log in. They are similar to the objects Jenkins creates from SCM
changelogs to associate commits with their authors.


SECURITY-3915 / CVE-2026-84647
Jenkins uses the Stapler web framework for HTTP request handling. Stapler's
form data binding instantiates configuration objects of types specified in
form submissions.

In Stapler 2107.v8dfcb_e8ed317 and earlier, except
2088.2093.vd7c3e58008a_6, included in Jenkins 2.579 and earlier, LTS
2.568.2 and earlier, Stapler does not restrict the types of objects that
can be instantiated via form submissions to those compatible with the
expected field type, allowing attackers with Overall/Read permission to
instantiate types related to configuration for which that field type was
not intended.


SECURITY-3967 / CVE-2026-84648
In Jenkins 2.579 and earlier, LTS 2.568.2 and earlier, the system log
viewer does not escape log record metadata (source, level, and timestamp)
resulting in a stored cross-site scripting (XSS) vulnerability exploitable
by attackers in control of agent processes.

TIP: On Jenkins 2.539 and newer, LTS 2.541.1 and newer, enforcing
Content Security Policy protection mitigates this vulnerability.


SECURITY-3878 / CVE-2026-84649
Jenkins uses the Stapler web framework for HTTP request handling. Stapler
provides an HTTP endpoint serving dynamically generated JavaScript
resources.

In Stapler 1839.ved17667b_a_eb_5 through 2107.v8dfcb_e8ed317 (both
inclusive), except 2088.2093.vd7c3e58008a_6, included in Jenkins 2.447
through 2.579 (both inclusive), LTS 2.452.1 through 2.568.2 (both
inclusive), these dynamically generated JavaScript resources embed the
user's cross-site request forgery (CSRF) token (crumb) as a string literal
in their response.

These resources can be loaded as a script by a page hosted on the same site
as Jenkins, such as a sibling subdomain

(e.g., `other-service.example.org` when Jenkins is at
`jenkins.example.org`), allowing attackers to obtain a valid crumb for the
targeted user's session and perform actions on their behalf.

IMPORTANT: This vulnerability is particularly impactful when the
Resource Root URL is configured on thesame site as the Jenkins URL
(e.g., `jenkins-assets.example.org` and `jenkins.example.org`).


SECURITY-4032 / CVE-2026-84650
In Jenkins, fields declared transient are excluded from serialization but
are still read back during deserialization for backward compatibility with
existing configuration files.

In Jenkins 2.579 and earlier, LTS 2.568.2 and earlier, transient fields
cannot be excluded from deserialization, allowing attackers able to submit
configuration updates to specify the values of transient fields that will
be deserialized, the impact depending on how those fields are used.


SECURITY-4025 / CVE-2026-84651
In Jenkins 2.579 and earlier, LTS 2.568.2 and earlier, the REST API and CLI
endpoints for updating agent configuration do not prevent a submitted
configuration from overwriting a different agent by specifying that agent's
name in the submitted XML document.

This allows attackers with Agent/Configure permission on one agent to take
over a different agent, gaining control of its configuration, obtaining
access to its inbound agent secret and environment variables.


SECURITY-4016 / CVE-2026-84652
Jenkins's "Keep me signed in" feature uses a persistent cookie, known as
the "remember me" cookie, to re-authenticate users without requiring them
to enter credentials again.

In Jenkins 2.579 and earlier, LTS 2.568.2 and earlier, Jenkins does not
rotate the session when a user is authenticated via the "remember me"
cookie, resulting in a session fixation vulnerability.

This allows attackers able to serve content on the same site as Jenkins,
such as a sibling subdomain (e.g., `evil.example.org` when Jenkins is at
`jenkins.example.org`), to set a known session cookie in the victim's
browser, which after the victim authenticates via the "remember me" cookie,
grants the attacker access to Jenkins as that user.

NOTE: This cannot be exploited from an unrelated domain (e.g.,
`evil.example.com` targeting Jenkins at `jenkins.example.org`).


SECURITY-3981 / CVE-2026-84653
Jenkins 2.421 through 2.579 (both inclusive), LTS 2.426.1 through 2.568.2
(both inclusive) does not correctly perform permission checks in the
Appearance configuration page added in Jenkins 2.421.

This allows attackers with Overall/Manage permission to modify Appearance
configuration options they should not have access to.

NOTE: The impact of this vulnerability depends on installed plugins. For
example, Simple Theme Plugin allows specifying URLs for JavaScript
resources served on every Jenkins page, which can result in a
cross-site scripting (XSS) vulnerability.


SECURITY-3926 / CVE-2026-84654
Jenkins uses the Stapler web framework for HTTP request handling.

In Stapler 2107.v8dfcb_e8ed317 and earlier, except
2088.2093.vd7c3e58008a_6, included in Jenkins 2.579 and earlier, LTS
2.568.2 and earlier, form data binding allows setting public static fields
of the bound configuration object.

This allows attackers who can submit configuration forms to modify public
static fields of the configuration objects those forms are bound to,
resulting in changes that apply globally to the Jenkins instance.


SECURITY-3879 / CVE-2026-84655
Jenkins 2.579 and earlier, LTS 2.568.2 and earlier does not escape map keys
when serializing objects as JSON and Python through its REST API.

This allows attackers able to control map property names to inject
arbitrary fields into JSON and Python API responses.


SECURITY-4006 / CVE-2026-84656
Jenkins 2.579 and earlier, LTS 2.568.2 and earlier does not perform an
Item/Read permission check in an HTTP endpoint.

This allows attackers with Item/Read permission on at least one job to read
build parameter names and values of jobs they have no access to.


SECURITY-4015 / CVE-2026-84657
The `build` command of the Jenkins CLI can be invoked with the `-s` flag to
wait for a triggered build to complete, canceling the build when the CLI
client is interrupted.

Jenkins merges multiple requests to build the same job with the same
parameters into a single queue item.

In Jenkins 2.579 and earlier, LTS 2.568.2 and earlier, the `build` CLI
command does not check the Item/Cancel permission when canceling a build
this way.

This allows attackers with Item/Build permission to cancel builds started
by other users by triggering a build that merges with an existing queue
item, then interrupting the CLI command.


SECURITY-3986 / CVE-2026-84658 (script approval) & CVE-2026-84659 (Groovy
sandbox)
Jenkins uses the Stapler web framework for HTTP request handling. Stapler's
data-binding mechanism instantiates objects by invoking constructors
annotated with `@...aBoundConstructor`, binding submitted data to their
arguments, and setting additional properties through methods annotated with
`@...aBoundSetter`.

Script Security Plugin 1412.v7737b_3405f86 and earlier uses the
`@...aBoundConstructor` annotation on a constructor that loads script
approval configuration, allowing attackers able to submit certain forms to
read that configuration.

Additionally, it does not enforce a permission check in a
`@...aBoundSetter` annotated method, allowing attackers to invoke it to
disable the "Force the use of the sandbox globally in the system" setting.


SECURITY-3870 / CVE-2026-84660 (build step) & CVE-2026-84661 (waitForBuild
step)
Builds in Jenkins are associated with an authentication that controls the
permissions that the build has to interact with other elements in Jenkins.
By default, builds run as SYSTEM and are unconstrained unless plugins
implement specific additional permission checks. Plugins like Authorize
Project Plugin allow changing the authentication associated with a build.

Canceling a Pipeline using the `build` step causes the triggered downstream
build to be canceled. The same applies to the `waitForBuild` step when the
`propagateAbort` parameter is set to `true`.

Pipeline: Build Step Plugin 599.v4b_67ea_11b_152 and earlier does not check
Item/Cancel permission on the downstream job before canceling those builds
in these cases.

This causes downstream builds to be canceled even when the build's
authentication lacks Item/Cancel permission on the downstream job.


SECURITY-3678 / CVE-2026-84662
Jenkins uses the Stapler web framework for HTTP request handling. Stapler's
data-binding mechanism instantiates objects by invoking constructors
annotated with `@...aBoundConstructor` and binding submitted data to their
arguments.

LDAP Plugin 807.809.vd3a_4e5e4ec98 and earlier uses the
`@...aBoundConstructor` annotation on a constructor that connects to a
specified URL.

This allows attackers able to submit certain forms to connect to an
attacker-specified URL without the required permission.


SECURITY-3815 / CVE-2026-84663
Pipeline: Groovy Libraries Plugin 798.v5cc688825312 and earlier does not
require POST requests for an HTTP endpoint, resulting in a cross-site
request forgery (CSRF) vulnerability.

This vulnerability allows attackers to delete shared library caches.


SECURITY-4097 / CVE-2026-84664
Jenkins uses the Stapler web framework for HTTP request handling. Stapler's
data-binding mechanism instantiates objects by invoking constructors
annotated with `@...aBoundConstructor`, binding submitted data to their
arguments, and setting additional properties through methods annotated with
`@...aBoundSetter`.

GitLab Plugin 1.9.16 and earlier uses the `@...aBoundConstructor`
annotation on a constructor, enabling Stapler to invoke `@...aBoundSetter`
annotated methods that overwrite the global GitLab connection
configuration.

This allows attackers able to submit certain forms to connect to an
attacker-specified URL using GitLab API tokens already configured by
administrators.


SECURITY-3989 / CVE-2026-84665
SonarQube Scanner Plugin 2.18.3 and earlier does not limit URL schemes for
the dashboard links it creates based on SonarQube scanner results, allowing
the `javascript:` scheme.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers with Item/Configure permission.

TIP: On Jenkins 2.539 and newer, LTS 2.541.1 and newer, enforcing
Content Security Policy protection mitigates this vulnerability.


SECURITY-4098 / CVE-2026-84666
Jenkins uses the Stapler web framework for HTTP request handling. Stapler's
data-binding mechanism instantiates objects by invoking constructors
annotated with `@...aBoundConstructor`, binding submitted data to their
arguments, and setting additional properties through methods annotated with
`@...aBoundSetter`.

Job Configuration History Plugin 1367.vc8fa_b_15101dc and earlier uses the
`@...aBoundConstructor` annotation on a constructor, enabling Stapler to
invoke `@...aBoundSetter` annotated methods that manage the plugin's
history recording configuration.

This allows attackers able to submit certain forms to redirect history
storage to an attacker-specified directory and modify history recording
settings.


SECURITY-4099 / CVE-2026-84667
Jenkins uses the Stapler web framework for HTTP request handling. Stapler's
data-binding mechanism instantiates objects by invoking constructors
annotated with `@...aBoundConstructor`, binding submitted data to their
arguments, and setting additional properties through methods annotated with
`@...aBoundSetter`.

ThinBackup Plugin 2.1.4 and earlier uses the `@...aBoundConstructor`
annotation on a constructor, enabling Stapler to invoke `@...aBoundSetter`
annotated methods that manage the plugin's backup configuration.

This allows attackers able to submit certain forms to redirect backup
writes to an attacker-specified directory and to include arbitrary files
from the Jenkins controller file system in backups.


SECURITY-4065 / CVE-2026-84668
Jenkins uses the Stapler web framework for HTTP request handling. Stapler's
data-binding mechanism instantiates objects by invoking constructors
annotated with `@...aBoundConstructor` and binding submitted data to their
arguments.

SAML Plugin 4.618.v441a_27fa_46d2 and earlier uses the
`@...aBoundConstructor` annotation on a constructor that writes the SAML
identity provider metadata file to the Jenkins controller file system.

This allows attackers able to submit certain forms to overwrite the SAML
identity provider metadata with attacker-controlled content without the
required permission, allowing them to authenticate as any user.


SECURITY-3645 / CVE-2026-84669
Allure Plugin 2.35.2 and earlier does not correctly validate file paths
when serving Allure report results.

This allows attackers with Item/Read permission on jobs that publish Allure
report results to read arbitrary files on the Jenkins controller's file
system.


SECURITY-4026 / CVE-2026-84670
Performance Plugin uses Java serialization to cache performance reports in
the build directory.

Performance Plugin 1015.v09ca_52b_3370e and earlier does not restrict the
classes that can be instantiated when deserializing cached performance
reports stored in the build directory on the Jenkins controller.

This allows attackers with Item/Configure permission to execute arbitrary
code on the Jenkins controller.


SECURITY-4093 / CVE-2026-84671
Jenkins uses the Stapler web framework for HTTP request handling. Stapler's
data-binding mechanism instantiates objects by invoking constructors
annotated with `@...aBoundConstructor` and binding submitted data to their
arguments.

File Parameter Plugin validates parameter names when creating build
parameter definitions to ensure they are safe to use as file name
components.

File Parameter Plugin 425.v3fa_801681b_5e and earlier uses the
`@...aBoundConstructor` annotation on a constructor that stores uploaded
files using the parameter name as a path without this validation.

This allows attackers able to submit certain forms to write files to
arbitrary locations on the Jenkins controller file system, which can
lead to remote code execution.


SECURITY-3935 / CVE-2026-84672
Microsoft Entra ID (previously Azure AD) Plugin 710.v0b_ff8e9cc2d2 and
earlier grants Entra group permissions using both the group's unique object
ID (GUID) and its display name. Entra group display names are not globally
unique, and unless the tenant restricts it, any tenant member can create a
group with an arbitrary display name.

This allows attackers who can create an Entra group with a display name
matching that of a group with a privileged Jenkins permission grant to gain
those permissions, even when the grant was configured using the group's
object ID.


SECURITY-4104 / CVE-2026-84673
Jenkins uses the Stapler web framework for HTTP request handling. Stapler's
data-binding mechanism instantiates objects by invoking constructors
annotated with `@...aBoundConstructor`, binding submitted data to their
arguments, and setting additional properties through methods annotated with
`@...aBoundSetter`.

Customizable Header Plugin 295.v2544b_ca_19b_97 and earlier uses the
`@...aBoundConstructor` annotation on a constructor, enabling Stapler to
invoke `@...aBoundSetter` annotated methods that manage the plugin's
appearance configuration.

This allows attackers able to submit certain forms to configure a custom
SVG icon containing inline JavaScript, resulting in a stored cross-site
scripting (XSS) vulnerability.


SECURITY-3948 / CVE-2026-84674
XebiaLabs XL Deploy Plugin 26.1.0 and earlier does not perform permission
checks in several HTTP endpoints.

This allows attackers with Overall/Read permission to enumerate credentials
IDs of credentials stored in Jenkins. Those can be used as part of an
attack to capture the credentials using another vulnerability.


SECURITY-3987 / CVE-2026-84675
TICS Plugin 2025.1.1 and earlier does not correctly escape build
environment variable values when constructing the OS command it executes.

This allows attackers able to control build environment variable values to
execute arbitrary commands on the agent running the build.


SECURITY-3800 / CVE-2026-84676
Parameterized Remote Trigger Plugin 3.2.2 and earlier stores tokens
unencrypted in job `config.xml` files on the Jenkins controller as part of
its configuration.

These tokens can be viewed by users with Item/Extended Read permission or
access to the Jenkins controller file system.

As of publication of this advisory, there is no fix.


SECURITY-4038 / CVE-2026-84677
Update-center2 is the tool used to generate the Jenkins update sites hosted
on `updates.jenkins.io`.

NOTE: While it is designed for use by the Jenkins project for this purpose,
others may be using it to operate their own self-hosted update sites.

update-center2 3.18.3 and earlier does not escape plugin-provided values
(plugin names, descriptions, and version metadata) when rendering plugin
download index pages, resulting in a stored cross-site scripting (XSS)
vulnerability exploitable by attackers able to provide a plugin for
hosting.

NOTE: As of publication of this advisory, the Jenkins security team is not
aware of any plugin having been released with malicious content exploiting
this vulnerability.

-- 
CONFIDENTIALITY NOTICE:_ This email and any attachments contain 
confidential and proprietary information of CloudBees intended only for the 
named recipient(s). Unauthorized use or distribution is prohibited. If you 
received this in error, please notify the sender and delete this email._

