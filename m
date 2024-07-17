Received: (qmail 1326 invoked by uid 550); 17 Jul 2024 13:17:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25908 invoked from network); 17 Jul 2024 13:10:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1721221795; x=1721826595; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=HhaYMm3lSqpjyOsWOUvybC3bzbxZ20avtXpQKTkqKmQ=;
        b=hH6iJrSArw7DLKCs2UINHVl+/2czpj0E/wS406bDL6RjcVT8bFR4FwrpilGtO+GGc1
         bQcf/+0sfLtPre0m9/utYSfGYMlgKeoML3WJyf4j/Xu/3U0V6MsfzOOUlxUdpWaBI4hr
         1uTziMU92FtpEI5l2e3BkZfj3cZbRNXZm6WiZZkiXeyqDsFaKJT912aPgTlYrJZ2dCaI
         lhMMtz4T+2EwqoXxF2l8PIxNP8XswDrEZM9Yyr/uHThephtUgdLz9sObqlqL6k775BMQ
         l8deNTj3geL2KdNXbWU0BNFMRkV6jxaY896kKw0FREkKQAsf+zvrBL+s3g+mtvK8wGzh
         5a2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721221795; x=1721826595;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HhaYMm3lSqpjyOsWOUvybC3bzbxZ20avtXpQKTkqKmQ=;
        b=Ct/yXa22EJ7O5ffYXoi32sAZeG27MdQd1W3nXbS83VDKIGBgKeo9yo2DxqAZVWrk5C
         h04JkK0hiNA1GOQzsnV/THzGtlk7csRXSSeJo9xTLUr6eoYNxtugRC4yTPW1SdFy0PYf
         BcWBA0qxLFZ20vkSWw+wPLChZJAY+agDyEakNosIlrVKHBiJnIuSBcKca0Nr6yHOTYrI
         eQgCLcegoZkCGi9n92bt0Se5k8fNvA05R7CgPCHratriSLqYUbAqwBWzE0QiseDqPY/m
         r6xUa0ssyU/U9oDtMCe6oMdm+UlySLO+6XHs9hCPBtftutpG1pnNsPr01vUXhOq+JObL
         /i7g==
X-Gm-Message-State: AOJu0YzJeRWt21VQ9qo9dWrOHm6/rMyf/SvLA9Q7mkwYZcSPM8wj2x6W
	z8k8mvMNazHkneGrHkUsgH3yQYZHI5Eelmczsc+zGS5xsxxuyPfIxzIAJVKACvWTLeI7BED42Qe
	gz1oGaClMqy3cFWWkaIwECCeowU0ITTNZljnn5x2im9caY4FOjZo1
X-Google-Smtp-Source: AGHT+IGQvmjYTTl0GhucF0QR6I1bYlWpK7oC7PkuJOtI9a8EXZsT20GuPKOUWkZMGWMDpdmbn7I/kklXosaBhVGi35k=
X-Received: by 2002:a05:622a:4d88:b0:447:d7fd:63f with SMTP id
 d75a77b69052e-44f84d1c953mr2548941cf.19.1721221794802; Wed, 17 Jul 2024
 06:09:54 -0700 (PDT)
MIME-Version: 1.0
From: Craig Ingram <cjingram@google.com>
Date: Wed, 17 Jul 2024 09:09:43 -0400
Message-ID: <CAHXwHVxp93_7XdjkCGQ6DsV_5RbprkZhfDMmxgUvbMWo49mvFA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000a91af2061d712da8"
Subject: [oss-security] [kubernetes] CVE-2024-5321: Incorrect permissions on Windows
 containers logs

--000000000000a91af2061d712da8
Content-Type: text/plain; charset="UTF-8"

Hello Kubernetes Community,

A security issue was discovered in Kubernetes clusters with Windows nodes
where BUILTIN\Users may be able to read container logs and NT
AUTHORITY\Authenticated Users may be able to modify container logs.

This issue has been rated Medium (
CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:L/A:N
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:L/A:N>),
and assigned CVE-2024-5321.

Am I vulnerable?

Any Kubernetes environment with Windows nodes is affected. Run kubectl get
nodes -l kubernetes.io/os=windows to see if any Windows nodes are in use.

Affected Versions

- kubelet <= 1.27.15

- kubelet <= 1.28.11

- kubelet <= 1.29.6

- kubelet <= 1.30.2

How do I mitigate this vulnerability?

This issue can be mitigated by applying the patch provided. The patch
includes changes to pkg/util/filesystem that set file permissions on
Windows and hardens the permissions for container logs for containers
running on Windows.

Fixed Versions

- kubelet 1.27.16

- kubelet 1.28.12

- kubelet 1.29.7

- kubelet 1.30.3

To upgrade, refer to the documentation:
https://kubernetes.io/docs/tasks/administer-cluster/cluster-upgrade/

Detection

Any Kubernetes environment with Windows nodes is affected. Run kubectl get
nodes -l kubernetes.io/os=windows to see if any Windows nodes are in use.

If you find evidence that this vulnerability has been exploited, please
contact security@kubernetes.io

Additional Details

See the GitHub issue for more details:
https://github.com/kubernetes/kubernetes/issues/126161

Acknowledgements

This vulnerability was reported by Paulo Gomes <https://github.com/pjbgf>
from SUSE.

The issue was fixed and coordinated by the fix team:

Mark Rossetti @marosset

James Sturtevant @jsturtevant

Craig Ingram @cji

Rita Zhang @ritazh

and release managers:

Sascha Grunert @saschagrunert

Jeremy Rickard @jeremyrickard

Carlos Panato @cpanato

Jim Angel @jimangel

Thank You,

Craig Ingram on behalf of the Kubernetes Security Response Committee

--000000000000a91af2061d712da8--
