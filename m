X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1240" "Tuesday" "8" "January" "2019" "13:46:48" "+0100" "Daniel Beck" "ml@beckweb.net" "<A4A584CA-BA63-450D-81CB-E9AAA4BB45C1@beckweb.net>" "34" "[oss-security] Sandbox bypass in multiple Jenkins plugins" nil nil nil "1" "2019010812:46:48" "[oss-security] Sandbox bypass in multiple Jenkins plugins" (number mark "U       ml@beckweb.n Jan  8   34/1240  " thread-indent "\"[oss-security] Sandbox bypass in multiple Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5578 invoked by uid 550); 8 Jan 2019 12:47:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5528 invoked from network); 8 Jan 2019 12:47:01 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Message-Id: <A4A584CA-BA63-450D-81CB-E9AAA4BB45C1@beckweb.net>
Date: Tue, 8 Jan 2019 13:46:48 +0100
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.9.1)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1546951621;16f7823e;
X-HE-SMSGID: 1ggqmP-0007hj-Qr
Subject: [oss-security] Sandbox bypass in multiple Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software. The following
releases contain fixes for security vulnerabilities:

* Pipeline: Declarative Plugin 1.3.4.1
* Pipeline: Groovy Plugin 2.61.1
* Script Security Plugin 1.50

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2019-01-08/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-1266
Script Security sandbox protection could be circumvented during the 
compilation phase by applying AST transforming annotations such as @Grab
to source code elements.

Both the pipeline validation REST APIs and actual script/pipeline 
execution are affected.

This allowed users with Overall/Read permission, or able to control 
Jenkinsfile or sandboxed Pipeline shared library contents in SCM, to 
bypass the sandbox protection and execute arbitrary code on the Jenkins 
master.

