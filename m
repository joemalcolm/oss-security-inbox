Received: (qmail 1689 invoked by uid 550); 20 Mar 2024 17:19:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1652 invoked from network); 20 Mar 2024 17:19:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=beckweb.net
	; s=he112721; h=To:Date:Message-Id:Subject:Mime-Version:
	Content-Transfer-Encoding:Content-Type:From:From:Sender:Reply-To:Subject:Date
	:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=hWWBiETmPb4WjoLzVOwQetKjDfuHOzQlAS7t/bftnYE=; t=1710955447; x=1711387447;
	 b=ysARhqeOEP/wkleZh7ZPkOZOy2sbHELr8KNly2DYgRx24T3vd9pzBwrjGdGmvx4GdtJY+1SvwA
	+od582mtv0PNCIOJfCeAX+z71qvzbX82SDQ6p+X26kOcKEbvC6NuspEJ9w20vya0q4IfNHzG7gXu/
	0mS+m/6TiUMOI38rHPeavnEH7QTEyNwhwlwkTLQAELcnf54xcCtfsQAjRqUVi8BJ3IVpGWqrbtCrh
	I4iNHmw1EVAL9Z13AnyRhz8O1AMATMdeX7qvE1TXIhzdtMnaM6pjg3mL7r+omoHcWqz3TeEapob+Z
	a59hLi0Bgh3vx5DtMSvMViQsgFAZ6EB5czN/g==;
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.300.61.1.2\))
Message-Id: <3A91075D-2407-4EB2-934C-3F04258301E9@beckweb.net>
Date: Wed, 20 Mar 2024 18:23:45 +0100
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3774.300.61.1.2)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1710955448;0e81e87e;
X-HE-SMSGID: 1rmzfQ-0001N0-MS
Subject: [oss-security] Vulnerability in Jenkins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Jenkins 2.444
* Jenkins LTS 2.440.2


Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2024-03-20/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-3379 / CVE-2024-22201
Jenkins bundles Winstone-Jetty, a wrapper around Jetty, to act as HTTP and
servlet server when started using `java -jar jenkins.war`. This is how
Jenkins is run when using any of the installers or packages, but not when
run using servlet containers such as Tomcat.

Jenkins 2.443 and earlier, LTS 2.440.1 and earlier bundles versions of
Jetty affected by the security vulnerability CVE-2024-22201. This
vulnerability allows unauthenticated attackers to cause a denial of
service.

NOTE: This only affects instances that enable HTTP/2, typically using the
`--http2Port` argument to `java -jar jenkins.war` or corresponding options
in service configuration files. It is disabled by default in all native
installers and the Docker images provided by the Jenkins project.



