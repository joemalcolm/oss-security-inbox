X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2599" "Thursday" "4" "November" "2021" "15:20:37" "+0100" "Daniel Beck" "ml@beckweb.net" nil "64" "[oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins" nil nil nil "11" nil nil (number mark "U       ml@beckweb.n Nov  4   64/2599  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20140 invoked by uid 550); 4 Nov 2021 14:20:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20110 invoked from network); 4 Nov 2021 14:20:51 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
Message-Id: <3E15589B-2D44-4A55-B15F-FC686E0E8F59@beckweb.net>
Date: Thu, 4 Nov 2021 15:20:37 +0100
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3654.100.0.2.22)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1636035651;333d3cb7;
X-HE-SMSGID: 1midbb-0002Lf-W1
Subject: [oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins

Subject: Multiple vulnerabilities in Jenkins and Jenkins plugins


Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Jenkins 2.319
* Jenkins LTS 2.303.3
* Subversion Plugin 2.15.1


Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2021-11-04/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-2455 / CVE-2021-21685 through CVE-2021-21695
The agent-to-controller security subsystem limits which files on the
Jenkins controller can be accessed by agent processes.

Multiple vulnerabilities in the file path filtering implementation of
Jenkins 2.318 and earlier, LTS 2.303.2 and earlier allow agent processes to
read and write arbitrary files on the Jenkins controller file system, and
obtain some information about Jenkins controller file systems.


SECURITY-2423 / CVE-2021-21696
Jenkins 2.318 and earlier, LTS 2.303.2 and earlier does not limit agent
read/write access to the `libs/` directory inside build directories when
using the `FilePath` APIs. This directory is used by the Pipeline: Shared
Groovy Libraries Plugin to store copies of shared libraries.

This allows attackers in control of agent processes to replace the code of
a trusted library with a modified variant, resulting in unsandboxed code
execution in the Jenkins controller process.


SECURITY-2428 / CVE-2021-21697
Agents are allowed some limited access to files on the Jenkins controller
file system. The directories agents are allowed to access in Jenkins 2.318
and earlier, LTS 2.303.2 and earlier include the directories storing
build-related information, intended to allow agents to store build-related
metadata during build execution. As a consequence, this allows any agent to
read and write the contents of any build directory stored in Jenkins with
very few restrictions (`build.xml` and some Pipeline-related metadata).


SECURITY-2506 / CVE-2021-21698
Subversion Plugin 2.15.0 and earlier does not restrict the name of a file
when looking up a subversion key file on the controller from an agent.

This allows attackers able to control agent processes to read arbitrary
files on the Jenkins controller file system.

