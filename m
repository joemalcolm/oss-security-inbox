X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1527" "Tuesday" "21" "May" "2019" "14:57:46" "+0200" "Daniel Beck" "ml@beckweb.net" nil "37" nil nil nil nil "5" nil nil (number mark "U       ml@beckweb.n May 21   37/1527  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7594 invoked by uid 550); 21 May 2019 12:57:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7570 invoked from network); 21 May 2019 12:57:59 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Message-Id: <19147D1A-1B6D-4C97-AA6D-3FAD135FD080@beckweb.net>
Date: Tue, 21 May 2019 14:57:46 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.9.1)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1558443479;4c7f8e4b;
X-HE-SMSGID: 1hT4Kx-0004S8-J7
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software. The following
releases contain fixes for security vulnerabilities:

* Credentials 2.1.19
* PAM Authentication 1.5.1

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2019-05-21/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-1316 / CVE-2019-10319
A missing permission check in PAM Authentication Plugin allowed users with 
Overall/Read permission to invoke a form validation method to obtain 
limited information about the file /etc/shadow on systems with that file 
present, as well as the system user the Jenkins process is running as.


SECURITY-1322 / CVE-2019-10320
Credentials Plugin allowed the creation of Certificate credentials from a 
PKCS#12 file on the Jenkins master. Users with permission to create or 
update credentials could use the associated form validation to confirm the 
existence of files with an attacker-specified path.

Additionally, they could create credentials from any valid PKCS#12 file on 
the Jenkins master. With the ability to configure jobs to access these 
credentials, they could obtain the certificate content.

