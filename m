X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1068" "Wednesday" "6" "December" "2017" "14:37:19" "+0100" "Daniel Beck" "ml@beckweb.net" "<8AE227B9-E337-45DC-9D8A-C4DB2452FB87@beckweb.net>" "29" "[oss-security] Jenkins EC2 Plugin 1.37 and earlier arbitrary shell command execution" nil nil nil "12" "2017120613:37:19" "[oss-security] Jenkins EC2 Plugin 1.37 and earlier arbitrary shell command execution" (number mark "U       ml@beckweb.n Dec  6   29/1068  " thread-indent "\"[oss-security] Jenkins EC2 Plugin 1.37 and earlier arbitrary shell command execution\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13498 invoked by uid 550); 6 Dec 2017 13:37:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13462 invoked from network); 6 Dec 2017 13:37:31 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <8AE227B9-E337-45DC-9D8A-C4DB2452FB87@beckweb.net>
Date: Wed, 6 Dec 2017 14:37:19 +0100
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3273)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1512567451;b7a54092;
X-HE-SMSGID: 1eMZt1-00006F-RT
Subject: [oss-security] Jenkins EC2 Plugin 1.37 and earlier arbitrary shell command execution

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software. The following
plugin releases contain fixes for security vulnerabilities:

* EC2 Plugin 1.38

Users of these plugins should upgrade them to the indicated versions.

Descriptions of the vulnerabilities are below. Some more details, 
severity, and attribution can be found here:
https://jenkins.io/security/advisory/2017-12-06/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-643
Users with permission to create or configure agents in Jenkins could
configure an EC2 agent to run arbitrary shell commands on the master node
whenever the agent was supposed to be launched.

Configuration of these agents now requires the 'Run Scripts' permission
typically only granted to administrators.

