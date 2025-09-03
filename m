Received: (qmail 17642 invoked by uid 550); 3 Sep 2025 20:21:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5808 invoked from network); 3 Sep 2025 14:14:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cloudbees.com; s=google; t=1756908875; x=1757513675; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=a1OMdvJkbzqW6FkxjZ5mJ5sBdkKr1+qdUr70GPedyKI=;
        b=XmKOEVk4w2oWwPvxDHE2R5pp5dbDMwfzMRPKEvR/BM50xVdQWmNoklFs87rLnHlTaW
         ptMWWCszUtBpPIi98UBUMBxcdP9DOIX1+QsQWP1ihF483fCNkLGYLCqs1d0Jj+2EPLNO
         zdDB2A0i0jH+kc3pilpBxQXh6tVFrQmgeOk9U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756908875; x=1757513675;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=a1OMdvJkbzqW6FkxjZ5mJ5sBdkKr1+qdUr70GPedyKI=;
        b=tl1XpIevzTRUgNJdH7a0gP3P6l/Ry57s8VPJRdB8+8GVQocLKzii9T2R9/9rALrJ9/
         fjPV4wSlXWYkDk4T6Gie/CT0ANa0Qi2gZvcBxmFwCpq+nVIgs6O0PiTRWgFkw2xWpCDT
         r8jrLQ1JBMs5jPBfhmPyudlDPU9qO25dlL+wgJ6UVlvxpmZLbi28GpgDLE8lqucK8sAZ
         TQU0DWKQ6th+h4KzbMrV2JGo98rwK2Ft5B/nJ/XNHnUqBFDn+HKl45siQqRz51F5+vxX
         t8FUaT1bTHaoyt9BH+OAqArZV0yk6j8J1H2P08dwvyxKM+XEBIm6z/TRzDfpjKVIPCtF
         w8xw==
X-Gm-Message-State: AOJu0Yz0RbFoK0elRZwEbbhOMP86KG9lz4qQzqsmNtuIBaNgjNgpngQC
	tyyVB0CCP1TD37lPTV5/7Ei/YCC52ZfqGx/F3m/rY3fuqgyKx6wYZObCc5DNSMRD9EPex6Gr7Yu
	WdcQCIFnoeFg6FroCdrawlVk9LbbHpTmHan3pqI3ZGkcpfZz1iuhJnrRZd2YkFa4mRg==
X-Gm-Gg: ASbGncv2G8UYlMFaP98u9EKDK0TdsKJMsWQYf5NkqBSr57CPIIoeZSt3pNudCi3S+/p
	y13F4FkWpsIbgOt+RencDl9TLMMgCnUKOKYXwA14/UZJiOow4Nsq5PrMdPct1kcJBgGwkOA2iKa
	ZMEDKzQvciRcvoyhJQcUpQ/skyMxn/v2KIzuOgt8M6PYyjO9+SqyrrRi9N2ZQ2lK5vF78Rg5rLZ
	ftSnkgI1dcDxWCkj3xccIK2Vi4fP+1S6F03p5oxzkoUeTUpzi1x+uwn72iU
X-Google-Smtp-Source: AGHT+IF1qA4OSIjRbsJNAp/kTPf+DFsG927EGLvrEP0PAVGSgrHYNEW8PSIjkr01QiB8jvrgH/6AuDPQvq6KkHd2mXE=
X-Received: by 2002:a92:c267:0:b0:3f0:70c1:2ca9 with SMTP id
 e9e14a558f8ab-3f3fd18b311mr249498875ab.0.1756908875162; Wed, 03 Sep 2025
 07:14:35 -0700 (PDT)
MIME-Version: 1.0
From: Kevin Guerroudj <kguerroudj@cloudbees.com>
Date: Wed, 3 Sep 2025 16:14:24 +0200
X-Gm-Features: Ac12FXwSon3vzc0LPxNB5Eh4totVXX_40pGqc_2LAbIEVrA9kApCXBJk6cJ8ui4
Message-ID: <CAKG2iZiHhCZT7jsOPHwJZMVZP=+ekK5_ETZiOO2iR+nhfTjQ7A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000006841b5063de6394b"
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins

--0000000000006841b5063de6394b
Content-Type: text/plain; charset="UTF-8"

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Git client Plugin 6.3.3
* global-build-stats Plugin 347.v32a_eb_0493c4f
* Jakarta Mail API Plugin 2.1.3-3
* OpenTelemetry Plugin 3.1543.1545.vf5a_4ec123769


Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found
here:https://www.jenkins.io/security/advisory/2025-09-03/

We provide advance notification for security updates on this mailing
list:https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-3590 / CVE-2025-58458
Git client Plugin 6.3.2 and earlier allows specifying the experimental
`amazon-s3` protocol for use with the bundled JGit library. This protocol
authenticates against Amazon S3 based on contents of the file whose path is
provided as the authority part of the URL
(`amazon-s3://path-to-file@bucketname/folder`).

While use of this protocol in Git client Plugin to perform any actions
always fails due to a bug in the plugin, error messages can be used to
determine whether the specified file path exists on the controller.

This allows attackers to check for the existence of an attacker-specified
file path on the Jenkins controller file system. Whether an attacker has
the permissions to exploit this vulnerability depends on the installed
plugins that expose Git client Plugin functionality to users. For example,
attackers with Credentials/Use Item permission (implied by Item/Configure)
can use form field validation responses of URL fields in Git Plugin.

NOTE: Jenkins instances using command line Git exclusively (the default)
are unaffected by this vulnerability.


SECURITY-3617 / CVE-2025-7962
Jakarta Mail API Plugin 2.1.3-2 and earlier bundles versions of Angus Mail
vulnerable to CVE-2025-7962.

This allows attackers able to control recipient email addresses of emails
sent by Jenkins to send emails with arbitrary contents to arbitrary
recipients.


SECURITY-3535 / CVE-2025-58459
global-build-stats Plugin 322.v22f4db_18e2dd and earlier does not perform
permission checks in its REST API endpoints.

This allows attackers with Overall/Read permission to enumerate graph IDs.
These IDs can be used to access those graphs.


SECURITY-3602 / CVE-2025-58460
OpenTelemetry Plugin 3.1543.v8446b_92b_cd64 and earlier does not perform a
permission check in a method implementing form validation.

This allows attackers with Overall/Read permission to connect to an
attacker-specified URL using attacker-specified credentials IDs obtained
through another method, capturing credentials stored in Jenkins.

--0000000000006841b5063de6394b
Content-Type: text/html; charset="UTF-8"

<div dir="ltr"><div><pre style="color:rgb(0,0,0)">Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Git client Plugin 6.3.3
* global-build-stats Plugin 347.v32a_eb_0493c4f
* Jakarta Mail API Plugin 2.1.3-3
* OpenTelemetry Plugin 3.1543.1545.vf5a_4ec123769


Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
<a href="https://www.jenkins.io/security/advisory/2025-09-03/">https://www.jenkins.io/security/advisory/2025-09-03/</a>

We provide advance notification for security updates on this mailing list:
<a href="https://groups.google.com/d/forum/jenkinsci-advisories">https://groups.google.com/d/forum/jenkinsci-advisories</a>

If you discover security vulnerabilities in Jenkins, please report them as
described here:
<a href="https://www.jenkins.io/security/#reporting-vulnerabilities">https://www.jenkins.io/security/#reporting-vulnerabilities</a>

---

SECURITY-3590 / CVE-2025-58458
Git client Plugin 6.3.2 and earlier allows specifying the experimental
`amazon-s3` protocol for use with the bundled JGit library. This protocol
authenticates against Amazon S3 based on contents of the file whose path is
provided as the authority part of the URL
(`amazon-s3://path-to-file@bucketname/folder`).

While use of this protocol in Git client Plugin to perform any actions
always fails due to a bug in the plugin, error messages can be used to
determine whether the specified file path exists on the controller.

This allows attackers to check for the existence of an attacker-specified
file path on the Jenkins controller file system. Whether an attacker has
the permissions to exploit this vulnerability depends on the installed
plugins that expose Git client Plugin functionality to users. For example,
attackers with Credentials/Use Item permission (implied by Item/Configure)
can use form field validation responses of URL fields in Git Plugin.

NOTE: Jenkins instances using command line Git exclusively (the default)
are unaffected by this vulnerability.


SECURITY-3617 / CVE-2025-7962
Jakarta Mail API Plugin 2.1.3-2 and earlier bundles versions of Angus Mail
vulnerable to CVE-2025-7962.

This allows attackers able to control recipient email addresses of emails
sent by Jenkins to send emails with arbitrary contents to arbitrary
recipients.


SECURITY-3535 / CVE-2025-58459
global-build-stats Plugin 322.v22f4db_18e2dd and earlier does not perform
permission checks in its REST API endpoints.

This allows attackers with Overall/Read permission to enumerate graph IDs.
These IDs can be used to access those graphs.


SECURITY-3602 / CVE-2025-58460
OpenTelemetry Plugin 3.1543.v8446b_92b_cd64 and earlier does not perform a
permission check in a method implementing form validation.

This allows attackers with Overall/Read permission to connect to an
attacker-specified URL using attacker-specified credentials IDs obtained
through another method, capturing credentials stored in Jenkins.</pre></div><div dir="ltr" class="gmail_signature" data-smartmail="gmail_signature"><div dir="ltr"></div></div></div>

--0000000000006841b5063de6394b--
