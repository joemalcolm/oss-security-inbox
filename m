X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1484" "Wednesday" "16" "January" "2019" "17:51:47" "+0100" "Daniel Beck" "ml@beckweb.net" "<7201AC57-5316-478F-A241-C43FCC25B0F2@beckweb.net>" "40" "[oss-security] Multiple vulnerabilities in Jenkins" nil nil nil "1" "2019011616:51:47" "[oss-security] Multiple vulnerabilities in Jenkins" (number mark "U       ml@beckweb.n Jan 16   40/1484  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32574 invoked by uid 550); 16 Jan 2019 16:52:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32553 invoked from network); 16 Jan 2019 16:52:00 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Message-Id: <7201AC57-5316-478F-A241-C43FCC25B0F2@beckweb.net>
Date: Wed, 16 Jan 2019 17:51:47 +0100
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.9.1)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1547657520;a00f5e4a;
X-HE-SMSGID: 1gjoPs-0005rj-HU
Subject: [oss-security] Multiple vulnerabilities in Jenkins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software. The following
releases contain fixes for security vulnerabilities:

* Jenkins weekly 2.160
* Jenkins LTS 2.150.2

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2019-01-16/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-868
Users with the Overall/RunScripts permission (typically administrators) 
were able to use the Jenkins script console to craft a 'Remember me' 
cookie that would never expire.

This allowed attackers access to a Jenkins instance while the 
corresponding user in the configured security realm exists, for example to 
persist access after another successful attack. 


SECURITY-901
When using an external security realm such as LDAP or Active Directory, 
deleting a user from the security realm does not result in the user losing 
access to Jenkins.

While deleting the user record from Jenkins did invalidate the 'Remember 
me' cookie, there was no way to invalidate active sessions besides 
restarting Jenkins or terminating sessions through other means, such as 
Monitoring Plugin.

