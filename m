X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1117" "Friday" "18" "June" "2021" "11:16:07" "+0200" "Daniel Beck" "ml@beckweb.net" nil "31" "[oss-security] Vulnerability in Jenkins Generic Webhook Trigger Plugin" nil nil nil "6" nil nil (number mark "U       ml@beckweb.n Jun 18   31/1117  " thread-indent "\"[oss-security] Vulnerability in Jenkins Generic Webhook Trigger Plugin\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Vulnerability in Jenkins Generic Webhook Trigger Plugin" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29941 invoked by uid 550); 18 Jun 2021 09:16:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29911 invoked from network); 18 Jun 2021 09:16:19 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.15\))
Message-Id: <42A78409-118C-4CF3-B50F-3AB2FC614CCB@beckweb.net>
Date: Fri, 18 Jun 2021 11:16:07 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.104.15)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1624007779;fe57e312;
X-HE-SMSGID: 1luAbf-0006SR-O3
Subject: [oss-security] Vulnerability in Jenkins Generic Webhook Trigger Plugin

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Generic Webhook Trigger Plugin 1.74


Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2021-06-18/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-2330 / CVE-2021-21669
Generic Webhook Trigger Plugin 1.72 and earlier does not configure its XML
parser to prevent XML external entity (XXE) attacks.

This allows attackers with the ability to call webhooks configured to
extract parameters using XPath to have Jenkins parse a crafted XML request
body that uses external entities for extraction of secrets from the Jenkins
controller or server-side request forgery.


