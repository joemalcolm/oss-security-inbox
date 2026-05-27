Received: (qmail 20252 invoked by uid 550); 27 May 2026 13:46:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20212 invoked from network); 27 May 2026 13:46:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=beckweb.net;
	s=kas202605010123; t=1779889557;
	bh=Lf1Hzc7hK1FEkP1fotL3O2kejzFQUrYeyd80oUmb3JE=;
	h=From:Subject:Date:To:From;
	b=E6MhaVT5H+of2gbMs20nISpzrmVNM26ah6URwzLQ64UmzY4hZM5UCHnDsE6PAq9hs
	 xWc9aHhM73nYNwsQLW3B/nbLccUrRX83qQ3txz50XyBjETO6WIURM37MxxjaZcFR4s
	 sPk7CwIQDAc90vOSq494J7ANWaFJoqpC6kxFiZ8BREQZ6fzhgmyZvYld8VGP3k6jKY
	 Eay88fiGdJn9HsbS/y6mpOlgVHHbAUA43CrfIYCO7AAQiTvMWxHaMYfmpLqxCT29Pk
	 ZgsXfcpmqYxlsju2jVKYAWsO9Qw3pdh4WAoxA651mzHdfvgYdSCws8J5NFk4ZZr335
	 LDwtBneoqU7Tg==
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81.1.3\))
Message-Id: <4929F803-BC44-4050-937B-91461A9C2E7A@beckweb.net>
Date: Wed, 27 May 2026 15:45:47 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3826.700.81.1.3)
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Active Directory Plugin 2.41.1
* AppSpider Plugin 1.0.18
* Bitbucket OAuth Plugin 0.18
* Credentials Binding Plugin 725.ve52b_2328a_fde
* Email Extension Plugin 1933.1935.v276319e3cc47
* GitHub Integration Plugin 0.7.4
* Job Import Plugin 143.145.v48f9a_a_6ff384
* LDAP Plugin 807.809.vd3a_4e5e4ec98
* Multijob Plugin 669.v9d96a_d9c71b_0
* Pipeline: Groovy Libraries Plugin 798.v5cc688825312

Additionally, we announce unresolved security issues in the following
plugins:

* buildgraph-view Plugin

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2026-05-27/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-3654 / CVE-2026-48916 (SSRF) & CVE-2026-48917 (deserialization)
LDAP Plugin 807.v7d7de30930cf and earlier follows LDAP referrals from the
configured LDAP server. These can forward to an RMI URL that causes Jenkins
to deserialize attacker-controlled data, resulting in Remote Code Execution
(RCE) on the Jenkins controller if deserialization "gadgets" are available
on the classpath.

This allows attackers able to control the configured LDAP server, or able
to perform a machine-in-the-middle attack, to execute code on the Jenkins
controller.


SECURITY-3659 / CVE-2026-48918 (SSRF) & CVE-2026-48919 (deserialization)
Active Directory Plugin 2.41 and earlier follows LDAP referrals from the
configured Active Directory server by default. These can forward to an RMI
URL that causes Jenkins to deserialize attacker-controlled data, resulting
in Remote Code Execution (RCE) on the Jenkins controller if deserialization
"gadgets" are available on the classpath.

This allows attackers able to control the configured Active Directory
server, or able to perform a machine-in-the-middle attack, to execute code
on the Jenkins controller.


SECURITY-3705 / CVE-2026-48920
Email Extension Plugin 1933.v45cec755423f and earlier includes a feature
that allows inlining images as `base64` in email content by setting the
`data-inline` attribute. No restrictions are placed on the image URLs that
can be inlined.

This allows attackers able to control the email content to specify `file:`
URLs for images to read arbitrary files from the Jenkins controller
filesystem.


SECURITY-3727 / CVE-2026-48921
Pipeline: Groovy Libraries Plugin 797.v90ea_a_9b_e45a_0 and earlier does
not prohibit symbolic links in shared libraries.

This allows attackers able to control the content of a library used by a
Pipeline job to read arbitrary files on the Jenkins controller filesystem.


SECURITY-3790 / CVE-2026-48922
Credentials Binding Plugin 720.v3f6decef43ea_ and earlier does not properly
sanitize file names for file and zip file credentials.

This allows attackers able to provide credentials to a job to write files
to arbitrary locations on the node filesystem. If Jenkins is configured to
allow a low-privileged user to configure file or zip file credentials used
for a job running on the built-in node, this can lead to remote code
execution.


SECURITY-3671 / CVE-2026-48923
AppSpider Plugin 1.0.17 and earlier does not perform a permission check in
a method implementing form validation.

This allows attackers with Overall/Read permission to connect to an
attacker-specified URL.


SECURITY-3761 / CVE-2026-48924
Bitbucket OAuth Plugin 0.17 and earlier does not restrict the redirect URL
after login.

This allows attackers to perform phishing attacks by having users go to a
Jenkins URL that will forward them to a different site after successful
authentication.


SECURITY-3776 / CVE-2026-48925
GitHub Integration Plugin 0.7.3 and earlier does not require POST requests
for an HTTP endpoint, resulting in a cross-site request forgery (CSRF)
vulnerability.

This vulnerability allows attackers to trigger a build for a pull request.


SECURITY-3781 / CVE-2026-9674
Multijob Plugin 662.vd2e0001f6b_b_d and earlier does not require POST
requests for an HTTP endpoint, resulting in a cross-site request forgery
(CSRF) vulnerability.

This vulnerability allows attackers to resume failed Multijob builds.


SECURITY-3783 / CVE-2026-48926
Job Import Plugin 143.v044a_2e819b_27 and earlier does not perform a
permission check in an HTTP endpoint.

This allows attackers with Overall/Read permission to enumerate credentials
IDs of credentials stored in Jenkins. Those can be used as part of an
attack to capture the credentials using another vulnerability.


SECURITY-3486 / CVE-2026-48927
buildgraph-view Plugin 1.8 and earlier does not escape the build URL.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers able to configure jobs or views.

As of publication of this advisory, there is no fix.



