X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1284" "Tuesday" "20" "April" "2021" "19:53:53" "+0200" "Daniel Beck" "ml@beckweb.net" nil "32" "[oss-security] Vulnerability in Jenkins" nil nil nil "4" nil nil (number mark "U       ml@beckweb.n Apr 20   32/1284  " thread-indent "\"[oss-security] Vulnerability in Jenkins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Vulnerability in Jenkins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9834 invoked by uid 550); 20 Apr 2021 17:54:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9804 invoked from network); 20 Apr 2021 17:54:05 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.15\))
Message-Id: <58F4A3F7-04B6-4CF1-B422-D8403105F09F@beckweb.net>
Date: Tue, 20 Apr 2021 19:53:53 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.104.15)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1618941245;410e2f2a;
X-HE-SMSGID: 1lYuZO-0004Un-6Y
Subject: [oss-security] Vulnerability in Jenkins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Jenkins 2.286
* Jenkins LTS 2.277.3

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2021-04-20/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

JENKINS-65280 / CVE-2021-28165
Jenkins bundles Winstone-Jetty, a wrapper around Jetty, to act as HTTP and
servlet server when started using `java -jar jenkins.war`. This is how
Jenkins is run when using any of the installers or packages, but not when
run using servlet containers such as Tomcat.

Jenkins 2.285 and earlier, LTS 2.277.2 and earlier bundles Jetty 9.4.38 or
earlier with multiple security vulnerabilities, including CVE-2021-28165.
This vulnerability may allow unauthenticated attackers to cause a denial of
service if Winstone-Jetty is configured to handle SSL/TLS connections.

