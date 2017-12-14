X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1585" "Thursday" "14" "December" "2017" "04:10:26" "+0100" "Daniel Beck" "ml@beckweb.net" "<61F736A2-A375-45DD-9137-12B53BF9A228@beckweb.net>" "37" "[oss-security] Multiple vulnerabilities in Jenkins" nil nil nil "12" "2017121403:10:26" "[oss-security] Multiple vulnerabilities in Jenkins" (number mark "U       ml@beckweb.n Dec 14   37/1585  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28080 invoked by uid 550); 14 Dec 2017 03:10:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28062 invoked from network); 14 Dec 2017 03:10:38 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <61F736A2-A375-45DD-9137-12B53BF9A228@beckweb.net>
Date: Thu, 14 Dec 2017 04:10:26 +0100
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3273)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1513221038;a67ba46d;
X-HE-SMSGID: 1ePJul-000401-3d
Subject: [oss-security] Multiple vulnerabilities in Jenkins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software. The following
releases contain fixes for security vulnerabilities:

* Jenkins (weekly) 2.95
* Jenkins (LTS) 2.89.2

Descriptions of the vulnerabilities are below. Some more details, 
severity, and attribution can be found here:
https://jenkins.io/security/advisory/2017-12-14/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-667
A race condition during Jenkins startup could result in the wrong order of
execution of commands during initialization.

On Jenkins 2.81 and newer, including LTS 2.89.1, this could in rare cases
(we estimate less than 20% of new instances) result in failure to
initialize the setup wizard on the first startup. This resulted in multiple
security-related settings not being set to their usual strict default.
Affected instances need to be configured to restrict access.

Additionally, there's a very short window of time after startup during
which Jenkins may no longer show the "Please wait while Jenkins is getting
ready to work" message, but Cross-Site Request Forgery (CSRF) protection
may not yet be effective. As of publication of this advisory, we've been
unable to confirm this can actually be exploited, but generally recommend
that users upgrade their instances.

