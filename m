Received: (qmail 32612 invoked by uid 550); 6 Mar 2024 15:45:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32576 invoked from network); 6 Mar 2024 15:45:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=beckweb.net
	; s=he112721; h=To:Date:Message-Id:Subject:Mime-Version:
	Content-Transfer-Encoding:Content-Type:From:From:Sender:Reply-To:Subject:Date
	:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=XeG0vVxvzPoS1VGFAoIN7ka19LgDRT0bHqn2aiOrmQU=; t=1709740139; x=1710172139;
	 b=XX2ETJ4Nsjp8AhlI1rV7Lh56nabud9BeSckbuuo4e/uVAT/O4WUfca9UwZ0imPaO6DvGJ1zEOc
	VI+BioYzJ8NlEVN4rUzN6FaM6EpYx1/X/UZYKOVOanSVfYgy5aooxnLIK/OvwTlP8lwyckTgLY3Ze
	WKg5H2dRTNNMsQ6v5pj/hmPPEOG4BPUci4u6fqy6JjF0qf2IPViNreS1DAo8fsqwkLKDrI7fTw3TF
	cAN3nm5Igyoj723cgt3pOU1C5POfheSvtcj2JPn2rCp8Wd2Q3l0GxDZacKowyFolPUpDdiX20lS7q
	6ibOHlyEQHEibN4Gpw319kn+90oDAELwvlhVg==;
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.300.61.1.2\))
Message-Id: <84F86108-C0D3-4CAA-A9A7-C989788C78C1@beckweb.net>
Date: Wed, 6 Mar 2024 16:48:37 +0100
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3774.300.61.1.2)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1709740139;da7fcf97;
X-HE-SMSGID: 1rhtVf-0001MM-VX
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* AppSpider Plugin 1.0.17
* Bitbucket Branch Source Plugin 871.v28d74e8b_4226
* Delphix Plugin 3.0.2 and 3.1.1
* HTML Publisher Plugin 1.32.1
* MQ Notifier Plugin 1.4.1
* OWASP Dependency-Check Plugin 5.4.6
* Trilead API Plugin 2.141.v284120fd0c46

Additionally, we announce unresolved security issues in the following
plugins:

* Build Monitor View Plugin
* docker-build-step Plugin
* GitBucket Plugin
* iceScrum Plugin
* Subversion Partial Release Manager Plugin

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2024-03-06/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-3333 / CVE-2023-48795
Trilead API Plugin bundles the Jenkins project's fork of the Trilead SSH2
library for use by other plugins.

Trilead API Plugin 2.133.vfb_8a_7b_9c5dd1 and earlier, except
2.84.86.vf9c960e9b_458, bundles versions of Jenkins/Trilead SSH2 that are
susceptible to CVE-2023-48795 (Terrapin). This vulnerability allows a
machine-in-the-middle attacker to reduce the security of an SSH connection.


SECURITY-3301 / CVE-2024-28149
SECURITY-784 / CVE-20218-1000175 is a path traversal vulnerability in
HTML Publisher Plugin 1.15 and earlier. The fix for it retained
compatibility for older reports as a fallback.

In HTML Publisher Plugin 1.16 through 1.32 (both inclusive) this fallback
for reports created in HTML Publisher Plugin 1.15 and earlier does not
properly sanitize input. This allows attackers with Item/Configure
permission to do the following:

* Implement stored cross-site scripting (XSS) attacks.
* Determine whether a path on the Jenkins controller file system exists,
  without being able to access it.


SECURITY-3302 / CVE-2024-28150
HTML Publisher Plugin 1.32 and earlier does not escape job names, report
names, and index page titles shown as part of the report frame.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers with Item/Configure permission.


SECURITY-3303 / CVE-2024-28151
HTML Publisher Plugin 1.32 and earlier archives invalid symbolic links in
report directories on agents and recreates them on the controller.
Attackers with Item/Configure permission can use them to determine whether
a path on the Jenkins controller file system exists, without being able to
access it.


SECURITY-3300 / CVE-2024-28152
Multibranch Pipelines with Bitbucket branch source can be configured to
discover pull requests from forks. The trust policy is set to "Forks in the
same account" by default.

In Bitbucket Branch Source Plugin 866.vdea_7dcd3008e and earlier, except
848.850.v6a_a_2a_234a_c81, this trust policy allows changes to Jenkinsfiles
from users without write access to the project when using Bitbucket Server.
This allows attackers able to submit pull requests from forks to change the
Pipeline behavior.


SECURITY-3344 / CVE-2024-28153
OWASP Dependency-Check Plugin 5.4.5 and earlier does not escape
vulnerability metadata from Dependency-Check reports on the Jenkins UI.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers able to control workspace contents or CVE
metadata.


SECURITY-3180 / CVE-2024-28154
MQ Notifier Plugin has a global option to log the JSON payload it sends to
RabbitMQ in the build log. This includes the build parameters, some of
which may be sensitive, and they are not masked.

In MQ Notifier Plugin 1.4.0 and earlier, this option is enabled by default.
This results in unwanted exposure of sensitive information in build logs.


SECURITY-3144 / CVE-2024-28155
AppSpider Plugin 1.0.16 and earlier does not perform permission checks in
several HTTP endpoints.

This allows attackers with Overall/Read permission to obtain information
about available scan config names, engine group names, and client names.


SECURITY-3215 / CVE-2024-28161
Delphix Plugin provides a global option for administrators to enable or
disable SSL/TLS certificate validation for Data Control Tower (DCT)
connections.

In Delphix Plugin 3.0.1 this option is set to disable SSL/TLS certificate
validation by default.


SECURITY-3330 / CVE-2024-28162
Delphix Plugin provides a global option for administrators to enable or
disable SSL/TLS certificate validation for Data Control Tower (DCT)
connections.

In Delphix Plugin 3.0.1 through 3.1.0 (both inclusive) an option change
from disabled validation to enabled validation fails to take effect until
Jenkins is restarted.


SECURITY-3200 / CVE-2024-2215 (CSRF) & CVE-2024-2216 (permission check)
docker-build-step Plugin 2.11 and earlier does not perform a permission
check in an HTTP endpoint implementing a connection test.

This allows attackers with Overall/Read permission to connect to an
attacker-specified TCP or Unix socket URL. Additionally, the plugin
reconfigures itself using the provided connection test parameters,
affecting future build step executions.

Additionally, this endpoint does not require POST requests, resulting in a
cross-site request forgery (CSRF) vulnerability.

As of publication of this advisory, there is no fix.


SECURITY-3280 / CVE-2024-28156
Build Monitor View Plugin 1.14-860.vd06ef2568b_3f and earlier does not
escape Build Monitor View names.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers able to configure Build Monitor Views.

As of publication of this advisory, there is no fix.


SECURITY-3249 / CVE-2024-28157
GitBucket Plugin 0.8 and earlier does not sanitize Gitbucket URLs on build
views.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers able to configure jobs.

As of publication of this advisory, there is no fix.


SECURITY-3325 / CVE-2024-28158 (CSRF) & CVE-2024-28159 (permission check)
Subversion Partial Release Manager Plugin 1.0.1 and earlier does not
perform a permission check in an HTTP endpoint.

This allows attackers with Item/Read permission to trigger a build.

Additionally, this endpoint does not require POST requests, resulting in a
cross-site request forgery (CSRF) vulnerability.

As of publication of this advisory, there is no fix.


SECURITY-3248 / CVE-2024-28160
iceScrum Plugin 1.1.6 and earlier does not sanitize iceScrum project URLs
on build views.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers able to configure jobs.

As of publication of this advisory, there is no fix.



