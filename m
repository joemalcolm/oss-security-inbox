Received: (qmail 11381 invoked by uid 550); 9 Sep 2022 12:51:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11351 invoked from network); 9 Sep 2022 12:51:54 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.80.82.1.1\))
Message-Id: <FC4E26D0-4162-4D71-B40D-D6D384EE67F9@beckweb.net>
Date: Fri, 9 Sep 2022 14:51:37 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3696.80.82.1.1)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1662727914;af932a8b;
X-HE-SMSGID: 1oWdTv-0000tI-Ie
Subject: [oss-security] Vulnerability in Jenkins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Jenkins 2.263
* Jenkins LTS 2.361.1


Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2022-09-09/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-2868 / CVE-2022-2048
Jenkins bundles Winstone-Jetty, a wrapper around Jetty, to act as HTTP and
servlet server when started using `java -jar jenkins.war`. This is how
Jenkins is run when using any of the installers or packages, but not when
run using servlet containers such as Tomcat.

Jenkins LTS 2.346.3 and earlier, 2.362 and earlier bundle versions of Jetty
affected by the security vulnerability CVE-2022-2048. This vulnerability
allows unauthenticated attackers to make the Jenkins UI unresponsive by
exploiting Jetty's handling of invalid HTTP/2 requests, causing a denial of
service.

NOTE: This only affects instances that enable HTTP/2, typically using the
`--http2Port` argument to `java -jar jenkins.war` or corresponding options
in service configuration files. It is disabled by default in all native
installers and the Docker images provided by the Jenkins project.



