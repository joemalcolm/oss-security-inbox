X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/28/6
Message-ID: <CAKG2iZjHT0g6rkqOQgVSGNWAop2Tz85NDDabFUnQRvM0s0Q2YQ@mail.gmail.com>
Date: Wed, 28 Oct 2026 17:19:58 +0100
From: Kevin Guerroudj <kguerroudj@...udbees.com>
To: oss-security@...ts.openwall.com
Subject: Multiple vulnerabilities in Jenkins
Content-Type: text/plain; charset=utf-8

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Jenkins 2.588
* Jenkins LTS 2.580.2


Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2026-10-28/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-4125 / CVE-2026-117612
Jenkins uses XStream for serialization and deserialization of configuration
and build data. To protect from common deserialization vulnerabilities,
Jenkins uses a custom deserialization filter that only allows
deserialization of types defined in Jenkins core or plugins, or explicitly
allowed types (JEP-200). These vulnerabilities generally rely on behavior
defined in `#readResolve` methods that are executed during deserialization.

The custom XStream converter used by Jenkins 2.587 and earlier, LTS 2.580.1
and earlier does not apply the deserialization filter to classes referenced
by the `resolves-to` attribute. This allows attackers to instantiate
arbitrary types during deserialization, potentially leading to remote code
execution. To do this, attackers need to have Overall/Read permission, and
at least one of the following:

* a user account (i.e., cannot be anonymous)
* any set of permissions allowing them to `POST config.xml` (e.g.,
  Item/Configure, View/Configure, Agent/Configure).


SECURITY-4225 / CVE-2026-117613
Jenkins uses XStream for serialization and deserialization of configuration
and build data. The ability to provide XML documents to XStream is exposed
to users who hold the respective */Configure permission, e.g., the item
`POST config.xml` API is available with Item/Configure permission.

XStream by itself does not restrict the types of collection elements after
deserialization. While some converters in Jenkins restrict collection
element types (see SECURITY-3707 in the 2026-06-10 security advisory]),
not all converters restrict element types.

In Jenkins 2.587 and earlier, LTS 2.580.1 and earlier this allows attackers
with Item/Configure permission to submit a crafted job `config.xml` file
that causes a stored cross-site scripting (XSS) vulnerability.

TIP: On Jenkins 2.539 and newer, LTS 2.541.1 and newer, enforcing
Content Security Policy protection mitigates the known impact of
this vulnerability.

Other XSS vulnerabilities, or other vulnerability types stemming from
unexpected collection element types, may also be possible.


SECURITY-4123 / CVE-2026-117614
Since Jenkins 2.86, LTS 2.89.1 launching agents by running a command on the
controller is implemented in the Command Agent Launcher Plugin rather than
in Jenkins.

For backward compatibility with older agent configurations, Jenkins 2.587
and earlier, LTS 2.580.1 and earlier converts the launch commands they
contain into launchers provided by this plugin.

This conversion does not check whether the launch command has been approved
by an administrator, allowing attackers with Agent/Configure permission to
execute arbitrary code in the context of the Jenkins controller JVM.


SECURITY-4187 / CVE-2026-117615
When renaming an item, Jenkins moves its directory on the controller file
system, or copies it if it cannot be moved.

Jenkins 2.587 and earlier, LTS 2.580.1 and earlier follows symbolic links
when copying the directory of an item being renamed.

This allows attackers with Item/Create and Item/Configure permission to
read arbitrary files on the Jenkins controller file system, which can lead
to remote code execution.


SECURITY-4188 / CVE-2026-117616
Jenkins 2.587 and earlier, LTS 2.580.1 and earlier provides an HTTP
endpoint that loads agents by name without validating the name, so that any
`config.xml` file on the controller file system can be loaded, as an agent
carrying the name declared in that file.

This allows attackers with Overall/Read permission to load any `config.xml`
file on the controller file system as an agent configuration, replacing the
configuration of an existing agent or defining a new agent. The name
declared in that file also determines where the agent's configuration is
written. When this agent is saved, Jenkins overwrites the `config.xml` file
at that location, potentially resulting in arbitrary code execution.


SECURITY-4248 / CVE-2026-117617
To prevent writing files outside the target directory, Jenkins refuses to
write files through symbolic links when extracting archived artifacts on
the controller.

Jenkins 2.587 and earlier, LTS 2.580.1 and earlier checks for symbolic
links in the path of an extracted file only before creating its parent
directories, not immediately before writing it, and allows symbolic links
in artifacts to replace existing files or empty directories.

This allows attackers with Item/Configure permission to write files to
arbitrary locations on the Jenkins controller file system by archiving
artifacts concurrently, e.g., from parallel branches of a Pipeline, which
can lead to remote code execution.


SECURITY-4232 / CVE-2026-117621
When the workspace of a job is located on an agent, Jenkins retrieves the
list of files and directories shown in the workspace browser from that
agent.

In Jenkins 2.587 and earlier, LTS 2.580.1 and earlier, the agent computes
the URL of the link shown for each file and directory.

This results in a cross-site scripting (XSS) vulnerability exploitable by
attackers in control of agent processes.

TIP: On Jenkins 2.539 and newer, LTS 2.541.1 and newer, enforcing
Content Security Policy protection mitigates this vulnerability.


SECURITY-4249 / CVE-2026-117622
To protect against deserialization vulnerabilities, Jenkins restricts the
types of objects that agents can send to the controller (JEP-200).

Jenkins 2.587 and earlier, LTS 2.580.1 and earlier allows agents to send
exceptions implementing the Stapler `HttpResponse` interface, and renders
them as HTTP responses.

This results in a cross-site scripting (XSS) vulnerability exploitable by
attackers in control of agent processes.


SECURITY-4229 / CVE-2026-117623
When the breadcrumb bar does not fit in the browser window, Jenkins moves
breadcrumbs into an overflow menu, and shows the full text of long
breadcrumbs, such as job, build, or user names, in a tooltip.

Jenkins 2.587 and earlier, LTS 2.580.1 and earlier does not escape the text
shown in these tooltips.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers with Overall/Read permission.

TIP: On Jenkins 2.539 and newer, LTS 2.541.1 and newer, enforcing
Content Security Policy protection mitigates this vulnerability.


SECURITY-4122 / CVE-2026-117618
By default, the initial setup of Jenkins configures the "Jenkins' own user
database" security realm and the "Logged-in users can do anything"
authorization strategy, and creates an initial user account. During the
setup wizard, administrators can create a new administrator account, in
which case Jenkins deletes the initial account and then creates the new
account.

To prevent administrators from being locked out, the "Jenkins' own user
database" security realm provides an HTTP endpoint that allows
unauthenticated users to create a user account while no user accounts
exist.

In Jenkins 2.587 and earlier, LTS 2.580.1 and earlier, this HTTP endpoint
does not check whether the setup wizard has been completed, resulting in a
race condition that allows unauthenticated attackers to create an
administrator account while the initial account is being replaced.


SECURITY-4189 / CVE-2026-117619
Jenkins's "Keep me signed in" feature uses a persistent cookie, known as
the "remember me" cookie, to re-authenticate users without requiring them
to enter credentials again. The validity of this cookie does not depend on
the credentials used to obtain it.

Jenkins 2.587 and earlier, LTS 2.580.1 and earlier allows requests
authenticated using HTTP Basic authentication, including with an API token,
to obtain a "remember me" cookie.

This allows attackers who have obtained a user's API token to retain access
to Jenkins using a "remember me" cookie after the API token is revoked or
expires.


SECURITY-4226 / CVE-2026-117620
Jenkins uses XStream for serialization and deserialization of configuration
and build data. The ability to provide XML documents to XStream is exposed
to users who hold the respective */Configure permission, e.g., the item
`POST config.xml` API is available with Item/Configure permission.

When invalid data (e.g., data for a field that no longer exists) is loaded,
this is recorded by the "Manage Old Data" feature if the data is being
loaded from disk to allow administrators to review and correct any errors.
It also allows saving the invalid objects again to remove any stored
obsolete data.

In Jenkins 2.587 and earlier, LTS 2.580.1 and earlier, some of the code
paths to report invalid data are not restricted to data being loaded from
disk. This allows attackers with Overall/Read permission to trigger a
warning in the "Manage Old Data" feature. When an administrator acts on the
warning, it can override a Jenkins user account's data with
attacker-controlled content. On controllers using Jenkins's own user
database, this includes the password for that user account, so that the
attacker can log in as that user afterwards.


SECURITY-4243 / CVE-2026-117624
Jenkins uses XStream for serialization and deserialization of configuration
and build data. Types storing their configuration in their own files
(usually `config.xml` or `build.xml`), like agents, items, or builds, are
indicated as such by implementing the Java interface `PersistenceRoot`.

Since SECURITY-3972 in the 2026-09-02 security advisory, Jenkins attempts
to prevent objects of
types marked as storing their configuration in independent top-level
configuration files in Jenkins from being deserialized as nested values in
the configuration of other objects.

Jenkins 2.587 and earlier, LTS 2.580.1 and earlier does not consistently
enforce this restriction, allowing attackers to bypass the root element
check and potentially inject malicious nested objects.

As of publication, the confirmed impact of this vulnerability is limited to
the creation of new user records (name and display name only), similar to
users appearing in SCM logs. Notably, no new user accounts with the ability
to log in can be created (unlike in SECURITY-4226).


SECURITY-4206 / CVE-2026-117625
Jenkins 2.587 and earlier, LTS 2.580.1 and earlier does not perform a
permission check in an HTTP endpoint.

This allows attackers with Overall/Read permission to obtain the server,
port, user name, and no-proxy host list of the configured HTTP proxy.


SECURITY-4237 / CVE-2026-117626
Jenkins 2.587 and earlier, LTS 2.580.1 and earlier improperly identifies
file paths attempting path traversal in the file browser for workspaces and
`$JENKINS_HOME/userContent/`.

This allows attackers with Overall/Read permission to obtain the names,
sizes, and last modification times of files in `$JENKINS_HOME`.
Additionally, it allows attackers with Item/Workspace permission to obtain
the names of jobs that have a workspace on the same agent.

-- 
CONFIDENTIALITY NOTICE:_ This email and any attachments contain 
confidential and proprietary information of CloudBees intended only for the 
named recipient(s). Unauthorized use or distribution is prohibited. If you 
received this in error, please notify the sender and delete this email._

