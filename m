X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1091" "Tuesday" "8" "August" "2017" "16:50:44" "+0200" "Daniel Beck" "ml@beckweb.net" "<4FAC7CFD-313D-44AF-8A91-50C41EB4D3C1@beckweb.net>" "28" "[oss-security] Jenkins SAML Plugin 1.0.2 and earlier stored secrets unencrypted" nil nil nil "8" "2017080814:50:44" "[oss-security] Jenkins SAML Plugin 1.0.2 and earlier stored secrets unencrypted" (number mark "U       ml@beckweb.n Aug  8   28/1091  " thread-indent "\"[oss-security] Jenkins SAML Plugin 1.0.2 and earlier stored secrets unencrypted\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31912 invoked by uid 550); 8 Aug 2017 14:50:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31817 invoked from network); 8 Aug 2017 14:50:56 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <4FAC7CFD-313D-44AF-8A91-50C41EB4D3C1@beckweb.net>
Date: Tue, 8 Aug 2017 16:50:44 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3273)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1502203856;a18aed28;
X-HE-SMSGID: 1df5qH-00061U-2Z
Subject: [oss-security] Jenkins SAML Plugin 1.0.2 and earlier stored secrets unencrypted

Jenkins is an open source automation server which enables developers around 
the world to reliably build, test, and deploy their software. The following 
plugin releases contain fixes for security vulnerabilities:

* SAML Plugin 1.0.3

Users of these plugins should upgrade them to the indicated versions.

Descriptions of the vulnerabilities are below. Some more details, 
severity, and attribution can be found here:
https://jenkins.io/security/advisory/2017-08-08/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you find security vulnerabilities in Jenkins, please report them as 
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

JENKINS-46007
The SAML Plugin stored passwords unencrypted as part of its configuration. 
This allowed users with Jenkins master local file system access and Jenkins 
administrators to retrieve the stored password. The latter could result in 
exposure of the passwords through browser extensions, cross-site scripting 
vulnerabilities, etc.

