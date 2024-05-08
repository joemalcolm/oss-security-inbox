Received: (qmail 28140 invoked by uid 550); 9 May 2024 10:54:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11942 invoked from network); 8 May 2024 16:03:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715184228; x=1715789028; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1QaYe3HIeoJiAWdGQINtXIVFKsBBDxGWTZ0KYbM50os=;
        b=HBjJDuDLUlCgRfEfvdzd6SkQfACZGfFs9/fgXl8uDWWdXnenHUIcppoG9UBbjvb5F0
         jUJuc2SysO9gRyfUibJW5j7DODG/zbMJi2dUd382aDrmTO2U71Al9C2BSWSMpj6xRqax
         f/29JcZJ4DbeOMLXwXsH7byF3VHMVS0EMKaVLNjgPcmv12xpvl5b6c1t4oE1I1+p6T+x
         5gLjfFcw3brwds0C2D74RrlnaeDcWOsC6IHUeD+Bc17SXojMflsAm53A4r2yTbucrkFz
         64Boo8ELD4karPHtQOj7FEEj2O/42DmYvB3nQ2jCXFb9eBn3p4N9fRmZW2UQEX7a7OC1
         ki9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715184228; x=1715789028;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1QaYe3HIeoJiAWdGQINtXIVFKsBBDxGWTZ0KYbM50os=;
        b=t3rMz2PoZeV4YdRMpHPfNVBIKtx9ii9iiZuEJ5PkYyEJXtbiQL+WfQeA2wa2tOF9hN
         iM0NRCXoF4mk917J7mDh1DTsfmQvItO7OTC6RhiBdOs2gklG+ZPgilHMB1y9WLO9Hpne
         8kqRLtvJtuSh6U/g//m8Dd0ggoUZntj2NYF9OvlSdHZlDJDagaodBbGWoo3+MgNHd4w5
         0PioNnQDfHfl4sL46+iuyVu9vSLGKhk6CTdYyyvUsGtX4aUA1MQz38+wo+EHZK73692I
         OT1keiiHEySKL/xss3YsuKDJuIDRaEecRGMfcelu81Stki6SQ9y1XCD+pvJ0Yu/JWWkT
         Du/g==
X-Gm-Message-State: AOJu0YyrwfhGPzYnvsfiasC4Y2hYulLzBO3A7Muax6HlS6oyoltNhW9w
	Kv1HyB5wb+jL+0uTZlDj4yiNQYG4+3TDBb6IupBSz3UYe8dHg9yrm70lEOYCd5tq/yvg0BQ8T3j
	uZy27NRN0y/TCKBU1JrHYGklXH+g1wSxu
X-Google-Smtp-Source: AGHT+IHvX/Jc0Qee4IBJdBNGrdqE6uI3ikIaV87Nlfp9SbueCYJyUXanJ0Eqw0jkjpot5QGe+zxX/HX2eMZVj+ww010=
X-Received: by 2002:a25:155:0:b0:dbd:120e:f337 with SMTP id
 3f1490d57ef6-debb9db37cemr3101976276.30.1715184224601; Wed, 08 May 2024
 09:03:44 -0700 (PDT)
MIME-Version: 1.0
From: Rita Zhang <rita.z.zhang@gmail.com>
Date: Wed, 8 May 2024 09:03:33 -0700
Message-ID: <CAL7+V1ymsmvoS_FZoWaEVrCtY4qXyErzT1L+x+oe2VXpS7haGw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000006e8d820617f372d1"
Subject: [oss-security] [kubernetes] CVE-2024-3744: azure-file-csi-driver discloses service
 account tokens in logs

--0000000000006e8d820617f372d1
Content-Type: text/plain; charset="UTF-8"

Hello Kubernetes Community,

A security issue was discovered in azure-file-csi-driver where an actor
with access to the driver logs could observe service account tokens. These
tokens could then potentially be exchanged with external cloud providers to
access cloud resources.  Tokens are only logged when TokenRequests is
configured in the CSIDriver object
<https://kubernetes-csi.github.io/docs/token-requests.html> and the driver
is set to run at log level 2 or greater via the -v flag.

This issue has been rated **MEDIUM**
CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:H/I:N/A:N
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:H/I:N/A:N>
(6.5), and assigned **CVE-2024-3744**

*Am I vulnerable?*

You may be vulnerable if TokenRequests is configured in the CSIDriver object
<https://kubernetes-csi.github.io/docs/token-requests.html> and the driver
is set to run at log level 2 or greater via the -v flag and you are using
workload identity federation.

To check if token requests are configured, run the following command:

kubectl get csidriver file.csi.azure.com -o jsonpath="{.spec.tokenRequests}"

To check if tokens are being logged, examine the secrets-store container
log:

kubectl logs csi-azurefile-controller-56bfddd689-dh5tk -c azurefile -f |
grep --line-buffered "csi.storage.k8s.io/serviceAccount.tokens"

*Affected Versions*

- azure-file-csi-driver <= v1.29.3

- azure-file-csi-driver v1.30.0

*How do I mitigate this vulnerability?*

Prior to upgrading, this vulnerability can be mitigated by running
azure-file-csi-driver at log level 0 or 1 via the -v flag.

*Fixed Versions*

- azure-file-csi-driver v1.29.4

- azure-file-csi-driver v1.30.1

To upgrade, refer to the documentation:
https://github.com/kubernetes-sigs/azurefile-csi-driver?tab=readme-ov-file#install-driver-on-a-kubernetes-cluster


*Detection*

Examine cloud provider logs for unexpected token exchanges, as well as
unexpected access to cloud resources.

If you find evidence that this vulnerability has been exploited, please
contact security@kubernetes.io

*Acknowledgements*

This vulnerability was patched by Weizhi Chen @cvvz from Microsoft.

Thank You,

Rita Zhang on behalf of the Kubernetes Security Response Committee

--0000000000006e8d820617f372d1--
