X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1402" "Wednesday" "11" "October" "2017" "18:25:10" "+0200" "Daniel Beck" "ml@beckweb.net" "<15F70552-0CCA-437A-947E-E6442FA282DB@beckweb.net>" "38" "[oss-security] Multiple vulnerabilities in Jenkins plugins" "^Date:" nil nil "10" "2017101116:25:10" "[oss-security] Multiple vulnerabilities in Jenkins plugins" (number mark "U       ml@beckweb.n Oct 11   38/1402  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24011 invoked by uid 550); 11 Oct 2017 16:25:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23982 invoked from network); 11 Oct 2017 16:25:22 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <15F70552-0CCA-437A-947E-E6442FA282DB@beckweb.net>
X-Mailer: Apple Mail (2.3273)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1507739122;512bb53e;
X-HE-SMSGID: 1e2Jok-0005eb-Mh
Date: Wed, 11 Oct 2017 18:25:10 +0200
From: Daniel Beck <ml@beckweb.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins
To: oss-security@lists.openwall.com

Jenkins is an open source automation server which enables developers around 
the world to reliably build, test, and deploy their software. The following 
plugin releases contain fixes for security vulnerabilities:

* Maven Plugin 3.0
* Swarm Plugin (Client) 3.5

A vulnerability in the Speaks! Plugin has no fix; its distribution has been
suspended.

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2017-10-11/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you find security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-557
Maven Plugin bundled a version of the commons-httpclient library with the 
vulnerability CVE-2012-6153 that incorrectly verified SSL certificates, 
making it susceptible to man-in-the-middle attacks.

SECURITY-597
Swarm Plugin Client bundled a version of the commons-httpclient library 
with the vulnerability CVE-2012-6153 that incorrectly verified SSL 
certificates, making it susceptible to man-in-the-middle attacks.

SECURITY-623
Speaks! Plugin allows users with Job/Configure permission to run arbitrary 
Groovy code inside the Jenkins JVM, effectively elevating privileges to 
Overall/Run Scripts.

