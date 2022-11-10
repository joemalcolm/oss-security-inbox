Received: (qmail 10003 invoked by uid 550); 10 Nov 2022 17:30:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5175 invoked from network); 10 Nov 2022 17:26:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/h/ezgUkHPb53qBEpxeEiHpCMemPKV1skCjnRGkwHLE=;
        b=f5WaTzvol8lAB/nLVMFTHrGzQsnftFrycQ52u2BHVg4deoycfbiaWGMxkMlJHI0fXY
         VSpqbVMFXgvSGtCtJM4cXG5OerRfyLndgmFlWRA0zDa97aDS8e7qW9/dvh3mTZPGYkuY
         D2LB3iCtzqT0ABCCGYtFE3N95yoTULnueDil5hMJsWOw3j0bkS+D3OrEdMOaYjZgeJeT
         M9v3e7wOHgVonWEZ8PNx4eKOAgeorywCxB9qwE1x85PWexoKHRtqT/SzzVlGRgS8cWWG
         EhBuW50Lf8xoTPuhxZVJMlnTLmCWNLZ33iRM+4js1MBYWfA/rPehC4m5Aq/R1YScr35b
         Ybng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/h/ezgUkHPb53qBEpxeEiHpCMemPKV1skCjnRGkwHLE=;
        b=ekxKZMHM2ViCLF42ZL+hZhSXFEdreKJG2nWe/yEMJR9fh4h8M4M3b7UjiTfDTTXpND
         s6I/5ss4/yAmCQNjXLIHDb0hyUtzbhq4/j3diniSjODU/7YuQDDtwXtXdIqcD+lCrAHl
         l/kDYsK1ZQdAcr+RV3kIxOvqUKGi25uZk5ogClF8etHufB35jKo0BLTKyxenTzkNiNVE
         dbofL6wZutAtDtwDTcsQ6zIgKSxrIzEO9S6hVICeKtdTR9UYGgG+2d1gtN2TCRl3S1Xr
         P6/nDtF73Znx0Zg5AotjKhcNk8TaKzx6R+M9lRlSWn6NwfoDJ5EB/1ZbxW4lhR6qMNd6
         31Kg==
X-Gm-Message-State: ACrzQf30M3sxQyUJmrtPAZzXFJxIE8Wr8xImjeNusyiSOxJkCKHUHRs3
	v+L8Q4I8IvHIFLzQp3c4oZYokY0T1+KhsS/qKv7AfkSUwbM=
X-Google-Smtp-Source: AMsMyM7UXhi7c1cPS7mZqV3yaNXMd4o+/sMBMA4Xn7ArAj/dX9yCi0ZAPYcnNe/AnS4F+hnoV300tOcEgXHnOXBl0EU=
X-Received: by 2002:a17:907:9546:b0:7ad:4a55:5e19 with SMTP id
 ex6-20020a170907954600b007ad4a555e19mr3351731ejc.65.1668101172991; Thu, 10
 Nov 2022 09:26:12 -0800 (PST)
MIME-Version: 1.0
From: Tim Allclair <timallclair@gmail.com>
Date: Thu, 10 Nov 2022 09:25:36 -0800
Message-ID: <CALXpagykvZnnXHHPk6DP6O_qX5O=TBQK6_j-vO5ZFot5HY1NsQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000dd9c8705ed2111ab"
Subject: [oss-security] [kubernetes] CVE-2022-3162: Unauthorized read of Custom Resources

--000000000000dd9c8705ed2111ab
Content-Type: text/plain; charset="UTF-8"

Hello Kubernetes Community,

A security issue was discovered in Kubernetes where users authorized to
list or watch one type of namespaced custom resource cluster-wide can read
custom resources of a different type in the same API group without
authorization.

This issue has been rated Medium (
CVSS:3.0/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:N/A:N
<https://www.first.org/cvss/calculator/3.0#CVSS:3.0/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:N/A:N>),
and assigned CVE-2022-3162
Am I vulnerable?

Clusters are impacted by this vulnerability if all of the following are
true:

   1.

   There are 2+ CustomResourceDefinitions sharing the same API group
   2.

   Users have cluster-wide list or watch authorization on one of those
   custom resources.
   3.

   The same users are not authorized to read another custom resource in the
   same API group.

Affected Versions

   -

   Kubernetes kube-apiserver <= v1.25.3
   -

   Kubernetes kube-apiserver <= v1.24.7
   -

   Kubernetes kube-apiserver <= v1.23.13
   -

   Kubernetes kube-apiserver <= v1.22.15

How do I mitigate this vulnerability?

Upgrading the kube-apiserver to a fixed version mitigates this
vulnerability.

Prior to upgrading, this vulnerability can be mitigated by avoiding
granting cluster-wide list and watch permissions.
Fixed Versions

   -

   Kubernetes kube-apiserver v1.25.4
   -

   Kubernetes kube-apiserver v1.24.8
   -

   Kubernetes kube-apiserver v1.23.14
   -

   Kubernetes kube-apiserver v1.22.16

These releases will be published over the course of today, November 10th.
Detection

Requests containing `..` in the request path are a likely indicator of
exploitation. Request paths may be captured in API audit logs, or in
kube-apiserver HTTP logs.

If you find evidence that this vulnerability has been exploited, please
contact security@kubernetes.io
Additional Details

See the GitHub issue for more details:
https://github.com/kubernetes/kubernetes/issues/113756
Acknowledgements

This vulnerability was reported by Richard Turnbull of NCC Group as part of
the Kubernetes Audit.

Thank You,

Tim Allclair on behalf of the Kubernetes Security Response Committee

--000000000000dd9c8705ed2111ab--
