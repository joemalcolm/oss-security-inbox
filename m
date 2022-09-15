Received: (qmail 7228 invoked by uid 550); 15 Sep 2022 22:02:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1095 invoked from network); 15 Sep 2022 21:49:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date;
        bh=qKwdOHCrshvw6xe+mpSAANsytKwdSb4zefX6SBMXBys=;
        b=PgVt2lyJszUu4OyPqminIyoHt9yunzeUMzXQ/34AWEHM1MiOgI/kyAQJbzISF7kS7M
         3bZmPJUAJ9bxCMCntGAJePaRp5KX5kwfueqoskxnwQ5w7pmj4+KHc/BWa9yBjmNZj3XQ
         Tp8jtctaNhII4SLhh3U2N6Md6+LzoDy5IG8DGc4P/vFWGBhcjMZ6QEqbe96dNP/VLbOo
         PksltmPO4XAJXP0pbaK2qcCjGAflLjFNUPNIP/wPvKd3vhIgXZexnBtrzlp6+RC10u8E
         JuwwSf6VtH11/4HssEg1TAO/5nj0pgylT0LGdNJr+x3kZg98Ee2eU3zejAlztf65x6mk
         gnqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date;
        bh=qKwdOHCrshvw6xe+mpSAANsytKwdSb4zefX6SBMXBys=;
        b=X7Vvs9wUec+X0Mw0K9Bfq9gV9r0ls3QyYCwML9l2C9FnbRdUBnOUO4VIbiEfZ+Faap
         YRaZn9ODtQLZmqElntgVIR67j5gT3Alc9a3OfdwFeErN949AQ8kirhx6lH/nWkZLWDE5
         Ho5PvSs9L4m85otpC3T26Y7JFnNf6ELxeRpy2x3k6sUC9sKL8cDZ2uNWjWKnf0vMybP3
         qaF+KNyYDt3x17uIabfYL1RdfQGZ4MoZtci4R2rnpndx1HI+6PJ6XESd2x8gnzbEtjKR
         gZ2gGxsIafeuetvMdkIDv5NqCnQZQEG66nj5L7DzJQYFK6kgYobnNMd16sqlEKYRNdKJ
         eEsQ==
X-Gm-Message-State: ACrzQf330DiUcSrgYk5AC8xTekgKrpcwkmX8YNbSHrsq/S9C9EhtGCsM
	hOngLIGb8MjObcEwRu4+0yi18/paDhX9AAXEmK0HCtQXSjE=
X-Google-Smtp-Source: AMsMyM7crFXwIynk/AlE5zxSIZDWL2b0rT8aIW5ZbAahMq+qqUGX54YBi25ibO5gbmFGK+/I3Suc1vbeyaj0bs7iJd4=
X-Received: by 2002:a05:6214:27ed:b0:4ac:7fd7:7d8b with SMTP id
 jt13-20020a05621427ed00b004ac7fd77d8bmr1422223qvb.129.1663278587417; Thu, 15
 Sep 2022 14:49:47 -0700 (PDT)
MIME-Version: 1.0
From: Pushkar Joglekar <pushkarj.at.work@gmail.com>
Date: Thu, 15 Sep 2022 14:49:36 -0700
Message-ID: <CAGsPOT3VSqGbvGySuZsJ4mkqBb5PApH66VyNrxTPFT2sCPo09Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000005d9a2105e8be39bf"
Subject: [oss-security] [kubernetes] CVE-2021-25749: runAsNonRoot logic bypass for Windows containers

--0000000000005d9a2105e8be39bf
Content-Type: text/plain; charset="UTF-8"

Hello Kubernetes Community,

A security issue was discovered in Kubernetes that could allow Windows
workloads to run as ContainerAdministrator even when those workloads set
the runAsNonRoot option to true .

This issue has been rated low and assigned CVE-2021-25749
<https://hackmd.io/ndl5QD3tTUKqYdO7rfGX7A#Am-I-vulnerable>Am I vulnerable?

All Kubernetes clusters with following versions, running Windows workloads
with runAsNonRoot are impacted.
Affected Versions

   - kubelet v1.20 - v1.21
   - kubelet v1.22.0 - v1.22.13
   - kubelet v1.23.0 - v1.23.10
   - kubelet v1.24.0 - v1.24.4

How do I mitigate this vulnerability?

There are no known mitigations to this vulnerability.
<https://hackmd.io/ndl5QD3tTUKqYdO7rfGX7A#Fixed-Versions>Fixed Versions

   - kubelet v1.22.14
   - kubelet v1.23.11
   - kubelet v1.23.5
   - kubelet v1.25.0

To upgrade, refer to this documentation. *For core Kubernetes:*
https://kubernetes.io/docs/tasks/administer-cluster/cluster-management/#upgrading-a-cluster
Detection

Kubernetes Audit logs may indicate if the user name was misspelled to
bypass the restriction placed on which user is a pod allowed to run as.

If you find evidence that this vulnerability has been exploited, please
contact security@kubernetes.io
Additional Details

See the GitHub issue for more details:
https://github.com/kubernetes/kubernetes/issues/112192
Acknowledgements

This vulnerability was reported and fixed by Mark Rosetti (@marosset)

Thank You,

Pushkar Joglekar on behalf of the Kubernetes Security Response Committee

--0000000000005d9a2105e8be39bf--
