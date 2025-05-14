Received: (qmail 30113 invoked by uid 550); 14 May 2025 17:57:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 29714 invoked from network); 14 May 2025 17:17:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cloudbees.com; s=google; t=1747243039; x=1747847839; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Y5fkOVwOcwm2H7EU86aHoNtxTLWAVgJQwxaVyFb9mBg=;
        b=CWbDSTZastc/VrMgk1Mcx8OU0GFN3EZhNM0c6PiUYletoQYxspV4IDOW9hlvWoXTki
         W1RWyO66lxmOyskYQApqzHoeOk/7/Himp+sJElgLYUDo2t7fbVWsotMZWN6Pf4hIph3L
         kqqL4Elh+u3OBkQhlRC8XEKporQHG/BbXWoh0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747243039; x=1747847839;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Y5fkOVwOcwm2H7EU86aHoNtxTLWAVgJQwxaVyFb9mBg=;
        b=hYM/+OyhQvue+uMFFE3vODQBnMcNdWDs25suY4Q+SAfzUMU+LW2qXqVnTB2rTazsuO
         bOCgfbwG9PlJ2xKODWHZ33pshIAModAfYOxlRKof0jmDbW54LViD1gRar03JbZRi9cxt
         tW3NGdDcAlDeSE6hh+KD9F7hIRsnPTg2Pv3c3wElWoUOekK1orPBvWkmJh9xLQ1Fyuqt
         UcRGH034naQxOb6d3fkCdL7JhZK/ODHxUiaB5Z+lQ3LQDYjWPXXhBBamBt5lKnRICYAp
         OSS7dq9HssHVwC/RB1JQlJfkv0V0hcYQW6SdpxXgJmQVWydmFkOywHw1bXE+rxA7gFKE
         p/Fg==
X-Gm-Message-State: AOJu0Yz2q22PRpDsEX04KdxNkHvWvuwCP0vtPRMdjwK7w5K1vI+dfPhC
	B2jBOKiCEoBtnKUqKJnu1gMprsucPU1ESTS0+XBjJ3BCjrXiOM2imolOQ+ZJrOYNYeovtXNl+in
	m6qTCKy2whIK3TXya76lJrGezAPR8fFFH+RWC6zHXiNViOYSwULJK9Q==
X-Gm-Gg: ASbGncuVyUGA6cexbLkqlVvYNHBP0+tbIuJz3NC6FfKGEbu5uo+nW1OqJA/rLMhiTPw
	GVpsP8rwVXc3JVcDZ6qS6tQKjhg5B/2K40iDvJfhyZPclYFxr7eRYEivrrEzl874zKxN7PBpmNb
	B/JpDlowoxbyS3jUMxarAm7RtWD4A9VdRBmU5w85/FL7hHI8ofU3a0FfWbBcLvVR5c
X-Google-Smtp-Source: AGHT+IGxYGNKkzHqnUTWj+rbJcHO3CB4uI4HrmC0wsrFFwBpGpJLdUizhIExAz3i+YqU5chthqHTlX12a3xLO9I+Rio=
X-Received: by 2002:a05:6e02:198b:b0:3db:75b6:7624 with SMTP id
 e9e14a558f8ab-3db75b6780fmr21310085ab.11.1747243029189; Wed, 14 May 2025
 10:17:09 -0700 (PDT)
MIME-Version: 1.0
From: Kevin Guerroudj <kguerroudj@cloudbees.com>
Date: Wed, 14 May 2025 19:17:00 +0200
X-Gm-Features: AX0GCFuO81uuSMRFKtQk0o9Cyyedz-ku6LcLBfX5qnnLb0z3nD02ZMNSRLX-Xg8
Message-ID: <CAKG2iZjg6wdrWir1t8DqRZNvyXaBxOoYXbkUMWoL6phzEauONg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000017693a06351bb893"
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins

--00000000000017693a06351bb893
Content-Type: text/plain; charset="UTF-8"

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Cadence vManager Plugin 4.0.1-288.v8804b_ea_a_cb_7f
* Health Advisor by CloudBees Plugin 374.376.v3a_41a_a_142efe
* OpenID Connect Provider Plugin 111.v29fd614b_3617

Additionally, we announce unresolved security issues in the following
plugins:

* DingTalk Plugin
* WSO2 Oauth Plugin

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2025-05-14/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-3574 / CVE-2025-47884
In OpenID Connect Provider Plugin, claim templates can use environment
variables for jobs and builds for dynamic content. The default claim
template for build ID tokens uses the `JOB_URL` environment variable for
the `sub` (Subject) claim.

In OpenID Connect Provider Plugin 96.vee8ed882ec4d and earlier the
generation of build ID Tokens uses potentially overridden values of
environment variables.

When certain other plugins are installed which allow arbitrary environment
variables to be overridden (e.g., Environment Injector
Plugin), this allows attackers able to configure jobs to craft a build ID
Token that impersonates a trusted job, potentially gaining unauthorized
access to external services.


SECURITY-3559 / CVE-2025-47885
Health Advisor by CloudBees Plugin 374.v194b_d4f0c8c8 and earlier does not
escape responses from the Jenkins Health Advisor server.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers able to control Jenkins Health Advisor server
responses.


SECURITY-3548 / CVE-2025-47886 (CSRF) & CVE-2025-47887 (missing permission
check)
Cadence vManager Plugin 4.0.1-286.v9e25a_740b_a_48 and earlier does not
perform permission checks in methods implementing form validation.

This allows attackers with Overall/Read permission to connect to an
attacker-specified URL using attacker-specified username and password.

Additionally, these form validation methods do not require POST requests,
resulting in a cross-site request forgery (CSRF) vulnerability.


SECURITY-3353 / CVE-2025-47888
DingTalk Plugin 2.7.3 and earlier unconditionally disables SSL/TLS
certificate and hostname validation for connections to the configured
DingTalk webhooks.

As of publication of this advisory, there is no fix.


SECURITY-3481 / CVE-2025-47889
In WSO2 Oauth Plugin 1.0 and earlier authentication claims are accepted
without validation by the "WSO2 Oauth" security realm.

This allows unauthenticated attackers to log in to controllers using this
security realm using any username and any password, including usernames
that do not exist.

Sessions created this way do not have any additional authorities, i.e.,
memberships in groups. Even the "authenticated" group membership is absent.
The impact of successfully creating a session this way depends on the
authorization strategy and how it is configured. Commonly used
authorization strategies behave as described below:

* The authorization strategy "Logged-in users can do anything" determines
  that users who logged in this way are not the anonymous user, and are
  granted Overall/Administer permission.
* The authorization strategy "Role-based strategy" provided by Role-based
  Authorization Strategy Plugin grants attackers permissions assigned
  directly to the specified user (or ambiguous permissions applicable to
  both users and groups).
Permissions that would be granted through groups would not be granted.

* The authorization strategies "Matrix-based security" and "Project-based
  Matrix Authorization Strategy" provided by Matrix Authorization Strategy
  Plugin grant permissions assigned directly to the specified user (or
  ambiguous permissions applicable to both users and groups, typically
  predating version 3.0 of the plugin).
Permissions that would be granted through groups would not be granted.

As of publication of this advisory, there is no fix.

--00000000000017693a06351bb893--
