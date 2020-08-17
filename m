X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1265" "Monday" "17" "August" "2020" "16:09:12" "+0200" "Daniel Beck" "ml@beckweb.net" "<D2B3C916-4B3F-4971-A6CE-979187CB00EA@beckweb.net>" "33" "[oss-security] Vulnerability in Jenkins" "^Date:" nil nil "8" "2020081714:09:12" "[oss-security] Vulnerability in Jenkins" (number mark "U       ml@beckweb.n Aug 17   33/1265  " thread-indent "\"[oss-security] Vulnerability in Jenkins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Vulnerability in Jenkins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12272 invoked by uid 550); 17 Aug 2020 14:09:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12254 invoked from network); 17 Aug 2020 14:09:23 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.15\))
Message-Id: <D2B3C916-4B3F-4971-A6CE-979187CB00EA@beckweb.net>
X-Mailer: Apple Mail (2.3445.104.15)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1597673363;cf8ea96e;
X-HE-SMSGID: 1k7fp2-0007b4-5b
Date: Mon, 17 Aug 2020 16:09:12 +0200
From: Daniel Beck <ml@beckweb.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Vulnerability in Jenkins
To: oss-security@lists.openwall.com

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Jenkins 2.243
* Jenkins LTS 2.235.5


Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2020-08-17/?

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-1983 / CVE-2019-17638
Jenkins bundles Winstone-Jetty, a wrapper around Jetty, to act as HTTP and
servlet server when started using `java -jar jenkins.war`. This is how
Jenkins is run when using any of the installers or packages, but not when
run using servlet containers such as Tomcat.

Jenkins 2.224 through 2.242 and LTS 2.222.1 through 2.235.4 bundles Jetty
9.4.27 with the security vulnerability CVE-2019-17638. This vulnerability
may allow unauthenticated attackers to obtain HTTP response headers that
may include sensitive data intended for another user.

