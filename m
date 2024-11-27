Received: (qmail 5935 invoked by uid 550); 27 Nov 2024 16:39:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5899 invoked from network); 27 Nov 2024 16:39:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=beckweb.net
	; s=he112721; h=To:Date:Message-Id:Subject:Mime-Version:
	Content-Transfer-Encoding:Content-Type:From:From:Sender:Reply-To:Subject:Date
	:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=ImpMrWlARY2AhtxK9elPSnHwx6Q1KrHxuwPhp4cYyi4=; t=1732725550; x=1733157550; 
	b=K+Rt6m6KZjD1NnmybiHRsBUW7PhdIxUjVlwkKYKrJnBsrYoTJIwjiY0oqOquTCMVKvR9H35NKrd
	aJrBpZhrjf46jaUd7Qj4zgZ5P7F1YMxHOdx+r+xoRvUTQPmSZI8uSTSbkfE+dZzcOhuPeL93wBMu3
	54BnBJlwvU3h74Tb3+TlfmQQygq7qmdop3EUo/h5ZkSJ7fBW9MnKEuZFsxDLgptUunfx5UZHmHSa6
	SsQRh1rObvH5zqmyNCymoh3+wgrYojPz9aCCo7IK6lmCpEIn6rrzDnFf5fjJopt+hiNoeBslpD3ea
	O7Fosw0xY2oemX1x/BS00TD1B10/rmnVx3Vg==;
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3776.700.51.11.1\))
Message-Id: <698004C5-840F-4FDD-AA4B-320FDEBD966D@beckweb.net>
Date: Wed, 27 Nov 2024 17:38:48 +0100
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3776.700.51.11.1)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1732725550;2141eb21;
X-HE-SMSGID: 1tGL46-00255z-2F
Subject: [oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins 

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Jenkins 2.487
* Jenkins LTS 2.479.2
* Filesystem List Parameter Plugin 0.0.15
* Simple Queue Plugin 1.4.5


Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2024-11-27/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-3463 / CVE-2024-47855
Jenkins uses the library org.kohsuke.stapler:json-lib to process JSON.
This library is the Jenkins project's fork of net.sf.json-lib:json-lib,
which has since been renamed to org.kordamp.json:json-lib-core.

Jenkins LTS 2.479.1 and earlier, 2.486 and earlier bundles
org.kohsuke.stapler:json-lib 2.4-jenkins-7 or earlier. These releases are
affected by CVE-2024-47855.

In Jenkins (without plugins) this allows attackers with Overall/Read
permission to keep HTTP requests handling threads busy indefinitely, using
system resources and preventing legitimate users from using Jenkins.
Additionally, the Jenkins security team has identified multiple plugins
that allow attackers lacking Overall/Read permission to do the same. These
plugins include SonarQube Scanner and Bitbucket. Additionally, other
features of Jenkins or plugins that process user-provided JSON may be
affected, resulting in those features being blocked.


SECURITY-3467 / CVE-2024-54003
Simple Queue Plugin 1.4.4 and earlier does not escape the view name.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers with View/Create permission.


SECURITY-3367 / CVE-2024-54004
Filesystem List Parameter Plugin 0.0.14 and earlier does not restrict the
path used for the File system objects list Parameter.

This allows attackers with Item/Configure permission to enumerate file
names on the Jenkins controller file system.



