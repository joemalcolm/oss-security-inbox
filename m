Received: (qmail 5698 invoked by uid 550); 10 Apr 2025 11:16:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5662 invoked from network); 10 Apr 2025 11:16:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=beckweb.net
	; s=he112721; h=To:Date:Message-Id:Subject:Mime-Version:
	Content-Transfer-Encoding:Content-Type:From:From:Sender:Reply-To:Subject:Date
	:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=Qbdwe3L0Ai0zhCIS9HiPS8ArdYreqKfwnIiGEpURzZM=; t=1744283818; x=1744715818; 
	b=BIrwQKCDAsq5CDRYXhAjZvuqzQ/wao4m77twCBcLgGiQfQFfuiDQe5ADP4SvyIaleWZpWcYVj/C
	fpFBXYjAoVRD8qkFY8LSAvrO0/vZxRVIJ3YPQ99qAeOaB/2dZbhKqFYKZ5qtuNAfSNzKPDfwQRmKT
	Xz5C9Kzz2Xa/brWmu4FiNrIdT1fbqcG6nYZM/A1knSvKM+fMTGhRnLh1zpSwY2edyT/y6A4qkUBXp
	bVbej5vWrvPRDSmuw0i6HLX41M0R5jbX+rStjdfYhy8EyBDpw8kOI4p5/h9qDckC8NmGfTj6TkW0C
	mHc8C/JHKOnYOHuHZJAqHCwJmzYbn26AO10g==;
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.400.131.1.6\))
Message-Id: <E6F892F6-8CD5-4BDC-8CEB-E43984372B57@beckweb.net>
Date: Thu, 10 Apr 2025 13:16:36 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3826.400.131.1.6)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1744283818;574ab0d7;
X-HE-SMSGID: 1u2ptm-003KWE-1y
Subject: [oss-security] Vulnerabilities in Jenkins Docker images

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.


Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2025-04-10/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-3565 / CVE-2025-32754 (jenkins/ssh-agent) & CVE-2025-32755 (jenkin=
s/ssh-slave)
The jenkins/ssh-agent and deprecated jenkins/ssh-slave Docker images can be
used to set up a build agent for use via the SSH Build Agents plugin.

In jenkins/ssh-agent 6.11.1 and earlier and all versions of
jenkins/ssh-slave, SSH host keys are generated on image creation for images
based on Debian.

As a result, all containers based on images of the same version use the
same SSH host keys. This allows attackers able to insert themselves into
the network path between the SSH client (typically the Jenkins controller)
and SSH build agent to impersonate the latter.


