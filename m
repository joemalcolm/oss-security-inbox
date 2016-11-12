X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["822" "Sunday" "13" "November" "2016" "00:13:40" "+0100" "Daniel Beck" "ml@beckweb.net" "<041433EB-C484-41D5-8589-A5CE9F8BA0E7@beckweb.net>" "25" "[oss-security] CVE request: Jenkins remote code execution vulnerability" nil nil nil "11" "2016111223:13:40" "[oss-security] CVE request: Jenkins remote code execution vulnerability" (number mark "U       ml@beckweb.n Nov 13   25/822   " thread-indent "\"[oss-security] CVE request: Jenkins remote code execution vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29858 invoked by uid 550); 12 Nov 2016 23:13:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29840 invoked from network); 12 Nov 2016 23:13:53 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Message-Id: <041433EB-C484-41D5-8589-A5CE9F8BA0E7@beckweb.net>
Date: Sun, 13 Nov 2016 00:13:40 +0100
To: oss-security@lists.openwall.com
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1478992433;5649334e;
Subject: [oss-security] CVE request: Jenkins remote code execution vulnerability

Hello,

An unauthenticated remote code execution vulnerability was discovered in the
Jenkins continuous integration and continuous delivery automation server.
A serialized Java object transferred to the Jenkins CLI can make Jenkins
connect to an attacker-controlled LDAP server, which in turn can send a
serialized payload leading to code execution, bypassing existing protection
mechanisms.

The Jenkins project tracks this as SECURITY-360. Releases with the fix are
planned for Wednesday, November 16.

Please assign a CVE to this issue.

References:

Jenkins website:
https://jenkins.io/

Publication of the vulnerability in this talk:
https://www.deepsec.net/speaker.html#PSLOT250

Notification and workaround by the Jenkins project here:
https://groups.google.com/d/msg/jenkinsci-advisories/-fc-w9tNEJE/GRvEzWoJBgAJ

