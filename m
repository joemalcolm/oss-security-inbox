X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1172" "Wednesday" "16" "June" "2021" "15:32:20" "+0200" "Daniel Beck" "ml@beckweb.net" nil "36" "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil "6" nil nil (number mark "U       ml@beckweb.n Jun 16   36/1172  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31796 invoked by uid 550); 16 Jun 2021 13:32:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31763 invoked from network); 16 Jun 2021 13:32:31 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.15\))
Message-Id: <F09E188B-8CA8-4E1F-B7E3-714E5A04ACB2@beckweb.net>
Date: Wed, 16 Jun 2021 15:32:20 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.104.15)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1623850351;4e1033c4;
X-HE-SMSGID: 1ltVeW-0006YM-Ey
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Scriptler Plugin 3.2 and 3.3


Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2021-06-16/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-2224 / CVE-2021-21667
Scriptler Plugin 3.2 and earlier does not escape parameter names shown in
job configuration forms.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers with Scriptler/Configure permission.


SECURITY-2390 / CVE-2021-21668
Scriptler Plugin 3.1 and earlier does not escape script content.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers with Scriptler/Configure permission.


