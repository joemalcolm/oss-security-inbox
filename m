Received: (qmail 32360 invoked by uid 550); 18 Oct 2023 17:01:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32327 invoked from network); 18 Oct 2023 17:01:07 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.700.6\))
Message-Id: <92629B27-C51A-42A0-997F-81DFD527CA94@beckweb.net>
Date: Wed, 18 Oct 2023 19:00:45 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3731.700.6)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1697648467;debb47c2;
X-HE-SMSGID: 1qt9uh-0007t4-Vb
Subject: [oss-security] Vulnerability in Jenkins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Jenkins 2.428
* Jenkins LTS 2.414.3


Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2023-10-18/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-3291 / CVE-2023-36478 & CVE-2023-44487
Jenkins bundles Winstone-Jetty, a wrapper around Jetty, to act as HTTP and
servlet server when started using `java -jar jenkins.war`. This is how
Jenkins is run when using any of the installers or packages, but not when
run using servlet containers such as Tomcat.

Jenkins 2.427 and earlier, LTS 2.414.2 and earlier bundles versions of
Jetty affected by the security vulnerabilities CVE-2023-36478 and
CVE-2023-44487. These vulnerabilities allow unauthenticated attackers to
cause a denial of service.

NOTE: This only affects instances that enable HTTP/2, typically using the
`--http2Port` argument to `java -jar jenkins.war` or corresponding options
in service configuration files. It is disabled by default in all native
installers and the Docker images provided by the Jenkins project.



