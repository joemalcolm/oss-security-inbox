Received: (qmail 6080 invoked by uid 550); 10 Dec 2025 16:00:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24346 invoked from network); 10 Dec 2025 15:44:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cloudbees.com; s=google; t=1765381435; x=1765986235; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PVpjsdRLjmLP0Xz0GQADXyRoC5uZN4ciYiAE0JbS04Y=;
        b=fDbh9UMXXQB3ooPI0h9pz0FyTTOJAL1bv3S4WdAZKAeVfdAadGJrZFJ5sNXkGAo17l
         Kmic0bEatJFKj+lEMopaAH/3K1g66z6F14dNa7dROfxoWOzwKyLmFR6TBIMrVrcYZ0+b
         /oYT/jIEsPsOvLPS03w200EXG6CR3ry2OdsHE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765381435; x=1765986235;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PVpjsdRLjmLP0Xz0GQADXyRoC5uZN4ciYiAE0JbS04Y=;
        b=gNAsaiO5qoBuGnetwh+f+JOBoUUfvK5sKzUpOKZvqhA8PkjFpwO2PNeARtkXVdTiPv
         7wSa3x0JUq1ZKvxONk+wrhsYXuniqG6mKKdlOPsHv7Mm2rht59JRfD9WcDRPCLOoIoC6
         qyc7po12MEbHaU7i6BeEsloL1IVCdjHbtruky8TGtWcRCQrClhg4GZ+XAZ38voWxD09l
         XVe0Uf8RgEiezFZsWV4nLsDL6OZmD/NVj97QysUvGprZNTrlkVnc8r+Vi25WQfp6XE28
         048tqROGgIHKU0JfnUhGUwuObrwCYir5QMW28l8RLnL17/Wm1HXDNVOdHBwkFiDjT/7+
         sDEA==
X-Gm-Message-State: AOJu0YzmWTUDcESQ3hq/yRJIVw+hYnTjwa3TMQxbSQptUenE9JSx5v53
	xZ8/02Ux6pGS2ZyHpMJUyA0jGvUcaitSBI6BL1ES8PtL57t0EgVf4/oeRSasWS2eBN15JoAvRwJ
	jl9FMOJ+wwYYee7sti4Ifv1PL9FMRVyhPI23VEXw/nhFlSMVjbrhPOM6UAHSGCgx1lDrTe271Rv
	E9nKIE9aLVxSUiFb5KjfFsicZFjWrngUD/7/EKeiVVpvmnyzi9oxuE
X-Gm-Gg: ASbGncvnz21de9v5IB7DQw82AtK6D+Bo8MJDk1PjweKKUJCu8/aB2izaYgxLXIGFGe3
	ZT6wJdKQxhTQEC1uHexZ0/pnSME0DI7T+XIPjdfOdFz08uPiD9XeSVeQ4IZtUgYE3pCdm5WW4nE
	q4D46Rk6wza7wX0LNq1ljLgGDfQH3gwykMVGH6Fi/lErpnx2pjOdDWvd0FnsACa1XxzrRyAZ3La
	BhTb5WFUtzwk5RtcOiGZjiOSjEGOVfi9lztfbgals0lxDuMmB9p6s//U4cis2FVEG+YAyUuvxxQ
	8dHn+cX/CYjRMrQ/IST8Ilxq9ME=
X-Google-Smtp-Source: AGHT+IHf/gfE4Vc/EJcxwyz4w+ZGb0b3gTMGTo8JBYVhN3PtMtT2kehgiKtxnVDOs1ZYT2LbV//7wdxmx04x7Hz0Pk8=
X-Received: by 2002:a05:6820:2917:b0:659:9a49:8f7a with SMTP id
 006d021491bc7-65b2acd5270mr1768465eaf.63.1765381435134; Wed, 10 Dec 2025
 07:43:55 -0800 (PST)
MIME-Version: 1.0
From: Kevin Guerroudj <kguerroudj@cloudbees.com>
Date: Wed, 10 Dec 2025 16:43:44 +0100
X-Gm-Features: AQt7F2qLL0AG8PqrE-otndm03yMe7EvhGazlzVXHAgBunVgEG54zFkYv5panUGI
Message-ID: <CAKG2iZhP6ZSrAezY+98AAU6foE5Ed7bV5B1q1u3XeGNmYfiLEQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000055a52d06459ae5ad"
Subject: [oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins

--00000000000055a52d06459ae5ad
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Jenkins 2.541
* Jenkins LTS 2.528.3
* BlazeMeter Plugin 4.27
* Coverage Plugin 2.3056.v1dfe888b_0249
* Git client Plugin 6.4.1

Additionally, we announce unresolved security issues in the following
plugins:

* HashiCorp Vault Plugin
* Redpen - Pipeline Reporter for Jira Plugin

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2025-12-10/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-3630 / CVE-2025-67635
Jenkins 2.540 and earlier, LTS 2.528.2 and earlier does not properly close
HTTP-based CLI connections when the connection stream becomes corrupted.

This allows unauthenticated attackers to cause a denial of service by
creating HTTP-based CLI connection requests, resulting in request-handling
threads waiting indefinitely.


SECURITY-1809 / CVE-2025-67636
Jenkins 2.540 and earlier, LTS 2.528.2 and earlier does not perform a
permission check to determine whether a password field should be redacted
in views.

This allows attackers with View/Read permission to view encrypted password
values in views.

NOTE: The regular view configuration form requires View/Configure
permission to access. This vulnerability requires that a plugin implements
a page for a view that shows a password field without performing a
View/Configure permission check, and does not set the `readOnlyMode`
variable introduced to support JEP-224. As of the publication of this
advisory, the Jenkins security team is not aware of any exploitable
implementation.


SECURITY-783 / CVE-2025-67637 (storage) & CVE-2025-67638 (masking)
Jenkins 2.540 and earlier, LTS 2.528.2 and earlier stores build
authorization tokens unencrypted in job `config.xml` files on the Jenkins
controller.

These tokens can be viewed by users with Item/Extended Read permission or
access to the Jenkins controller file system.

Additionally, the job configuration form does not mask these tokens,
increasing the potential for attackers to observe and capture them.


SECURITY-1166 / CVE-2025-67639
Jenkins 2.540 and earlier, LTS 2.528.2 and earlier does not require a
cross-site request forgery (CSRF) token (crumb) for the URL handling
interactive login HTTP requests, resulting in a cross-site request forgery
(CSRF) vulnerability.

This vulnerability allows attackers to trick users into logging in to the
attacker's account.


SECURITY-3614 / CVE-2025-67640
Git client Plugin generates temporary script files to provide credentials
(e.g., `SSH_ASKPASS`).

In Git client Plugin 6.4.0 and earlier, these script files contain the path
to the workspace directory as part of a command argument. This argument is
not correctly escaped, allowing attackers able to control the workspace
directory name to inject arbitrary OS commands.

NOTE: This vulnerability only has an impact when attackers can control
working directories (e.g., the argument to the `dir(=E2=80=A6)` Pipeline st=
ep)
while not being able to control the Pipeline itself or the programs or
build scripts it executes.


SECURITY-3611 / CVE-2025-67641
Coverage Plugin uses coverage results IDs to create the links to coverage
results on the Jenkins UI.

Coverage Plugin 2.3054.ve1ff7b_a_a_123b_ and earlier does not validate the
configured coverage results ID when creating coverage results, only when
submitting the job configuration through the UI. This allows attackers with
Item/Configure permission to use a `javascript:` scheme URL as identifier
by configuring the job through the REST API, resulting in a stored
cross-site scripting (XSS) vulnerability.

NOTE: This vulnerability is not exploitable on Jenkins 2.539 or newer with
Content Security Policy protection enforced.


SECURITY-3045 / CVE-2025-67642
HashiCorp Vault Plugin 371.v884a_4dd60fb_6 and earlier does not set the
appropriate context for Vault credentials lookup, allowing the use of
System-scoped credentials otherwise reserved for the global configuration.

This allows attackers with Item/Configure permission to access and
potentially capture Vault credentials they are not entitled to.

As of publication of this advisory, there is no fix.


SECURITY-3091 / CVE-2025-13472
BlazeMeter Plugin 4.26 and earlier does not perform a permission check in
an HTTP endpoint.

This allows attackers with Overall/Read permission to enumerate credentials
IDs of credentials stored in Jenkins. Those can be used as part of an
attack to capture the credentials using another vulnerability.


SECURITY-3290 / CVE-2025-67643
Redpen - Pipeline Reporter for Jira Plugin 1.054.v7b_9517b_6b_202 and
earlier does not correctly perform path validation of the workspace
directory while uploading artifacts to Jira.

Additionally, Redpen - Pipeline Reporter for Jira Plugin does not support
distributed builds, causing artifact uploads to occur from the Jenkins
controller rather than from the agent executing the build.

This results in a path traversal vulnerability, allowing attackers with
Item/Configure permission to retrieve files present on the Jenkins
controller workspace directory.

As of publication of this advisory, there is no fix.

--=20
CONFIDENTIALITY NOTICE:_=C2=A0This email and any attachments contain=20
confidential and proprietary information of CloudBees intended only for the=
=20
named recipient(s). Unauthorized use or distribution is prohibited. If you=
=20
received this in error, please notify the sender and delete this email._

--00000000000055a52d06459ae5ad--
