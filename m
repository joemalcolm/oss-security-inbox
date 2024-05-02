Received: (qmail 26401 invoked by uid 550); 2 May 2024 13:08:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26370 invoked from network); 2 May 2024 13:08:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=beckweb.net
	; s=he112721; h=To:Date:Message-Id:Subject:Mime-Version:
	Content-Transfer-Encoding:Content-Type:From:From:Sender:Reply-To:Subject:Date
	:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=bgaiSmN9lBYUL7HUH1wuly67xaXeOR68+1iYwCrNspo=; t=1714655315; x=1715087315;
	 b=w8Tw649cAUFmXrniBl0ptcd7xkoZ8iVZBigu99gNM8ayEClUzADlpnreaKVrbqmRXgsjDgZnaG
	3hmPp74kP1utog9xckT+VELU71Vyyfqn77pbAK/qyasU3mgAerif4I5h3T4cBZ37HDqhv+FuEaViN
	05E0Kfd4TgTzlsvEDpwW0X0lQEUo9iJGSEWd86iuuQWzmCNTWrcLDOCejweYOyxJW3fdhFNcziGAW
	7mlvDv0EDqzFwgmuptg/czP+01OsnsMcA9xA+6lYbliJW/UHWVs9Gs4O4Is2YJ2JAC2ZxUKduNYzY
	va82Smf97T8hsL4tqnwaNv4QuSFcaPDz4I/XQ==;
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.300.61.1.2\))
Message-Id: <C20D6D7D-DE83-4394-941C-F9683ABA6440@beckweb.net>
Date: Thu, 2 May 2024 15:08:13 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3774.300.61.1.2)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1714655315;8b3c84b2;
X-HE-SMSGID: 1s2WAh-0002kZ-Pl
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Git server Plugin 117.veb_68868fa_027
* Script Security Plugin 1336.vf33a_a_9863911

Additionally, we announce unresolved security issues in the following
plugins:

* Subversion Partial Release Manager Plugin
* Telegram Bot Plugin

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2024-05-02/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-3341 / CVE-2024-34144 (crafted constructor bodies) & CVE-2024-3414=
5 (sandbox-defined classes)
Script Security Plugin provides a sandbox feature that allows low
privileged users to define scripts, including Pipelines, that are generally
safe to execute. Calls to code defined inside a sandboxed script are
intercepted, and various allowlists are checked to determine whether the
call is to be allowed.

Multiple sandbox bypass vulnerabilities exist in Script Security Plugin
1335.vf07d9ce377a_e and earlier:

* Crafted constructor bodies that invoke other constructors can be used to
  construct any subclassable type via implicit casts.
* Sandbox-defined Groovy classes that shadow specific non-sandbox-defined
  classes can be used to construct any subclassable type.

These vulnerabilities allow attackers with permission to define and run
sandboxed scripts, including Pipelines, to bypass the sandbox protection
and execute arbitrary code in the context of the Jenkins controller JVM.


SECURITY-3342 / CVE-2024-34146
Git server Plugin 114.v068a_c7cc2574 and earlier does not perform a
permission check for read access to a Git repository over SSH.

This allows attackers with a previously configured SSH public key but
lacking Overall/Read permission to access Git repositories.


SECURITY-3294 / CVE-2024-34147
Telegram Bot Plugin 1.4.0 and earlier stores the Telegram Bot token
unencrypted in its global configuration file
`jenkinsci.plugins.telegrambot.TelegramBotGlobalConfiguration.xml` on the
Jenkins controller as part of its configuration.

This token can be viewed by users with access to the Jenkins controller
file system.

As of publication of this advisory, there is no fix.


SECURITY-3331 / CVE-2024-34148
Subversion Partial Release Manager Plugin 1.0.1 and earlier
programmatically sets the Java system property
`hudson.model.ParametersAction.keepUndefinedParameters` whenever
a build is triggered from a release tag with the 'Svn-Partial
Release Manager' SCM. Doing so disables the fix for SECURITY-170
/ CVE-2016-3721.

As of publication of this advisory, there is no fix.



