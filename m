Received: (qmail 16359 invoked by uid 550); 24 May 2024 13:17:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14223 invoked from network); 24 May 2024 13:16:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cloudbees.com; s=google; t=1716556606; x=1717161406; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=2Pub7hfPXb1a5kPegFz/HAAyA25rt0v6cJ256FZoVQ8=;
        b=Ay3u7us7dBG3K7g413wT2GEYikENe52AZFQ4yIeef16F4+U9Mj2tyql/KFAw3Zd0ji
         u2h1Wd1hV9Bb+NhKzwCWhv+1AOWCTclpMvvZSnA1tj20Pkyb7rmuYd1sIWbD6DjFrVbs
         LxMVzIgyFYqTHKo3p9Wb104jsALVqr/Rv/LMs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716556606; x=1717161406;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2Pub7hfPXb1a5kPegFz/HAAyA25rt0v6cJ256FZoVQ8=;
        b=f2EDg8A564Ur97u4VqtUxY2RCY2wOE4ssCXch1TT1H4rdjaqi5KfOdOx3YgbHRXmtY
         S8PwADxf9ohvjkzqviqvZbNUnri6iM+ivqRAqHWmv4KNK5vKlTOFL5OqWSCJk8vQSQmm
         ZbbBYx5F1CR1UQP7m9e3zEu0+LWhyXy+YUlbHpgXecgGm82W+OtmMgFz5e8M6gT6pSa4
         0J/TGl7BdoXRPF5atrj6X9zhKxrzKiboWqoOUYLxUEWiXnFeUoZcVgc0OBfq+dzj289C
         ner97c5TLfx3/5n4pNtqFrb7V9jZwn3a+Kmi5oNbY4BrlisHzcpYnXM8aPPPeSEGHMOn
         QeGQ==
X-Gm-Message-State: AOJu0YzbUH5Dp4rUoTcXllZIF5si10Pvd32nIjqt+p/UldFcO/iZbOrb
	JQnnBzaPQjLnZLQAVenax/cGa6NNhEzLYK6HWLDyfGVPDv7GgltWwoIngz6L2J05hP6Ul6vSYDo
	jAo0J6Vx9A6sXkvDYfSHHbpQuL6aiu3IST+kE0POEMlr+gIIQusgLkA==
X-Google-Smtp-Source: AGHT+IFuSQ74v79fks2lYxr9YV+M+V7VU4eUyVvgiU8SddpiLTjA8EGBOKlcV2WzeK2sHRuxwq5TzGXe46r/JCVpmTs=
X-Received: by 2002:ac2:5212:0:b0:51d:682d:c2ab with SMTP id
 2adb3069b0e04-52965199736mr1289891e87.32.1716556605598; Fri, 24 May 2024
 06:16:45 -0700 (PDT)
MIME-Version: 1.0
From: Kevin Guerroudj <kguerroudj@cloudbees.com>
Date: Fri, 24 May 2024 15:16:35 +0200
Message-ID: <CAKG2iZgBc3fST=T3Lv3juL7=mfRoTRiOtdiNMvkE4D=B=-m9Gw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000b6e91b061932fa3f"
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins

--000000000000b6e91b061932fa3f
Content-Type: text/plain; charset="UTF-8"

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* OpenText Application Automation Tools Plugin 24.1.1-beta
* Team Concert Git Plugin 2.0.5

Additionally, we announce unresolved security issues in the following
plugins:

* Report Info Plugin

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2024-05-24/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-3250 / CVE-2024-28793
Team Concert Git Plugin 2.0.4 and earlier does not escape the Rational Team
Concert (RTC) server URI on the build page when showing changes.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers able to configure jobs.


SECURITY-3278 / CVE-2024-4189 (LrScriptResultsParser.java) & CVE-2024-4184
(XpathReader.java) & CVE-2024-4690 (others)
OpenText Application Automation Tools Plugin 24.1.0 and earlier does not
configure its XML parsers to prevent XML external entity (XXE) attacks.

This allows attackers able to control the input files for OpenText
Application Automation Tools Plugin build steps and post-build steps to
have Jenkins parse a crafted file that uses external entities for
extraction of secrets from the Jenkins controller or server-side request
forgery.


SECURITY-3277 / CVE-2024-4211 (ALM jobs configurations) & CVE-2024-4691
(ALM Octane configurations) & CVE-2024-4692 (Service Virtualization
configurations)
OpenText Application Automation Tools Plugin 24.1.0 and earlier does not
perform permission checks in several HTTP endpoints.

This allows attackers with Overall/Read permission to enumerate ALM jobs
configurations, ALM Octane configurations and Service Virtualization
configurations.


SECURITY-3070 / CVE-2024-5273
Report Info Plugin 1.2 and earlier does not perform path validation of the
workspace directory while serving report files.

Additionally, Report Info Plugin does not support distributed builds.

This results in a path traversal vulnerability, allowing attackers with
Item/Configure permission to retrieve Surefire failures, PMD violations,
Findbugs bugs, and Checkstyle errors on the controller file system by
editing the workspace path.

As of publication of this advisory, there is no fix.

--000000000000b6e91b061932fa3f--
