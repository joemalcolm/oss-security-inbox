X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1200" "Wednesday" "9" "February" "2022" "14:12:46" "+0100" "Daniel Beck" "ml@beckweb.net" nil "32" "[oss-security] Vulnerability in Jenkins" nil nil nil "2" nil nil (number mark "U       ml@beckweb.n Feb  9   32/1200  " thread-indent "\"[oss-security] Vulnerability in Jenkins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Vulnerability in Jenkins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31906 invoked by uid 550); 9 Feb 2022 13:12:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31874 invoked from network); 9 Feb 2022 13:12:58 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Message-Id: <591FA22B-3560-4892-8476-5105C89A122D@beckweb.net>
Date: Wed, 9 Feb 2022 14:12:46 +0100
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1644412378;e0732ae2;
X-HE-SMSGID: 1nHmm6-0004Ml-K5
Subject: [oss-security] Vulnerability in Jenkins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Jenkins 2.334
* Jenkins LTS 2.319.3


Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2022-02-09/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-2602 / CVE-2021-43859 (upstream) & CVE-2022-0538 (Jenkins)
Jenkins 2.333 and earlier, LTS 2.319.2 and earlier is affected by the
XStream library's vulnerability CVE-2021-43859. This library is used by
Jenkins to serialize and deserialize various XML files, like global and job
`config.xml`, `build.xml`, and numerous others.

This allows attackers able to submit crafted XML files to Jenkins to be
parsed as configuration, e.g. through the `POST config.xml` API, to cause a
denial of service (DoS).

