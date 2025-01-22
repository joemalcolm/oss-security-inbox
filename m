Received: (qmail 30717 invoked by uid 550); 22 Jan 2025 16:52:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13438 invoked from network); 22 Jan 2025 16:27:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cloudbees.com; s=google; t=1737563263; x=1738168063; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=NygV4gkGonPm53JAZmA2j7W5TGqfdzSbwGksUPJdnvg=;
        b=kz5U9u3IiO4/VyGOE+El9sgX2nAQ+cLJb/GN28iQudjH1CuH/kdFVW1WK7rzVmihZ3
         +o5fmgxwMzIiZDLeHFDtov8TLF7M7E9NRkrirV+1vKgXSWK7PdUSS3wzEewHfvXJ6UVV
         vV71HuxMVXjobeUjtg/NIp6Vaf3Ji7VtsMOjw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737563263; x=1738168063;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NygV4gkGonPm53JAZmA2j7W5TGqfdzSbwGksUPJdnvg=;
        b=wdPzEFM4DBCvx6tHYELkRrechD+dDfupLkY8EVY/voHYdVp+Qa0eM5N+6aQFqUPTjT
         Ws7ZuCs14LYULJzjBdM/Cq2LLCp0KXTZxjErJPKZiYRF0QMpfKjM09yMMfwpdUjulZFE
         50UZ75wr7Km3Tohadwz10SQf309CRG/Qsa7T4PoS0+tcpuz2xc1wFbLZ5ymS6UgPdeNX
         eSUop05kCkF+rDSQEoeI+i+0qgwdaIn3X5KnO8FTsWEUlAJxh/rlTSaDiciPZIuKH+Xx
         EMtHBO4EWVMYDhJUb/DtImgKKfy5fI6HRdAg2xhCzT3mswofuNv/4CfnEfRfPBwJqBkq
         xt1g==
X-Gm-Message-State: AOJu0Yz/oEtGYFLkjyDM9Sidhm9YF+T+7CoQBwMQ4HkmV8WY4e2tVtYl
	ipNhdJcQQO4KrfC0957/S3EMNYRuSmx7AxKAfqZUt1thyyyqn1bgRSCywvOTYT26jqDRWMa15T3
	zmDsUKL3cEV7PZfuxnZdaulIsOjoPgvE/tapBufoUFSy2i1vkGjU=
X-Gm-Gg: ASbGncvbtSSaphAIiqWEn4gg8Anq6KBqaILMZxF/3KRq0MNCg76SiS1IJeG9VG1htWL
	bp5BPX6di+Mmtya5eKFvQoD/xz/y3VnxLKprnZTfGoHxYmj5UDoeTctgatSD3VuRinttzNhNYwd
	b1GHgJOAs=
X-Google-Smtp-Source: AGHT+IF5wZu2GnGP66TgY9wti8jB/+gLA4zdZlhMz1fuX7npyf5aJyGa7PgpCVev9b+eyxPx0VvuIhHz487B8kNA42Q=
X-Received: by 2002:ac2:4541:0:b0:53e:389d:8ce4 with SMTP id
 2adb3069b0e04-5439c281f4fmr6799833e87.34.1737563262375; Wed, 22 Jan 2025
 08:27:42 -0800 (PST)
MIME-Version: 1.0
From: Kevin Guerroudj <kguerroudj@cloudbees.com>
Date: Wed, 22 Jan 2025 17:27:31 +0100
X-Gm-Features: AbW1kvZC8tI3l8OrggAxZXeAeD84pKlAgkl5zjMHg3SNRfghJzJ1jQhfJgUKg7s
Message-ID: <CAKG2iZgvRCS1i2SfWtW0dVatV1ASLUKP6TYBSo4cmWW8Luqomg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000076c88062c4df9d2"
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins

--000000000000076c88062c4df9d2
Content-Type: text/plain; charset="UTF-8"

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Bitbucket Server Integration Plugin 4.1.4
* Eiffel Broadcaster Plugin 2.10.3
* GitLab Plugin 1.9.7
* OpenId Connect Authentication Plugin 4.453.v4d7765c854f4
* Zoom Plugin 1.4 and 1.6

Additionally, we announce unresolved security issues in the following
plugins:

* Azure Service Fabric Plugin
* Folder-based Authorization Strategy Plugin

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2025-01-22/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-3260 / CVE-2025-24397
GitLab Plugin 1.9.6 and earlier does not correctly perform a permission
check in an HTTP endpoint.

This allows attackers with global Item/Configure permission (while lacking
Item/Configure permission on any particular job) to enumerate credential
IDs of GitLab API token credentials and Secret text credentials stored in
Jenkins. Those can be used as part of an attack to capture the credentials
using another vulnerability.


SECURITY-3434 / CVE-2025-24398
An extension point in Jenkins allows selectively disabling cross-site
request forgery (CSRF) protection for specific URLs. Bitbucket Server
Integration Plugin implements this extension point to support OAuth 1.0
authentication.

In Bitbucket Server Integration Plugin 2.1.0 through 4.1.3 (both inclusive)
this implementation is too permissive, allowing attackers to craft URLs
that would bypass the CSRF protection of any target URL.


SECURITY-3461 / CVE-2025-24399
OpenId Connect Authentication Plugin 4.452.v2849b_d3945fa_ and earlier
treats usernames as case-insensitive.

On a Jenkins instance configured with a case-sensitive OpenID Connect
provider, this allows attackers to log in as any user by providing a
username that differs only in letter case, potentially gaining
administrator access to Jenkins.


SECURITY-3292 (1) / CVE-2025-0142
Zoom Plugin 1.3 and earlier stores Zoom integration tokens unencrypted in
job `config.xml` files on the Jenkins controller as part of its
configuration.

These tokens can be viewed by users with Item/Extended Read permission or
access to the Jenkins controller file system.


SECURITY-3292 (2) / CVE pending
Zoom Plugin requires Zoom integration tokens for `Zoom Build Notifier`
post-build actions.

In Zoom Plugin 1.5 and earlier the job configuration form does not mask
these tokens, increasing the potential for attackers to observe and capture
them.


SECURITY-3485 / CVE-2025-24400
Eiffel Broadcaster Plugin allows events published to RabbitMQ to be signed
using certificate credentials. To improve performance, the plugin caches
some data from the credential.

Eiffel Broadcaster Plugin 2.10.2 and earlier uses the credential ID as the
cache key. This allows attackers able to create a credential with the same
ID as a legitimate one in a different credentials store, to sign an event
published to RabbitMQ with the legitimate certificate credentials.

NOTE: Signing is disabled by default, only instances explicitly configured
to enable it are affected.


SECURITY-3062 / CVE-2025-24401
Folder-based Authorization Strategy Plugin 217.vd5b_18537403e and earlier
does not verify that permissions configured to be granted are enabled. This
may allow users formerly granted (typically optional permissions, like
Overall/Manage) to access functionality they're no longer entitled to.

As of publication of this advisory, there is no fix.


SECURITY-3094 / CVE-2025-24402 (CSRF) & CVE-2025-24403 (missing permission
check)
Azure Service Fabric Plugin 1.6 and earlier does not perform permission
checks in several HTTP endpoints.

This allows attackers with Overall/Read permission to enumerate credentials
IDs of Azure credentials stored in Jenkins. Those can be used as part of an
attack to capture the credentials using another vulnerability.

Additionally, those HTTP endpoints do not require POST requests, resulting
in a cross-site request forgery (CSRF) vulnerability, allowing attackers to
connect to a previously configured Service Fabric URL using
attacker-specified credentials IDs.

As of publication of this advisory, there is no fix.
<jtalbot@cloudbees.com>

--000000000000076c88062c4df9d2--
