X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["923" "Monday" "9" "November" "2015" "15:19:36" "+0100" "Daniel Beck" "ml@beckweb.net" "<E819DDD5-C53B-48A6-9578-580E69A84DF3@beckweb.net>" "31" "[oss-security] CVE request: Jenkins remote code execution vulnerability due to unsafe deserialization" "^Date:" nil nil "11" "2015110914:19:36" "[oss-security] CVE request: Jenkins remote code execution vulnerability due to unsafe deserialization" (number mark "        ml@beckweb.n Nov  9   31/923   " thread-indent "\"[oss-security] CVE request: Jenkins remote code execution vulnerability due to unsafe deserialization\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21641 invoked by uid 550); 9 Nov 2015 14:48:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3546 invoked from network); 9 Nov 2015 14:19:28 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Message-Id: <E819DDD5-C53B-48A6-9578-580E69A84DF3@beckweb.net>
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
X-Mailer: Apple Mail (2.1878.6)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1447078768;22930fb6;
Date: Mon, 9 Nov 2015 15:19:36 +0100
From: Daniel Beck <ml@beckweb.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: Jenkins remote code execution vulnerability due to unsafe deserialization
To: oss-security@lists.openwall.com

Hello,

Please assign a CVE to this issue:

Remote code execution vulnerability due to unsafe deserialization in Jenkin=
s remoting
Unsafe deserialization allows unauthenticated remote attackers to run arbit=
rary code on the Jenkins master.
This is tracked as SECURITY-218 in the Jenkins project. All current Jenkins=
 releases are affected.

Public exploit:
http://foxglovesecurity.com/2015/11/06/what-do-weblogic-websphere-jboss-jen=
kins-opennms-and-your-application-have-in-common-this-vulnerability/#jenkins

Temporary workaround:
https://jenkins-ci.org/content/mitigating-unauthenticated-remote-code-execu=
tion-0-day-jenkins-cli

A related issue is being discussed here:
http://www.openwall.com/lists/oss-security/2015/11/09/1
Jenkins is affected by both this and the Groovy variant in 'ysoserial'.

We plan to release a fix for this as part of our planned security update on=
 Wednesday.

Thanks!

--
Daniel Beck

