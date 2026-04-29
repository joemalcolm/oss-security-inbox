Received: (qmail 13576 invoked by uid 550); 29 Apr 2026 12:58:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13555 invoked from network); 29 Apr 2026 12:58:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=beckweb.net;
	s=kas202511021112; t=1777467508;
	bh=FFrJcGAP4hSUiPM8IuqQzTNIJ/GzZOheuRKk7P0mes8=;
	h=From:Subject:Date:To:From;
	b=IVgZcXTsZcYEH0LyUX+G5w/cJ1KKncYzFJI/ZtfmXKh17PCEpw9wx8cX+pFqC85YO
	 3F7XeOw4B5tsH4bVO1ZMdF8F8rbNuhODrBhxkQas3/pi7woeyeMC9pjz+vog5AoSF0
	 AXeLU+d+97nj6jLukfj/vfIC3zcjuboKho1rZiSfZY9OpYX1gMLdpO1xV/8bVUyIXw
	 c2MPJSoFf7hhlbGAl/g1RCTn6dgtekOSmpIy976mi30NGOn3F1F3CwK3c6KWRmD04v
	 JHXNKeYcPbvAWXAlt9jLEMKwA7f3g70MCbfnkD+QO8T6c12kuCARxXHn4jwpjfX36J
	 M+V8SBzdb2PIA==
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81.1.3\))
Message-Id: <A7A3888F-B900-4740-95D2-22E2E4850076@beckweb.net>
Date: Wed, 29 Apr 2026 14:58:18 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3826.700.81.1.3)
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Credentials Binding Plugin 720.v3f6decef43ea_
* GitHub Branch Source Plugin 1967.1969.v205fd594c821
* GitHub Plugin 1.46.0.1
* HTML Publisher Plugin 427.1
* Matrix Authorization Strategy Plugin 3.2.10
* Microsoft Entra ID (previously Azure AD) Plugin 667.v4c5827a_e74a_0
* Script Security Plugin 1402.v94c9ce464861


Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2026-04-29/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-3662 / CVE-2026-42519
Script Security Plugin 1399.ve6a_66547f6e1 and earlier does not perform a
permission check in an HTTP endpoint.

This allows attackers with Overall/Read permission to enumerate pending and
approved Script Security classpaths.


SECURITY-3672 / CVE-2026-42520
Credentials Binding Plugin 719.v80e905ef14eb_ and earlier does not sanitize
file names for file and zip file credentials.

This allows attackers able to provide credentials to a job to write files
to arbitrary locations on the node filesystem. If Jenkins is configured to
allow a low-privileged user to configure file or zip file credentials used
for a job running on the built-in node, this can lead to remote code
execution.


SECURITY-3676 / CVE-2026-42521
Matrix Authorization Strategy Plugin 2.0-beta-1 through 3.2.9 (both
inclusive) invokes parameterless constructors of classes specified in
configuration when deserializing inheritance strategies, without
restricting the classes that can be instantiated.

This can be abused by attackers with Item/Configure permission to
instantiate arbitrary types, which may lead to information disclosure or
other impacts depending on the classes available on the classpath.


SECURITY-3702 / CVE-2026-42522
GitHub Branch Source Plugin 1967.vdea_d580c1a_b_a_ and earlier does not
perform a permission check in a method implementing form validation.

This allows attackers with Overall/Read permission to connect to an
attacker-specified URL with attacker-specified GitHub App credentials.


SECURITY-3704 / CVE-2026-42523
GitHub Plugin 1.46.0 and earlier improperly processes the current job URL
as part of JavaScript implementing validation of the feature "GitHub hook
trigger for GITScm polling".

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by non-anonymous attackers with Overall/Read permission.


SECURITY-3706 / CVE-2026-42524
HTML Publisher Plugin 427 and earlier does not escape job name and URL in
the legacy wrapper file.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers with Item/Configure permission.


SECURITY-3760 / CVE-2026-42525
Microsoft Entra ID (previously Azure AD) Plugin 666.v6060de32f87d and
earlier does not restrict the redirect URL after login.

This allows attackers to perform phishing attacks by having users go to a
Jenkins URL that will forward them to a different site after successful
authentication.



