X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/10/6
Message-Id: <64DDD6B7-F3F5-41F6-B8FB-68D6D7B03585@beckweb.net>
Date: Wed, 10 Jun 2026 14:45:38 +0200
From: Daniel Beck <ml@...kweb.net>
To: oss-security@...ts.openwall.com
Subject: Multiple vulnerabilities in Jenkins
Content-Type: text/plain; charset=utf-8

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Jenkins 2.568
* Jenkins LTS 2.555.3


Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2026-06-10/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-3707 / CVE-2026-53435
Jenkins uses serialization and deserialization in multiple places, like
agent/controller communication (the Remoting library) and to load and save
configuration and build data (using XStream). To protect from common
deserialization vulnerabilities, Jenkins uses a custom deserialization
filter that only allows deserialization of types defined in Jenkins core or
plugins, or explicitly allowed types (JEP-200). These vulnerabilities
generally rely on behavior defined in `#readResolve` methods that are
executed during deserialization.

Jenkins uses the Stapler web framework for HTTP request handling. Stapler's
basic premise is that it uses reflective access to code elements matching
its naming conventions. Since 2018, Jenkins limits request routing to only
types defined in Jenkins core or plugins, and can only access fields and
methods that have (return) types, parameters, or annotations related to
HTTP request handling.

In Jenkins 2.567 and earlier, LTS 2.555.2 and earlier, it is possible for
attackers to have Jenkins deserialize arbitrary types defined in Jenkins
core or plugins from an attacker-controlled `config.xml` submission in a
way that allows them to handle HTTP requests afterwards. To do this,
attackers need to have Overall/Read permission, and at least one of the
following:

* a user account (i.e., cannot be anonymous)
* any set of permissions allowing them to `POST config.xml` (e.g.,
  Item/Configure, View/Configure, Agent/Configure).

This vulnerability can be exploited in multiple ways:

* Attackers can impersonate any user and send HTTP requests on their
  behalf, up to and including use of the Script Console to run arbitrary
  code.
* Attackers can read arbitrary files from the Jenkins controller.

There are likely other ways to exploit this vulnerability, and the above
list is not exhaustive.


SECURITY-3711+3755 / CVE-2026-53436 (leading period), CVE-2026-53437 (tab or newline characters)
Jenkins 2.567 and earlier, LTS 2.555.2 and earlier improperly determines
whether a URL is safe to redirect to in the default login flow:

* A URL containing relative path segments (`./` or `../`) is validated
  before the servlet container collapses those segments into a
  protocol-relative URL starting with `//`, which browsers interpret as a
  scheme-relative URL, allowing redirection to an attacker-controlled
  domain (SECURITY-3711 / CVE-2026-53436).
* Tab or newline characters are not ignored when checking for the presence
  of `//` at the start of the URL, allowing redirection to an
  attacker-controlled domain by including a tab or newline between `//`
  (SECURITY-3755 / CVE-2026-53437).


SECURITY-3712 / CVE-2026-53438
Jenkins 2.567 and earlier, LTS 2.555.2 and earlier does not perform an
Item/Read permission check in an HTTP endpoint.

This allows attackers with Item/Cancel permission, but lacking Item/Read
permission, to cancel queue items they do not have permission to view.


SECURITY-3713 / CVE-2026-53439
Jenkins 2.567 and earlier, LTS 2.555.2 and earlier does not perform
permission checks in HTTP endpoints.

This allows attackers with Overall/Read permission to determine other
users' configured timezone and to enumerate view names of other users'
"My Views".


SECURITY-3721 / CVE-2026-53440
Jenkins 2.567 and earlier, LTS 2.555.2 and earlier does not ensure that the
"from" parameter in the "Delegate to servlet container" security realm is
safe to redirect to after login.

This allows attackers to perform phishing attacks by redirecting users to
an attacker-controlled domain.


SECURITY-3731 / CVE-2026-53441
Since Jenkins 2.483, the description of the reason why a node is offline
(the "offline cause") is defined as containing HTML and rendered as such.

Jenkins 2.567 and earlier, LTS 2.555.2 and earlier does not escape the
user-provided description of a generic offline cause that could be set
through the `POST config.xml` API.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers with Agent/Configure permission.


SECURITY-3744 / CVE-2026-53442
In Jenkins 2.567 and earlier, LTS 2.555.2 and earlier, `POST config.xml`
submissions are written to disk as-is once their content can be
successfully deserialized, while `GET config.xml` responses are served
directly from those files. As a result, plaintext secrets in a `POST
config.xml` submission persist on disk and reappear in subsequent `GET
config.xml` responses, exposing them to users with Item/Extended Read
permission.



