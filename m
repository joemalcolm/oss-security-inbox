X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2578" "Wednesday" "11" "October" "2017" "18:21:48" "+0200" "Daniel Beck" "ml@beckweb.net" "<307E5A53-DC12-428C-ADD6-98D74D13B20E@beckweb.net>" "62" "[oss-security] Multiple vulnerabilities in Jenkins" nil nil nil "10" "2017101116:21:48" "[oss-security] Multiple vulnerabilities in Jenkins" (number mark "U       ml@beckweb.n Oct 11   62/2578  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11593 invoked by uid 550); 11 Oct 2017 16:22:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11561 invoked from network); 11 Oct 2017 16:22:00 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <307E5A53-DC12-428C-ADD6-98D74D13B20E@beckweb.net>
Date: Wed, 11 Oct 2017 18:21:48 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3273)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1507738920;ec9734a4;
X-HE-SMSGID: 1e2JlV-0003Zi-7g
Subject: [oss-security] Multiple vulnerabilities in Jenkins

Jenkins is an open source automation server which enables developers around 
the world to reliably build, test, and deploy their software. The following 
releases contain fixes for security vulnerabilities:

* Jenkins (weekly) 2.84
* Jenkins (LTS) 2.73.2

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2017-10-11/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you find security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-478
Users with permission to create or configure agents in Jenkins could 
configure a launch method called Launch agent via execution of command on 
master. This allowed them to run arbitrary shell commands on the master 
node whenever the agent was supposed to be launched.

SECURITY-514
Information about Jenkins user accounts is generally available to anyone 
with Overall/Read permissions via the /user/(username)/api remote API. This 
included e.g. Jenkins users' email addresses if the Mailer Plugin is 
installed.

SECURITY-555
Jenkins bundled a version of the commons-httpclient library with the 
vulnerability CVE-2012-6153 that incorrectly verified SSL certificates, 
making it susceptible to man-in-the-middle attacks.

SECURITY-611
The remote API at /computer/(agent-name)/api showed information about tasks 
(typically builds) currently running on that agent. This included 
information about tasks that the current user otherwise has no access to, 
e.g. due to lack of Job/Read permission.

SECURITY-618
The remote API at /queue/item/(ID)/api showed information about tasks in 
the queue (typically builds waiting to start). This included information 
about tasks that the current user otherwise has no access to, e.g. due to 
lack of Job/Read permission.

SECURITY-617
The remote API at /job/(job-name)/api contained information about upstream 
and downstream projects. This included information about tasks that the 
current user otherwise has no access to, e.g. due to lack of Job/Read 
permission.

SECURITY-616
The Jenkins default form control for passwords and other secrets, 
<f:password/>, supports form validation (e.g. for API keys). The form 
validation AJAX requests were sent via GET, which could result in secrets 
being logged to a HTTP access log in non-default configurations of 
Jenkins, and made available to users with access to these log files.

