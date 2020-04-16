X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2155" "Thursday" "16" "April" "2020" "15:28:36" "+0200" "Daniel Beck" "ml@beckweb.net" "<D2F192EF-F7B6-4FF4-8FC5-8EDD4DFC83F0@beckweb.net>" "55" "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil "4" "2020041613:28:36" "[oss-security] Multiple vulnerabilities in Jenkins plugins" (number mark "U       ml@beckweb.n Apr 16   55/2155  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5212 invoked by uid 550); 16 Apr 2020 13:28:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5187 invoked from network); 16 Apr 2020 13:28:49 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.14\))
Message-Id: <D2F192EF-F7B6-4FF4-8FC5-8EDD4DFC83F0@beckweb.net>
Date: Thu, 16 Apr 2020 15:28:36 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.104.14)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1587043729;189e6762;
X-HE-SMSGID: 1jP4ZK-0004Zc-7Q
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* AWS SAM Plugin 1.2.3
* Copr Plugin 0.6.1
* Parasoft Findings Plugin 10.4.4
* Yaml Axis Plugin 0.2.1


Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2020-04-16/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-1556 / CVE-2020-2177
Copr Plugin 0.3 and earlier stores credentials unencrypted in job
`config.xml` files as part of its configuration. These credentials can be
viewed by users with Extended Read permission or access to the master file
system.


SECURITY-1753 / CVE-2020-2178
Parasoft Findings Plugin 10.4.3 and earlier does not configure its XML
parser to prevent XML external entity (XXE) attacks. This allows a user
able to control the input files for the Parasoft Findings parser to have
Jenkins parse a crafted file that uses external entities for extraction of
secrets from the Jenkins master or server-side request forgery.


SECURITY-1825 / CVE-2020-2179
Yaml Axis Plugin 0.2.0 and earlier does not configure its YAML parser to
prevent the instantiation of arbitrary types. This results in a remote code
execution (RCE) vulnerability exploitable by users able to configure a
multi-configuration (Matrix) job, or control the contents of a previously
configured job's SCM repository.


SECURITY-1736 / CVE-2020-2180
AWS SAM Plugin 1.2.2 and earlier does not configure its YAML parser to
prevent the instantiation of arbitrary types. This results in a remote code
execution (RCE) vulnerability exploitable by users able to configure a job
or control the contents of a previously configured "AWS SAM deploy
application" build step's YAML SAM template file (`template.yaml` or
equivalent) file.

