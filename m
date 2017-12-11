X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1172" "Monday" "11" "December" "2017" "15:27:43" "+0100" "Daniel Beck" "ml@beckweb.net" "<FBE17D96-D1AD-4F74-9D28-C82B19772071@beckweb.net>" "31" "[oss-security] Jenkins Script Security Plugin 1.36 and earlier arbitrary file read vulnerability" nil nil nil "12" "2017121114:27:43" "[oss-security] Jenkins Script Security Plugin 1.36 and earlier arbitrary file read vulnerability" (number mark "U       ml@beckweb.n Dec 11   31/1172  " thread-indent "\"[oss-security] Jenkins Script Security Plugin 1.36 and earlier arbitrary file read vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32368 invoked by uid 550); 11 Dec 2017 14:27:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32334 invoked from network); 11 Dec 2017 14:27:55 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <FBE17D96-D1AD-4F74-9D28-C82B19772071@beckweb.net>
Date: Mon, 11 Dec 2017 15:27:43 +0100
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3273)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1513002475;e6d3f141;
X-HE-SMSGID: 1eOP3Y-0004BA-70
Subject: [oss-security] Jenkins Script Security Plugin 1.36 and earlier arbitrary file read
 vulnerability

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software. The following
plugin releases contain fixes for security vulnerabilities:

* Script Security Plugin 1.37

Users of these plugins should upgrade them to the indicated versions.

Descriptions of the vulnerabilities are below. Some more details, 
severity, and attribution can be found here:
https://jenkins.io/security/advisory/2017-12-11/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-663
Users with the ability to configure sandboxed Groovy scripts are able to
use a type coercion feature in Groovy to create new `File` objects from
strings. This allowed reading arbitrary files on the Jenkins master file
system.

Such a type coercion is now subject to sandbox protection and considered
to be a call to the `new File(String)` constructor for the purpose of
in-process script approval.

