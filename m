X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1258" "Tuesday" "26" "January" "2021" "11:46:34" "+0100" "Daniel Beck" "ml@beckweb.net" "<406A0181-35A5-49BF-96C5-6EF46B0365E7@beckweb.net>" "33" "[oss-security] Vulnerability in Jenkins" nil nil nil "1" "2021012610:46:34" "[oss-security] Vulnerability in Jenkins" (number mark "U       ml@beckweb.n Jan 26   33/1258  " thread-indent "\"[oss-security] Vulnerability in Jenkins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Vulnerability in Jenkins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10008 invoked by uid 550); 26 Jan 2021 10:46:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9977 invoked from network); 26 Jan 2021 10:46:45 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.15\))
Message-Id: <406A0181-35A5-49BF-96C5-6EF46B0365E7@beckweb.net>
Date: Tue, 26 Jan 2021 11:46:34 +0100
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.104.15)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1611658005;57e80f33;
X-HE-SMSGID: 1l4Lrm-0002ff-9p
Subject: [oss-security] Vulnerability in Jenkins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Jenkins 2.276
* Jenkins LTS 2.263.3


Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2021-01-26/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-2197 / CVE-2021-21615
Due to a time-of-check to time-of-use (TOCTOU) race condition, the file
browser for workspaces, archived artifacts, and
`$JENKINS_HOME/userContent/` follows symbolic links to locations outside
the directory being browsed in Jenkins 2.275 and LTS 2.263.2.

This allows attackers with Job/Workspace permission and the ability to
control workspace contents, e.g., with Job/Configure permission or the
ability to change SCM contents, to create symbolic links that allow them to
access files outside workspaces using the workspace browser.

