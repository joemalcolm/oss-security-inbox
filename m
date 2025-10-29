Received: (qmail 9660 invoked by uid 550); 29 Oct 2025 13:04:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7736 invoked from network); 29 Oct 2025 13:03:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=beckweb.net;
	s=kas202505051015; t=1761743022;
	bh=JgM0OBjV7Vtb7nppl4WuGdCMMAJdtTl6gZN5L9UvZo8=;
	h=From:Subject:Date:To:From;
	b=qiwzIAU5rXdkS/lXIwMhGY+QOIcYv0CVooM4OzEb/mpyCd6e7oNk4WzEGkz+5XfsU
	 cK2pH1FNX/o1JFbYh27zG9lFNdnIQeTGRSFHv62OXsEUPjFZTL9SsXAzMBOBmWjK4v
	 2hP/+VOMLSFpCmlwb97Dz0rLayu6+2LQ7ClkYTBYbj5dAhPbAIWmNLg5fbwhCqPrx3
	 2nZ0X15wEUiPbet/bGGeRbgJZY/bbG0uscHC6DnZXstp5CIZok8EPolQB3+IykPtYS
	 00SrhWLdHFycBVRCMEgvHpVeSgQMMP5jIXAL8HPtqBP6ICBImv/Dwz1J84tdeh2/6s
	 5gzLRQRpEnapQ==
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81\))
Message-Id: <A062B294-84C0-4E3F-8C08-C03D7E469B74@beckweb.net>
Date: Wed, 29 Oct 2025 14:03:31 +0100
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3826.700.81)
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* MCP Server Plugin 0.86.v7d3355e6a_a_18
* SAML Plugin 4.583.585.v22ccc1139f55

Additionally, we announce unresolved security issues in the following
plugins:

* Azure CLI Plugin
* ByteGuard Build Actions Plugin
* Curseforge Publisher Plugin
* Eggplant Runner Plugin
* Extensible Choice Parameter Plugin
* JDepend Plugin
* Nexus Task Runner Plugin
* OpenShift Pipeline Plugin
* Publish to Bitbucket Plugin
* Start Windocks Containers Plugin
* Themis Plugin

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2025-10-29/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-3613 / CVE-2025-64131
SAML Plugin 4.583.vc68232f7018a_ and earlier does not implement a replay
cache.

This allows attackers able to obtain information about the SAML
authentication flow between a user's web browser and Jenkins to replay
those requests, authenticating to Jenkins as that user.


SECURITY-3622 / CVE-2025-64132
MCP Server Plugin 0.84.v50ca_24ef83f2 and earlier does not perform
permission checks in several MCP tools.

This allows to do the following:

* Attackers with Item/Read permission can obtain information about the
  configured SCM in a job despite lacking Item/Extended Read permission
  (`getJobScm`).
* Attackers with Item/Read permission can trigger new builds of a job
  despite lacking Item/Build permission (`triggerBuild`).
* Attackers without Overall/Read permission can retrieve the names of
  configured clouds (`getStatus`).


SECURITY-3583 / CVE-2025-64133
Extensible Choice Parameter Plugin 239.v5f5c278708cf and earlier does not
require POST requests for an HTTP endpoint, resulting in a cross-site
request forgery (CSRF) vulnerability.

This vulnerability allows attackers to execute sandboxed Groovy code.

As of publication of this advisory, there is no fix.


SECURITY-2936 / CVE-2025-64134
JDepend Plugin 1.3.1 and earlier includes an outdated version of JDepend
Maven Plugin that does not configure its XML parser to prevent XML external
entity (XXE) attacks.

This allows attackers able to configure input files for the "Report
JDepend" step to have Jenkins parse a crafted file that uses external
entities for extraction of secrets from the Jenkins controller or
server-side request forgery.

As of publication of this advisory, there is no fix.


SECURITY-3326 / CVE-2025-64135
Eggplant Runner Plugin 0.0.1.301.v963cffe8ddb_8 and earlier sets the Java
system property `jdk.http.auth.tunneling.disabledSchemes` to an empty value
as part of applying a proxy configuration.

This disables a protection mechanism of the Java runtime addressing
CVE-2016-5597.

As of publication of this advisory, there is no fix.


SECURITY-3517 / CVE-2025-64136 (CSRF) & CVE-2025-64137 (permission check)
Themis Plugin 1.4.1 and earlier does not perform a permission check in an
HTTP endpoint.

This allows attackers with Overall/Read permission to connect to an
attacker-specified URL.

Additionally, this endpoint does not require POST requests, resulting in a
cross-site request forgery (CSRF) vulnerability.

As of publication of this advisory, there is no fix.


SECURITY-3531 / CVE-2025-64138 (CSRF) & CVE-2025-64139 (permission check)
Start Windocks Containers Plugin 1.4 and earlier does not perform a
permission check in an HTTP endpoint.

This allows attackers with Overall/Read permission to connect to an
attacker-specified URL.

Additionally, this endpoint does not require POST requests, resulting in a
cross-site request forgery (CSRF) vulnerability.

As of publication of this advisory, there is no fix.


SECURITY-3538 / CVE-2025-64140
Azure CLI Plugin 0.9 and earlier does not restrict which commands it
executes on the Jenkins controller.

This allows attackers with Item/Configure permission to execute arbitrary
shell commands on the Jenkins controller.

As of publication of this advisory, there is no fix.


SECURITY-3550 / CVE-2025-64141 (CSRF) & CVE-2025-64142 (permission check)
Nexus Task Runner Plugin 0.9.2 and earlier does not perform a permission
check in an HTTP endpoint.

This allows attackers with Overall/Read permission to connect to an
attacker-specified URL using attacker-specified username and password.

Additionally, this endpoint does not require POST requests, resulting in a
cross-site request forgery (CSRF) vulnerability.

As of publication of this advisory, there is no fix.


SECURITY-3553 / CVE-2025-64143
OpenShift Pipeline Plugin 1.0.57 and earlier stores authorization tokens
unencrypted in job `config.xml` files on the Jenkins controller as part of
its configuration.

These token can be viewed by users with Item/Extended Read permission or
access to the Jenkins controller file system.

As of publication of this advisory, there is no fix.


SECURITY-3560 / CVE-2025-64144 (storage) & CVE-2025-64145 (masking)
ByteGuard Build Actions Plugin 1.0 and earlier stores API tokens
unencrypted in job `config.xml` files on the Jenkins controller as part of
its configuration.

These tokens can be viewed by users with Item/Extended Read permission or
access to the Jenkins controller file system.

Additionally, the job configuration form does not mask these credentials,
increasing the potential for attackers to observe and capture them.

As of publication of this advisory, there is no fix.


SECURITY-3562 / CVE-2025-64146 (storage) & CVE-2025-64147 (masking)
Curseforge Publisher Plugin 1.0 and earlier stores API Keys unencrypted in
job `config.xml` files on the Jenkins controller as part of its
configuration.

These keys can be viewed by users with Item/Extended Read permission or
access to the Jenkins controller file system.

Additionally, the job configuration form does not mask these keys,
increasing the potential for attackers to observe and capture them.

As of publication of this advisory, there is no fix.


SECURITY-3570 / CVE-2025-64148
Publish to Bitbucket Plugin 0.4 and earlier does not perform a permission
check in a method implementing form validation.

This allows attackers with Overall/Read permission to enumerate credentials
IDs of credentials stored in Jenkins. Those can be used as part of an
attack to capture the credentials using another vulnerability.

As of publication of this advisory, there is no fix.


SECURITY-3576 / CVE-2025-64149 (CSRF) & CVE-2025-64150 (permission check)
Publish to Bitbucket Plugin 0.4 and earlier does not perform a permission
check in an HTTP endpoint.

This allows attackers with Overall/Read permission to connect to an
attacker-specified HTTP URL using attacker-specified credentials IDs
obtained through another method, capturing credentials stored in Jenkins.

Additionally, this endpoint does not require POST requests, resulting in a
cross-site request forgery (CSRF) vulnerability.

As of publication of this advisory, there is no fix.



