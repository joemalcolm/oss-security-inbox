X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["886" "Thursday" "16" "November" "2017" "16:23:55" "+0100" "Daniel Beck" "ml@beckweb.net" "<5561A290-C77D-4593-B8C7-ECC323C9E3BB@beckweb.net>" "24" "[oss-security] Reflected Cross-Site Scripting Vulnerability in Jenkins Delivery Pipeline Plugin" nil nil nil "11" "2017111615:23:55" "[oss-security] Reflected Cross-Site Scripting Vulnerability in Jenkins Delivery Pipeline Plugin" (number mark "U       ml@beckweb.n Nov 16   24/886   " thread-indent "\"[oss-security] Reflected Cross-Site Scripting Vulnerability in Jenkins Delivery Pipeline Plugin\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3443 invoked by uid 550); 16 Nov 2017 15:24:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3425 invoked from network); 16 Nov 2017 15:24:09 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <5561A290-C77D-4593-B8C7-ECC323C9E3BB@beckweb.net>
Date: Thu, 16 Nov 2017 16:23:55 +0100
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3273)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1510845849;5f5e08d2;
X-HE-SMSGID: 1eFM1D-0001gB-US
Subject: [oss-security] Reflected Cross-Site Scripting Vulnerability in Jenkins Delivery
 Pipeline Plugin

Jenkins is an open source automation server which enables developers around 
the world to reliably build, test, and deploy their software. The following 
plugin releases contain fixes for security vulnerabilities:

* Delivery Pipeline Plugin 1.0.8

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2017-11-16/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you find security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-640
Delivery Pipeline Plugin used the unescaped content of the query parameter 
`fullscreen` in its JavaScript, resulting in a cross-site scripting 
vulnerability through specially crafted URLs.

