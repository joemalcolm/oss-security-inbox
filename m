X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2108" "Wednesday" "26" "April" "2017" "21:07:50" "+0200" "Daniel Beck" "ml@beckweb.net" "<B2478A17-5E89-484B-9728-1AB95D5EA865@beckweb.net>" "49" "[oss-security] Multiple vulnerabilities in Jenkins" nil nil nil "4" "2017042619:07:50" "[oss-security] Multiple vulnerabilities in Jenkins" (number mark "U       ml@beckweb.n Apr 26   49/2108  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13559 invoked by uid 550); 26 Apr 2017 19:08:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13539 invoked from network); 26 Apr 2017 19:08:03 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Message-Id: <B2478A17-5E89-484B-9728-1AB95D5EA865@beckweb.net>
Date: Wed, 26 Apr 2017 21:07:50 +0200
To: oss-security@lists.openwall.com
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1493233683;768114ed;
X-HE-SMSGID: 1d3SI3-0003CU-L3
Subject: [oss-security] Multiple vulnerabilities in Jenkins

The Jenkins project published updates today with fixes for multiple 
vulnerabilities. Users should upgrade to the versions below:

* Jenkins (weekly) 2.57
* Jenkins (LTS) 2.46.2

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2017-04-26/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you find security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-412 through SECURITY-420 / CVE-2017-1000356
Multiple CSRF vulnerabilities, including immediate or delayed Jenkins
restart, removing all configured update sites, installing and loading
any plugin available on configured update sites, changing Jenkins
system, security, and tool configuration, or creating new agents.

SECURITY-429 / CVE-2017-1000353
An unauthenticated remote code execution vulnerability allowed
attackers to transfer a serialized Java SignedObject object to the
remoting-based Jenkins CLI, that would be deserialized using a new
ObjectInputStream, bypassing the existing blacklist-based protection
mechanism.

SECURITY-466 / CVE-2017-1000354
The login command available in the remoting-based CLI stored the
encrypted user name of the successfully authenticated user in a cache
file used to authenticate further commands. Users with sufficient
permission to create secrets in Jenkins, and download their encrypted
values (e.g. with Job/Configure permission), were able to impersonate
any other Jenkins user on the same instance.

SECURITY-503 / CVE-2017-1000355
Jenkins uses the XStream library to serialize and deserialize XML. Its
maintainer recently published a security vulnerability[1] that allows
anyone able to provide XML to Jenkins for processing using XStream to
crash the Java process. In Jenkins this typically applies to users
with permission to create or configure items (jobs), views, or agents.


1: http://www.openwall.com/lists/oss-security/2017/04/03/4
