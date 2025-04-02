Received: (qmail 18238 invoked by uid 550); 2 Apr 2025 15:45:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9883 invoked from network); 2 Apr 2025 13:58:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cloudbees.com; s=google; t=1743602314; x=1744207114; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=a8+YhujGUAvY8O1aRIs7jkYR7zS6fh57nj8tpKBLZuI=;
        b=COUtqD9EQU/cEKrkHuxYk9+5IT7tIn53HE2uQYFtL8jSiJIgzJhv9rWn43sPNHtG2E
         lArZ9MqzWZsFDrY/QsaOJTyqieJmawwe51j4TN0vyHts785FwycRPsf1U/6H7bApS9Gc
         Gfltg+Ug/+yr6PMsUM6ZbRdefsL76aCHw5YEg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743602314; x=1744207114;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=a8+YhujGUAvY8O1aRIs7jkYR7zS6fh57nj8tpKBLZuI=;
        b=DZB8Z+3FyRP21Qz+/jF9Rh+oHOQL2IXtYvDCqdCsUYRhBx5P7tHiMzjlvN2M+WIOcp
         V3OFN7w9AsocvWAKBqG+o/I5/PW4b56v2l7I8fBIEosn4AE3Am0ghpMR8dY/pYzQrEc/
         358c14hNyavjMbFn+MZ3QxGUaBlCqKOvtTOOpNG8AQjFm8gmM2VR7K17BI83kzNwla53
         LfzPdi+QR43H2O8AbejNT2ucz96cakuFYkiuYtD0JQAwYXA7d3HN0rbakK8uRQ5bDjEL
         CLxHF7GW9ELs4Wk3/QwoN5GdxY9W4EB+D8SxyethZmFaFLWXHu0kkuHFsihcrhcfV6be
         EGew==
X-Gm-Message-State: AOJu0YxBGjTwIsunvmJ5LVyeWOJYCEtkv4KDzmU8ZuQ3GbfUe9+/Ak6r
	87h9dHlaaT+0hD7QNEAxjwpWw2D3sFm0IOkQ7P5Rt4OxDNWmk82ck1R4+fIcaiUB2HR/kNY3+6E
	kiziBdYUxgg2SqU4Zc1gY3MM74XzjpXzEnVYkkc3nzmmVr/HaxduqZ/mB
X-Gm-Gg: ASbGncsHaQceDV6niuXJEmTMOVxpTQOG22tTDB7JEuazVxjJkbKtC0CGIrcO176bZcn
	WJqc0I5VKiP2Gsx9TON4EA57rXOZ0lyOXnfSm+eyQsrP9/640w2OZ/cpwSl7gQFURo/FeRP6BIW
	eEESdy09rfMKQAyxkfsR6x3gmfS0/TjSO/9XXxrYpeYg7hg1ImqfwCFNtS5BHYQvfnEKrH
X-Google-Smtp-Source: AGHT+IEuhxY8ZTVjMVgaRNmuDW1BF0NMgR1/y331xO22stvif4YUuGLFK6yQqWu8Ik3ItQ2beh1e4jz97WVf1IuBBlE=
X-Received: by 2002:a05:6e02:3499:b0:3cf:bac5:d90c with SMTP id
 e9e14a558f8ab-3d5e09cda05mr221661595ab.18.1743602314159; Wed, 02 Apr 2025
 06:58:34 -0700 (PDT)
MIME-Version: 1.0
From: Kevin Guerroudj <kguerroudj@cloudbees.com>
Date: Wed, 2 Apr 2025 15:58:23 +0200
X-Gm-Features: AQ5f1JqERVH16h82YVtOjyGKT0Jmaxz7QBsd1JPvzxLDv_5fMlsmoGs8aMzcM3I
Message-ID: <CAKG2iZgXKEhr1_MQ1z9PxE=Q9hJ+fdGDm=CckapoGuUYb47Gxw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000090c9ac0631cc0cce"
Subject: [oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins

--00000000000090c9ac0631cc0cce
Content-Type: text/plain; charset="UTF-8"

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Jenkins 2.504
* Jenkins LTS 2.492.3
* Cadence vManager Plugin 4.0.1-286.v9e25a_740b_a_48
* Simple Queue Plugin 1.4.7
* Templating Engine Plugin 2.5.4

Additionally, we announce unresolved security issues in the following
plugins:

* AsakusaSatellite Plugin
* monitor-remote-job Plugin
* Stack Hammer Plugin

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2025-04-02/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-3512 / CVE-2025-31720
Jenkins 2.503 and earlier, LTS 2.492.2 and earlier does not perform a
permission check in an HTTP endpoint.

This allows attackers with Computer/Create permission but without
Computer/Extended Read permission to copy an agent, gaining access to its
configuration.


SECURITY-3513 / CVE-2025-31721
Jenkins 2.503 and earlier, LTS 2.492.2 and earlier does not perform a
permission check in an HTTP endpoint.

This allows attackers with Computer/Create permission but without
Computer/Configure permission to copy an agent, gaining access to encrypted
secrets in its configuration.


SECURITY-3505 / CVE-2025-31722
Templating Engine Plugin allows defining libraries both in the global
configuration, as well as scoped to folders containing the pipelines using
them. While libraries in the global configuration can only be set up by
administrators and can therefore be trusted, libraries defined in folders
can be configured by users with Item/Configure permission.

In Templating Engine Plugin 2.5.3 and earlier, libraries defined in folders
are not subject to sandbox protection. This vulnerability allows attackers
with Item/Configure permission to execute arbitrary code in the context of
the Jenkins controller JVM.


SECURITY-3469 / CVE-2025-31723
Simple Queue Plugin 1.4.6 and earlier does not require POST requests for
multiple HTTP endpoints, resulting in cross-site request forgery (CSRF)
vulnerabilities.

These vulnerabilities allow attackers to change and reset the build queue
order.


SECURITY-3537 / CVE-2025-31724
Cadence vManager Plugin 4.0.0-282.v5096a_c2db_275 and earlier stores
Verisium Manager vAPI keys unencrypted in job `config.xml` files on the
Jenkins controller as part of its configuration.

These API keys can be viewed by users with Item/Extended Read permission or
access to the Jenkins controller file system.


SECURITY-3539 / CVE-2025-31725
monitor-remote-job Plugin 1.0 stores passwords unencrypted in job
`config.xml` files on the Jenkins controller as part of its configuration.

These passwords can be viewed by users with Item/Extended Read permission
or access to the Jenkins controller file system.

As of publication of this advisory, there is no fix.


SECURITY-3520 / CVE-2025-31726
Stack Hammer Plugin 1.0.6 and earlier stores Stack Hammer API keys
unencrypted in job `config.xml` files on the Jenkins controller as part of
its configuration.

These API keys can be viewed by users with Item/Extended Read permission or
access to the Jenkins controller file system.

As of publication of this advisory, there is no fix.


SECURITY-3523 / CVE-2025-31727 (storage) & CVE-2025-31728 (masking)
AsakusaSatellite Plugin 0.1.1 and earlier stores AsakusaSatellite API keys
unencrypted in job `config.xml` files on the Jenkins controller as part of
its configuration.

These API keys can be viewed by users with Item/Extended Read permission or
access to the Jenkins controller file system.

Additionally, the job configuration form does not mask these API keys,
increasing the potential for attackers to observe and capture them.

As of publication of this advisory, there is no fix.

--00000000000090c9ac0631cc0cce--
