X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1354" "Wednesday" "10" "April" "2019" "17:05:37" "+0200" "Daniel Beck" "ml@beckweb.net" nil "36" nil nil nil nil "4" nil nil (number mark "U       ml@beckweb.n Apr 10   36/1354  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities in Jenkins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7568 invoked by uid 550); 10 Apr 2019 15:05:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7550 invoked from network); 10 Apr 2019 15:05:51 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Message-Id: <EC0A18B5-C79C-4A80-9A64-A9F143E90E75@beckweb.net>
Date: Wed, 10 Apr 2019 17:05:37 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.9.1)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1554908751;4a2659fe;
X-HE-SMSGID: 1hEEnD-0005nt-KA
Subject: [oss-security] Multiple vulnerabilities in Jenkins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software. The following
releases contain fixes for security vulnerabilities:

* Jenkins weekly 2.172
* Jenkins LTS 2.164.2

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2019-04-10/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-1289 / CVE-2019-1003049
The fix for SECURITY-901 in Jenkins 2.150.2 and 2.160 did not reject 
existing remoting-based CLI authentication caches.

This means that users who cached their CLI authentication before Jenkins was 
updated to 2.150.2 and newer, or 2.160 and newer, would remain authenticated.

Support for the remoting-based CLI was dropped in Jenkins 2.165, so newer 
weekly releases are not affected.


SECURITY-1327 / CVE-2019-1003050
The f:validateButton form control for the Jenkins UI did not properly escape 
job URLs. This resulted in a cross-site scripting (XSS) vulnerability 
exploitable by users with the ability to control job names.

