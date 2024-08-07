Received: (qmail 27937 invoked by uid 550); 7 Aug 2024 12:24:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27907 invoked from network); 7 Aug 2024 12:24:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=beckweb.net
	; s=he112721; h=To:Date:Message-Id:Subject:Mime-Version:
	Content-Transfer-Encoding:Content-Type:From:From:Sender:Reply-To:Subject:Date
	:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=sPJp0qmw5xQFdvheIm08mdijEgDOB5KC2yssc146QQo=; t=1723033501; x=1723465501;
	 b=aScQOn/ZrPN55k2DJR31Ms/4T/KBHqqNMgX3k3/s3pH7XT1VeDeiGexfN7nsPDFj95bfqp7Ksl
	ymtJjWiIDzbzHOwv99qr7z2S6DOT3bSc7Sa/5Xgjcx1V2TdeMGa59MW1Sr55zJG0coH1kEt7ttd9Q
	OPXq0TQGwCiWuGebL2dtO+Q+n6eDsvsXJVrRGSHY95W1Ka4j67IhJyBZqvsOGJV2YR+fEZDW+s62E
	Z/Y+sTm2KjcVJ3AggNxprFidrrGFiqQ3LcVLF8fz+xthBTvkRnOWNvA1J4Mz8YeqHJwAF/3hTsWav
	s1iaML4H35c1VP+MS8ytbz4ZJyy3EaAj17tuQ==;
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.300.61.1.2\))
Message-Id: <8B11D1F0-201F-403C-849E-4FFA1538B5B2@beckweb.net>
Date: Wed, 7 Aug 2024 14:24:40 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3774.300.61.1.2)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1723033502;c2e4bd34;
X-HE-SMSGID: 1sbfik-0002h8-Ls
Subject: [oss-security] Multiple vulnerabilities in Jenkins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Jenkins 2.471
* Jenkins LTS 2.452.4 and 2.462.1


Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2024-08-07/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-3430 / CVE-2024-43044
Jenkins uses the Remoting library (typically `agent.jar` or `remoting.jar`)
for the communication between controller and agents. This library allows
agents to load classes and classloader resources from the controller, so
that Java objects sent from the controller (build steps, etc.) can be
executed on agents.

In addition to individual class and resource files, Remoting also allows
Jenkins plugins to transmit entire jar files to agents using the
`Channel#preloadJar` API. As of publication of this advisory, this feature
is used by the following plugins distributed by the Jenkins project:
bouncycastle API, Groovy, Ivy, TeamConcert

In Remoting 3256.v88a_f6e922152 and earlier, except
3206.3208.v409508a_675ff and 3248.3250.v3277a_8e88c9b_, included in Jenkins
2.470 and earlier, LTS 2.452.3 and earlier, calls to `Channel#preloadJar`
result in the retrieval of files from the controller by the agent using
`ClassLoaderProxy#fetchJar`. Additionally, the implementation of
`ClassLoaderProxy#fetchJar` invoked on the controller does not restrict
paths that agents could request to read from the controller file system.

This allows agent processes, code running on agents, and attackers with
Agent/Connect permission to read arbitrary files from the Jenkins
controller file system.

NOTE: This is a critical vulnerability as the information obtained can be
used to increase access up to and including remote code execution (RCE).


SECURITY-3349 / CVE-2024-43045
Jenkins 2.470 and earlier, LTS 2.452.3 and earlier does not perform a
permission check in an HTTP endpoint.

This allows attackers with Overall/Read permission to access other users'
"My Views". Attackers with global View/Configure and View/Delete
permissions are also able to change other users' "My Views".



