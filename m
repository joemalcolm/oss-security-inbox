Received: (qmail 31916 invoked by uid 550); 19 Mar 2026 18:05:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13800 invoked from network); 19 Mar 2026 17:46:15 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1773942365; cv=none;
        d=google.com; s=arc-20240605;
        b=O0xX/IM0Y+LCv71hjoup598slGFgpG/bKKLwuWywd8wmztPUnzjS3JXbJvfS0AO8DC
         hhM+nVSjQqmEj0qxSP3TjF5R7ez6itw4yVJRD+f24esLFtd5h+D0SyqlLF4fjaopbWFm
         ML71sO1zpq9JzeA4Ia25yBqNNRplqdX/Zw45QVCmCcsCZDC993+5UVQpP/Vr3wJOOOXB
         HnRkOvoKqyzhiKzXjU61mldumOV8tZWPuS6IuBN+VZT1FH1mO/7ZsrXGJ2+tF9UssDXu
         POB9Fqx9lgOhdCxEtLPeC+2YFvFmhhSKQN6XXJ2VsRkY6VnrGznbgdVmTctntpR50MEo
         GOng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=4bqpG2wlAiaekjc6m9G6qe5xWqq1hPvziZUi6VI48Uo=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=c8w3yZmvawqyTBUmq4NjJNlLeKeZ9ubApFiemyY1UqCZbhoO3k1dVt+5Bnn66m0GuY
         LuuSUe+yrrp1jLIerWDzAU8Q0MAUVt3SmoXenyufFiwkcbya9+P9JClIn6M//oq6f/mv
         gWj1dtWx7vVXzx6qRW/I1NHDaj9obdUB9uOnCk1FI1++f8pe4pMvue92N9tvjjqeE2Do
         FP0pQztG1fyyT33VUfcu2QyyRjXmBbawJTwGCa8VdndEXZaA/46brQUBGFTLg2OXi6yY
         i14HXA7RlZgYzMeHHGSzQVkxaWyOU8qmfRbmD1edHLgp8uc5cDSNcYF/GcPVl0psWdqP
         He6g==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773942365; x=1774547165; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=4bqpG2wlAiaekjc6m9G6qe5xWqq1hPvziZUi6VI48Uo=;
        b=VEK4wrK88F+Dk6+xQr5HvmTS9fDgtWv5/jkd8dNs8BMmExSTLb6O+DhUnlSBfgFiGE
         SK1AyoD9Vbd9iU3g2F/apwEUHbjaSe7fpQ+4AgXsu7AZjj0g+Ja3P7SlJvl6vGI8LPeZ
         G5Axvqgu41W9Dq4xY57xbPb6Fjj2Evd+fgweFVEYyyTqkvbroHyiVSVSjhtrDFoVhOJ9
         FP36YsYm5EsDeyEPP/FBCNfbefmU6dkHkJw/r0HIsHsorlT3n57qq9fVRrAvn6+0dzmD
         +TomaHjo9mfN0a5aiWSU/Rl/OW9lir6f3r237VbdQm/VgkO26n2ziAoc72IZ2sGICGPZ
         h/bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773942365; x=1774547165;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4bqpG2wlAiaekjc6m9G6qe5xWqq1hPvziZUi6VI48Uo=;
        b=ntyrFlspVXnx7Dn1Ga98hKejItdZWOLeGKsjXrMCAT/Lgtht9Yvsqc1FPHG6LX11qa
         O4icf634fkeb169x0MiVl8rVYCHHrFfAYaoB4gvtzK6bf3NKp8F3G170Tonx54AttB7u
         maZ1uQhRYw2c0WubRbgV0ZNBaKVAtxgN/Lkdd5G69hzWv893TnmZGEg9/sXeAwmzDp76
         TAfayT7GdbYv9sCs0f2Mv1q7EPB4tfOZAdT1e1Bxt0X6F9Yha4RVVdiYfQWpTtl6nvRq
         hncb7LhX73AwXSg/kRXdLm92BQK9wFPXT9eugaDoI5LPBPGcsW2xS/IQcviaJTy6ZE3h
         1lFA==
X-Gm-Message-State: AOJu0Yz94fJcCz0NozjTq8pOGjBiQ7ci4AjHeEPlF2JsNIsTSNVUMPDW
	hhpj9CU1vDws/rEu9FfojUD7Jq4VqK+CTNEeMV+11ohpf7aibQ6VNVF7qOb3m7XJX1cPjDLSYcQ
	2K73ryOvFHJNn/++8/shEWD3H2RsNCUqFOXt3
X-Gm-Gg: ATEYQzxep6p5vIQpX2FG2qyNgX3A3jwIM7S8G1PLT25b7Ty6rmDlkzyMBifoHCMD7OJ
	ojKMkF6eu70NaPboiy0jYSxfyS6q1Vol5wKU+i6N9nS6ZdX7Dn0bKNvvVoxK2GSnBjo9eM9Iqjr
	sLfxgy9/EVxSPQagmgcI3FzjnhsKdvMZRp9FP+UUgVXaqTnRoIVN+jzrZjGYuu13E28H2e2e8nE
	0E9moz1t9u8wKzWj7xOxfE8S7DtKM2mwl1ap+87jNzhTVeLmAL5ji+WY6DS1/ydjR9ZjJx9ZpB3
	4+LkUhbz
X-Received: by 2002:a05:6102:a50:b0:5ff:b684:f796 with SMTP id
 ada2fe7eead31-602aeb09162mr223828137.13.1773942364853; Thu, 19 Mar 2026
 10:46:04 -0700 (PDT)
MIME-Version: 1.0
From: Tabitha Sable <tabitha.c.sable@gmail.com>
Date: Thu, 19 Mar 2026 12:45:53 -0500
X-Gm-Features: AaiRm5161sG2qKyATgLZi61E4T3zVNmS1O80Ys_-kvcEjQZRM0OEPqtGvhQ2lhI
Message-ID: <CAM62SmJRKAr8ScvbmEhqTu--H+3irM2imtcu==w=jktXh=m0Sw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000008259e0064d6424ec"
Subject: [oss-security] [kubernetes] CVE-2026-4342: ingress-nginx comment-based nginx
 configuration injection

--0000000000008259e0064d6424ec
Content-Type: text/plain; charset="UTF-8"

Hello Kubernetes Community,

A security issue was discovered in ingress-nginx where a combination of
Ingress annotations can be used to inject configuration into nginx. This
can lead to arbitrary code execution in the context of the ingress-nginx
controller, and disclosure of Secrets accessible to the controller. (Note
that in the default installation, the controller can access all Secrets
cluster-wide.)

This issue has been rated **HIGH** ([CVSS calculator](
https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H),
score: 8.8), and assigned **CVE-2026-4342**

### Am I vulnerable?

This issue affects ingress-nginx. If you do not have ingress-nginx
installed on your cluster, you are not affected. You can check this by
running `kubectl get pods --all-namespaces --selector
app.kubernetes.io/name=ingress-nginx`.

#### Affected Versions

- ingress-nginx: < v1.13.9
- ingress-nginx: < v1.14.5
- ingress-nginx: < v1.15.1

### How do I mitigate this vulnerability?



#### Fixed Versions

- ingress-nginx: v1.13.9
- ingress-nginx: v1.14.5
- ingress-nginx: v1.15.1

#### How to upgrade?

To upgrade, refer to the documentation: [Upgrading Ingress-nginx](
https://kubernetes.github.io/ingress-nginx/deploy/upgrade/)

### Detection

Suspicious data within the `rules.http.paths.path` field of an Ingress
resource could indicate an attempt to exploit this vulnerability.

If you find evidence that this vulnerability has been exploited, please
contact security@kubernetes.io

See the GitHub issue for more details:
https://github.com/kubernetes/kubernetes/issues/137893

#### Acknowledgements

This vulnerability was reported by wooseokdotkim.

Thank You,

Tabitha Sable on behalf of the Kubernetes Security Response Committee

--0000000000008259e0064d6424ec--
