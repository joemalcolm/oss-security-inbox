X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1189" "Wednesday" "11" "April" "2018" "12:48:57" "+0200" "Daniel Beck" "ml@beckweb.net" "<EFA5C38E-331E-4F5D-8F21-F1FC0CADBBD1@beckweb.net>" "32" "[oss-security] Multiple vulnerabilities in Jenkins" nil nil nil "4" "2018041110:48:57" "[oss-security] Multiple vulnerabilities in Jenkins" (number mark "U       ml@beckweb.n Apr 11   32/1189  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30449 invoked by uid 550); 11 Apr 2018 10:49:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30425 invoked from network); 11 Apr 2018 10:49:09 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <EFA5C38E-331E-4F5D-8F21-F1FC0CADBBD1@beckweb.net>
Date: Wed, 11 Apr 2018 12:48:57 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3273)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1523443749;d48d7b24;
X-HE-SMSGID: 1f6DJC-0007fK-4y
Subject: [oss-security] Multiple vulnerabilities in Jenkins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software. The following
releases contain fixes for security vulnerabilities:

* Jenkins (weekly) 2.116
* Jenkins (LTS) 2.107.2

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2018-04-11/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-754
The Jenkins CLI sent different error responses for commands with view and
agent arguments depending on the existence of the specified views or agents
to unauthorized users. This allowed attackers to determine whether views or
agents with specified names exist.


SECURITY-759
Some JavaScript confirmation dialogs included the item name in an unsafe
manner, resulting in a possible cross-site scripting vulnerability
exploitable by users with permission to create or configure items.

