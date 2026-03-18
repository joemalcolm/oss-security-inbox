Received: (qmail 13522 invoked by uid 550); 18 Mar 2026 14:53:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13480 invoked from network); 18 Mar 2026 14:53:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=beckweb.net;
	s=kas202511021112; t=1773845619;
	bh=k/2+YYC4XfcFSvbV3SwHORGJpfc4+4EVqzC2p1MkomQ=;
	h=From:Subject:Date:To:From;
	b=OsnR8Dr6JsE/xeM/1hgMSVnaWPCI7MLEENWZICyYexGGX0IqweCwFyllrvwtsz6Gp
	 hgfXHMD84Qp+3QhLDq91INMe44dUTIjGB8TvWRdxkqOZnDvCobet3U1f9k2uFvNIta
	 EX9ih3vzedyeVF9PPUrJZSb/eb5z6fYiwvX7AiyoVb91AfKtLj08w9B+wYWiv0ZXLS
	 aTyNMUuINa7Ps/oNs5aJG6F+cJUsxyZfB/7MnmEeiTojyGVwn0USWV2x1ZtWr049Nm
	 wdrmelQMkF9UYtm3jNu/Ahv/4QXmRZzVaG4pIwMlapUl/zjsQCgdv3WaCwfacGUjOp
	 FfbAJUdHKIc9A==
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81.1.3\))
Message-Id: <44D7997A-04B0-4192-AE9F-B0B24A2E6F74@beckweb.net>
Date: Wed, 18 Mar 2026 15:53:29 +0100
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3826.700.81.1.3)
Subject: [oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Jenkins 2.555
* Jenkins LTS 2.541.3
* LoadNinja Plugin 2.2


Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2026-03-18/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-3657 / CVE-2026-33001
Jenkins 2.554 and earlier, LTS 2.541.2 and earlier does not safely handle
symbolic links during the extraction of `.tar` and `.tar.gz` archives. This
allows crafted archives to write files to arbitrary locations on the
filesystem, restricted only by file system access permissions of the user
running Jenkins. For archives extracted on the controller, this can result
in code execution by, e.g., writing malicious scripts to the
`JENKINS_HOME/init.groovy.d/` directory, or deploying plugins to
`JENKINS_HOME/plugins/`.

A number of features and plugins use the affected functionality, most
prominently the "Archive the artifacts" post-build action, and the
`archiveArtifacts` and `archive` Pipeline steps, when using the standard
artifact manager (i.e., archiving artifacts on the controller file system).
This allows attackers with Item/Configure permission, or able to control
agent processes, to exploit this vulnerability.


SECURITY-3674 / CVE-2026-33002
Jenkins has a built-in CLI to access Jenkins from a script or shell
environment. Since Jenkins 2.217 and LTS 2.222.1, one of the ways to
communicate with the CLI is through a WebSocket endpoint. This endpoint
relies on the default Jenkins web request authentication functionality,
like HTTP Basic authentication with API tokens, or session cookies. This
endpoint is enabled when running on a version of Jetty for which Jenkins
supports WebSockets. This is the case when using the provided native
installers, packages, or the Docker containers, as well as when running
Jenkins with the command `java -jar jenkins.war`.

Jenkins 2.442 and LTS 2.426.3 introduced origin validation of requests made
through the CLI WebSocket endpoint to prevent cross-site WebSocket
hijacking (CSWSH) attacks (SECURITY-3315 in the 2024-01-24 security advisor=
y).
This validation is intended to ensure that only requests from the
Jenkins web interface itself can access the CLI WebSocket endpoint,
preventing malicious websites from establishing connections.

Jenkins 2.442 through 2.554 (both inclusive), LTS 2.426.3 through LTS
2.541.2 (both inclusive) performs this origin validation by computing the
expected origin for comparison using the `Host` or `X-Forwarded-Host` HTTP
request headers. This allows attackers to bypass the origin validation
using DNS rebinding attacks. By causing a victim to visit a malicious
website that uses DNS rebinding to resolve to the Jenkins controller's IP
address, attackers can establish a WebSocket connection to the CLI endpoint
from an untrusted origin and execute CLI commands as the anonymous user.

This is impactful when Jenkins controllers are deployed on private networks
with the anonymous user granted permissions.

Exploitation requires all of the following conditions:

* Jenkins is accessible over plain HTTP (not HTTPS).
* The CLI WebSocket endpoint is accessible.

The impact depends on the permissions of the anonymous user. With an
authorization strategy like "Anyone can do anything", or when the anonymous
user has explicitly been granted additional permissions, attackers can
execute the CLI commands that these permissions allow using, up to and
including Groovy scripting capabilities (`groovy` and `groovysh` commands)
resulting in arbitrary code execution.

If the anonymous user has no permissions, attackers can execute the
`who-am-i` CLI command, obtaining limited information about the anonymous
user in Jenkins.


SECURITY-3642 / CVE-2026-33003 (storage) & CVE-2026-33004 (masking)
LoadNinja Plugin 2.1 and earlier stores LoadNinja API keys unencrypted in
job `config.xml` files on the Jenkins controller as part of its
configuration.

These API keys can be viewed by users with Item/Extended Read permission or
access to the Jenkins controller file system.

Additionally, the job configuration form does not mask these API keys,
increasing the potential for attackers to observe and capture them.



