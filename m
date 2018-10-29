X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1018" "Monday" "29" "October" "2018" "14:42:29" "+0100" "Daniel Beck" "ml@beckweb.net" "<34DCD4E4-8427-4B0F-889A-75AEEAC76146@beckweb.net>" "28" "[oss-security] Script sandbox bypass in multiple Jenkins plugins" nil nil nil "10" "2018102913:42:29" "[oss-security] Script sandbox bypass in multiple Jenkins plugins" (number mark "U       ml@beckweb.n Oct 29   28/1018  " thread-indent "\"[oss-security] Script sandbox bypass in multiple Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16053 invoked by uid 550); 29 Oct 2018 13:42:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16017 invoked from network); 29 Oct 2018 13:42:41 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Message-Id: <34DCD4E4-8427-4B0F-889A-75AEEAC76146@beckweb.net>
Date: Mon, 29 Oct 2018 14:42:29 +0100
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.9.1)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1540820561;7037be3c;
X-HE-SMSGID: 1gH7oM-0005jE-26
Subject: [oss-security] Script sandbox bypass in multiple Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software. The following
releases contain fixes for security vulnerabilities:

* Pipeline: Groovy 2.60
* Script Security 1.48

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2018-10-29/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-1186
The Groovy Sandbox library used by Script Security Plugin and Pipeline Groovy
Plugin did not apply sandbox restrictions to finalize methods. This could be
used to invoke arbitrary constructors and methods, bypassing sandbox
protection.

Finalize methods are now prohibited in classes subject to sandbox security.

