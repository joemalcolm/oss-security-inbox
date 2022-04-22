Received: (qmail 30005 invoked by uid 550); 22 Apr 2022 17:05:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22285 invoked from network); 22 Apr 2022 16:38:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=oU0NvgrDy/khMJzyLPIWf6Fy3yQWXTT5TzIHaF+tr1w=;
        b=cUhCNHTKQo9Lhm6cngyZiJvGgJEy8XGgURIMigk05jdSSPdL4oX7w3/HTlGA0BIcbj
         rDs7v8SwBSTkXUQTvsWaZ9PKsg87VIMEBb+zaBeXrWY/7iqG+hEc3pib9/fzB+D9QUut
         XsYfV2/mkw9D9bDwoHl1XP0vToAygGlcRzCw2BjteIHICvGSLQ6RCIG42e6ivZZGKRz0
         OrXcgRaMzYHeTUuRfABGN6BvcDfp7jHLjnbHlgvI2y3DCbm3fW+OomxueRIeEpjIVOd3
         EBsKitEw6E7Iqi4BDB0aqTQtLAleL3wNY05xfCSTJ5W3bIVaJOdJ8+fGA3hfso/+jj4w
         pafw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=oU0NvgrDy/khMJzyLPIWf6Fy3yQWXTT5TzIHaF+tr1w=;
        b=7xO4b/cKtvclgA/U1b7B7p4FRFNjk4LSdDftCJjxPo8W5lv044IvGpIzAOXOm3Ipqz
         ohP4ddwMcZWIf7jw8eYm7tLMSBWoYERD2D2HspqPIGSqqI8YmIjgMTrNAM7agrTabwsv
         N5zt6TtxxWT65I8LyxoIGzg96XSjv6HQOqgkCvPyCLPB3FzdTQOZ8E+TcOv+MFnvd3bU
         3M2Ry4prup75LKBvRacAcMyMLqgtlrU6h1f8yNsQ8wQwG+KuguzC00DXx4HsC2OhHy/C
         B4xDZAnCpCta8Tp4rMdj5rb48LDgFrXd/Q8DmGCcudchwWs4iyXJMLV8+W33C1DTDGlP
         cEog==
X-Gm-Message-State: AOAM533q1ZoJM+b3uz3lzexpoKxwHpF2Ijou+ZHJQPJWl4E8mcti2uer
	sMPMDEtqoBXrVZ9WKRoJnKD8J9nw+LtbaSCNKv33I85+clc=
X-Google-Smtp-Source: ABdhPJzEcS7R6X22iMrXu1t3TAxNFei7bEbjrRyspCQecSsUnxvrclNRbbPlDyM/hw2aYVmqdC7HzMdJPvpi9dU38/c=
X-Received: by 2002:a81:57c6:0:b0:2f4:d5b6:dc94 with SMTP id
 l189-20020a8157c6000000b002f4d5b6dc94mr5576030ywb.90.1650645473535; Fri, 22
 Apr 2022 09:37:53 -0700 (PDT)
MIME-Version: 1.0
References: <CABdrxGD6zODRKXUuVGgpA-2P-hN_17WerU4f+NZh3ShMPzqfmQ@mail.gmail.com>
In-Reply-To: <CABdrxGD6zODRKXUuVGgpA-2P-hN_17WerU4f+NZh3ShMPzqfmQ@mail.gmail.com>
From: CJ Cullen <cjcullen@google.com>
Date: Fri, 22 Apr 2022 09:37:42 -0700
Message-ID: <CABdrxGCAksdYgwgf4H1-7V6W9yBM=J=_YLoHDCikD5NT-D1OiA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000001a1d7705dd40d960"
Subject: [oss-security] [kubernetes] CVE-2021-25746: Ingress-nginx directive injection via annotations

--0000000000001a1d7705dd40d960
Content-Type: text/plain; charset="UTF-8"

Issue Details

A security issue was discovered in ingress-nginx
<https://github.com/kubernetes/ingress-nginx> where a user that can create
or update ingress objects can use `.metadata.annotations` in an Ingress
object (in the `networking.k8s.io` or `extensions` API group) to obtain the
credentials of the ingress-nginx controller. In the default configuration,
that credential has access to all secrets in the cluster.

This issue has been rated High (CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:L/A:L
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:L/A:L>),
and assigned CVE-2021-25746.
Affected Components and Configurations

This bug affects ingress-nginx. If you do not have ingress-nginx installed
on your cluster, you are not affected. You can check this by running
`kubectl get po -n ingress-nginx`.

Multitenant environments where non-admin users have permissions to create
Ingress objects are most affected by this issue.
Affected Versions

   -

   <v1.2.0

Fixed Versions

   -

   v1.2.0-beta.0
   -

   v1.2.0

Mitigation

If you are unable to roll out the fix, this vulnerability can be mitigated
by implementing an admission policy that restricts the
`metadata.annotations` values to known safe (see the newly added rules
<https://github.com/kubernetes/ingress-nginx/blame/main/internal/ingress/inspector/rules.go>,
or the suggested value for annotation-value-word-blocklist
<https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/configmap/#annotation-value-word-blocklist>
).
Detection

If you find evidence that this vulnerability has been exploited, please
contact security@kubernetes.io
Additional Details

See ingress-nginx Issue #8503
<https://github.com/kubernetes/ingress-nginx/issues/8503> for more details.
Acknowledgements

This vulnerability was reported by Anthony Weems, and separately by
jeffrey&oliver.

Thank You,

CJ Cullen on behalf of the Kubernetes Security Response Committee

--0000000000001a1d7705dd40d960--
