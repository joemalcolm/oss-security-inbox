X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2157" "Wednesday" "15" "August" "2018" "17:10:32" "+0200" "Daniel Beck" "ml@beckweb.net" "<A2C87D38-1E04-47A1-93FE-8FB4770AEA89@beckweb.net>" "64" "[oss-security] Multiple vulnerabilities in Jenkins" nil nil nil "8" "2018081515:10:32" "[oss-security] Multiple vulnerabilities in Jenkins" (number mark "U       ml@beckweb.n Aug 15   64/2157  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27977 invoked by uid 550); 15 Aug 2018 15:10:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27958 invoked from network); 15 Aug 2018 15:10:44 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <A2C87D38-1E04-47A1-93FE-8FB4770AEA89@beckweb.net>
Date: Wed, 15 Aug 2018 17:10:32 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3273)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1534345844;b1153009;
X-HE-SMSGID: 1fpxRQ-0008F3-Jx
Subject: [oss-security] Multiple vulnerabilities in Jenkins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software. The following
releases contain fixes for security vulnerabilities:

* Jenkins weekly 2.138
* Jenkins LTS 2.121.3

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2018-08-15/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-637
Jenkins allowed deserialization of URL objects via Remoting (agent 
communication) and XStream.

This could in rare cases be used by attackers to have Jenkins look up 
specified hosts' DNS records.


SECURITY-672
When attempting to authenticate using API token, an ephemeral user record 
was created to validate the token in case an external security realm was 
used, and the user record in Jenkins not previously saved, as (legacy) API 
tokens could exist without a persisted user record.

This behavior could be abused to create a large number of ephemeral user 
records in memory.


SECURITY-790
The form validation for cron expressions (e.g. "Poll SCM", "Build 
periodically") could enter infinite loops when cron expressions only 
matching certain rare dates were entered, blocking request handling 
threads indefinitely.


SECURITY-996
The "Remember me" feature can be disabled in the Jenkins security 
configuration.

This did not disable the processing of previously set "Remember me" 
cookies, so they still allowed users to be logged in.


SECURITY-1071
Users with Overall/Read permission were able to access the URL serving 
agent logs on the UI due to a lack of permission checks.


SECURITY-1076
Users with Overall/Read permission were able to access the URL used to 
cancel scheduled restart jobs initiated via the update center ("Restart 
Jenkins when installation is complete and no jobs are running") due to a 
lack of permission checks.

