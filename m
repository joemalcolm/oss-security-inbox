X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1657" "Wednesday" "8" "November" "2017" "11:56:57" "+0100" "Daniel Beck" "ml@beckweb.net" "<6877F1AC-352C-49C9-BA3D-1D3944CC03F0@beckweb.net>" "39" "[oss-security] Multiple vulnerabilities in Jenkins" nil nil nil "11" "2017110810:56:57" "[oss-security] Multiple vulnerabilities in Jenkins" (number mark "U       ml@beckweb.n Nov  8   39/1657  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21872 invoked by uid 550); 8 Nov 2017 10:57:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21836 invoked from network); 8 Nov 2017 10:57:09 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <6877F1AC-352C-49C9-BA3D-1D3944CC03F0@beckweb.net>
Date: Wed, 8 Nov 2017 11:56:57 +0100
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3273)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1510138629;d211f9dd;
X-HE-SMSGID: 1eCO2T-0005w2-MP
Subject: [oss-security] Multiple vulnerabilities in Jenkins

Jenkins is an open source automation server which enables developers around 
the world to reliably build, test, and deploy their software. The following 
releases contain fixes for security vulnerabilities:

* Jenkins (weekly) 2.89
* Jenkins (LTS) 2.73.3

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2017-11-08/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you find security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-499
Jenkins stores metadata related to "people", which encompasses actual user 
accounts, as well as users appearing in SCM, in directories corresponding 
to the user ID on disk. These directories used the user ID for their name 
without additional escaping. This potentially resulted in a number of 
problems, such as the following:
1. User names consisting of a single forward slash would have their user 
record stored in the parent directory; deleting this user deleted all user 
records.
2. User names containing character sequences such as .. could be used to 
clobber other configuration files in Jenkins.
3. User names could consist of reserved names such as COM (on Windows).

SECURITY-641
Autocompletion suggestions for text fields were not escaped, resulting in a 
persisted cross-site scripting vulnerability if the source for the 
suggestions allowed specifying text that includes HTML metacharacters like 
less-than and greater-than characters.

