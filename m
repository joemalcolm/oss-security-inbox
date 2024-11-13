Received: (qmail 5856 invoked by uid 550); 13 Nov 2024 20:02:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5820 invoked from network); 13 Nov 2024 20:02:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=beckweb.net
	; s=he112721; h=To:Date:Message-Id:Subject:Mime-Version:
	Content-Transfer-Encoding:Content-Type:From:From:Sender:Reply-To:Subject:Date
	:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=z1+W4SlR/BGFrNn/CA7tT7JgzeSHXxckJzjuDNe125U=; t=1731528181; x=1731960181;
	 b=4h06fNlKUi9Wri5hCgANCaYrWhqrU1ldiIdoABdzKbsjd4Vqliy5WudRYOZwna46C4Wv6mWOgu
	e80ZMMmGDOlA0oQoCaJ204zBthK+bs1XtrvBzI2nG7qfC5j3NMMYXWhuw93btIcz7qIWmXZ2RtYI+
	9UruYPMd1RJecXfAFamIZtjjXgh+gXjxRU8lChxxpQZM0eCmoEDLRWMgbYhDSQJmWvYYivFQJtMMQ
	yLVhZsq22Tm1fVzATzqQ1qFgWFqxudpIfflLGjmGJssbdQklCh+wOCqDNr+9iRA24G4SbW8YODuqN
	RCaf0DDHPvwaqpmnhuqk8sI4QIq9Jpxp/oaXg==;
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3776.700.51.11.1\))
Message-Id: <92CF66A6-B73C-4B35-9568-E23FE48FC695@beckweb.net>
Date: Wed, 13 Nov 2024 21:02:39 +0100
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3776.700.51.11.1)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1731528181;558152cb;
X-HE-SMSGID: 1tBJZi-0002hy-2b
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Authorize Project Plugin 1.8.0
* IvyTrigger Plugin 1.02
* OpenId Connect Authentication Plugin 4.421.v5422614eb_e0a_
* Pipeline: Declarative Plugin 2.2218.v56d0cda_37c72
* Pipeline: Groovy Plugin 3993.v3e20a_37282f8
* Script Security Plugin 1368.vb_b_402e3547e7
* Shared Library Version Override Plugin 19.v3a_c975738d4a_


Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2024-11-13/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-3447 / CVE-2024-52549
Script Security Plugin 1367.vdf2fc45f229c and earlier, except
1365.1367.va_3b_b_89f8a_95b_ and 1362.1364.v4cf2dc5d8776, does not perform
a permission check in a method implementing form validation.

This allows attackers with Overall/Read permission to check for the
existence of files on the controller file system.


SECURITY-3362 / CVE-2024-52550
Pipeline: Groovy Plugin 3990.vd281dd77a_388 and earlier, except
3975.3977.v478dd9e956c3, does not check whether the main (Jenkinsfile)
script for a rebuilt build is approved.

This allows attackers with Item/Build permission to rebuild a previous
build whose (Jenkinsfile) script is no longer approved.

NOTE: This does not apply to builds whose (Jenkinsfile) script was never
approved, but only to builds whose (Jenkinsfile) script got its approval
revoked.


SECURITY-3361 / CVE-2024-52551
Pipeline: Declarative Plugin 2.2214.vb_b_34b_2ea_9b_83 and earlier does not
check whether the main (Jenkinsfile) script used to restart a build from a
specific stage is approved.

This allows attackers with Item/Build permission to restart a previous
build whose (Jenkinsfile) script is no longer approved.

NOTE: This does not apply to builds whose (Jenkinsfile) script was never
approved, but only to builds whose (Jenkinsfile) script got its approval
revoked.


SECURITY-3010 / CVE-2024-52552
Authorize Project Plugin 1.7.2 and earlier evaluates a string containing
the job name with JavaScript on the Authorization view.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers with Item/Configure permission.


SECURITY-3473 / CVE-2024-52553
OpenId Connect Authentication Plugin 4.418.vccc7061f5b_6d and earlier does
not invalidate the existing session on login.

This allows attackers to use social engineering techniques to gain
administrator access to Jenkins.


SECURITY-2954 / CVE-2022-46751
IvyTrigger Plugin 1.01 and earlier bundles versions of Apache Ivy
vulnerable to CVE-2022-46751.

This allows attackers able to control the input files for the "IvyTrigger -
Poll with an Ivy script" build trigger to have Jenkins parse a crafted XML
document that uses external entities for extraction of secrets from the
Jenkins controller or server-side request forgery.


SECURITY-3466 / CVE-2024-52554
Shared Library Version Override Plugin 17.v786074c9fce7 and earlier
declares folder-scoped library overrides as trusted, so that they're not
executed in the Script Security sandbox.

This allows attackers with Item/Configure permission on a folder to
configure a folder-scoped library override that runs without sandbox
protection.



