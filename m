Received: (qmail 16046 invoked by uid 550); 23 Aug 2022 15:39:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12048 invoked from network); 23 Aug 2022 15:29:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc;
        bh=bAlvl4blhwQ2/YS9diBGOWoh9iMEtK94c41iXdSjzI0=;
        b=CvdIOiYpQ3OaRyEJAEcA7ft9sijNtdb3as5Y2BfLepYBgUK9ZacszzMvmHV4Qat6kC
         RY6FeemQrPUwlR6kImo+7wS+MUw3vcOxduYsd9HtKR7epzbZYHIJLtdS3noAqIcAnfST
         HiNo0sTlXV/RSnaw2jTH1p1PW5aGluDJF1VCzWcWkgqHvYhCOZ4P/baL6EhaXyLAkIps
         rmmZaLaezjdlVzU4mdKG4TrClMHryl51PC88mXzXRWp5y2Tn4NbjUzTPIwJ36+7IshjX
         7iy6Uw1y+mQ3Zt78dS4frWLogTxukBYFxe5uzyWW3B4FdzZ0pf/SxgP08FjmY5xks+aP
         2cFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc;
        bh=bAlvl4blhwQ2/YS9diBGOWoh9iMEtK94c41iXdSjzI0=;
        b=2cSOe7jJL1DKk6MKxALHWvXUWOYdkpLs7x0/NQE4MD6lAEKF/yeIRctJRcJeK113IE
         QtYSwKKrSuMAIx1uG490/A/i9D7fq1aFH9iB24B0Uiov80r4W3D31D07B9T6d0lXRbcT
         hykjqkiMrlPvUQTNuzbjUdYNz0H9QUR7vNfLl66CO0SSnRRnVLCMt8ZytAi0F7SCGosi
         edSakubw9xhmXqjDHj1HK8tIz/UKIPBqTdjDAvKTsLz4+fhGFdWqTWcyfQsOpBc8zq9r
         m2nZZMO06MwZUxMl/Eq5+zE38MMT4TeVmFD4pKqKIU6HWQ4Cx5Bllup6cjLxFm2gFqmZ
         m0Pg==
X-Gm-Message-State: ACgBeo02mIIu8SWMJPC9Q1Pu5WkWyljNWW2uRUhdEDirczLBsYW5/tZm
	Uj3wqfJQ1DXNrNbuxhQ96B0A/FpPqKEx8bnYLo9hWhakXm0=
X-Google-Smtp-Source: AA6agR58PGk20/wWWdf9TPfYHyOeeS3VSFX+PpWIfnk2tp0yOGZJ6qEWWziDRQlcr9+bhKkd5KlhfntHDeSmckyVeXU=
X-Received: by 2002:a67:ee4d:0:b0:390:9027:3776 with SMTP id
 g13-20020a67ee4d000000b0039090273776mr8076vsp.84.1661268580224; Tue, 23 Aug
 2022 08:29:40 -0700 (PDT)
MIME-Version: 1.0
From: Wadeck Follonier <wadeck.follonier@gmail.com>
Date: Tue, 23 Aug 2022 17:29:03 +0200
Message-ID: <CAK_ifP47=74WfAVBGV+EnrtBZ92Zjsk8Zbib8AdVfQQNWj6YXw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000099d55005e6ea3ba4"
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins

--00000000000099d55005e6ea3ba4
Content-Type: text/plain; charset="UTF-8"

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* CollabNet Plugins Plugin 2.0.9
* Git Plugin 4.11.5
* Job Configuration History Plugin 1166.vc9f255f45b_8a

Additionally, we announce unresolved security issues in the following
plugins:

* Kubernetes Continuous Deploy Plugin

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2022-08-23/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-2796 / CVE-2022-38663
Git Plugin 4.11.4 and earlier does not properly mask (i.e., replace with
asterisks) credentials in the build log provided by the Git Username and
Password (`gitUsernamePassword`) credentials binding. Usernames are masked
instead of passwords in cases when usernames are not set to be treated as
secret.


SECURITY-2765 / CVE-2022-38664
Job Configuration History Plugin 1165.v8cc9fd1f4597 and earlier does not
escape the job name on the System Configuration History page.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers able to configure job names.


SECURITY-2157 / CVE-2022-38665
CollabNet Plugins Plugin 2.0.8 and earlier stores a RabbitMQ password
unencrypted in its global configuration file
`hudson.plugins.collabnet.share.TeamForgeShare.xml` on the Jenkins
controller as part of its configuration.

This password can be viewed by users with access to the Jenkins controller
file system.


SECURITY-2448 / CVE-2021-25738
Kubernetes Continuous Deploy Plugin 2.3.1 and earlier bundles a version of
Kubernetes Java Client library with the vulnerability CVE-2021-25738 that
does not configure its YAML parser to prevent the instantiation of
arbitrary types.

This results in a remote code execution (RCE) vulnerability exploitable by
users able to provide YAML input files to Kubernetes Continuous Deploy
Plugin's build step.

As of publication of this advisory, there is no fix.

--00000000000099d55005e6ea3ba4--
