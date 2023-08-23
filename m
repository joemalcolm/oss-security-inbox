Received: (qmail 32687 invoked by uid 550); 23 Aug 2023 17:29:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24265 invoked from network); 23 Aug 2023 14:38:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692801471; x=1693406271;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8Am+3G453BWxkECIQKIaSqP41+YiaQQDPUurWlckhzQ=;
        b=DFRk/8DEksGwJOpCqUUd14VRAsh0AiD6zivxeEWvzHiOcAW3MxadVYWZ9ETUlyfh+z
         3HfaE48aNS/Znu38OqI9gWc5T6SOOcl786oAqLCjNTmc4s9chMdMh8tgOxjJUkWLbtuq
         p2+NBhiTFWkKnVAEgwdafdTfeySdcf6OfVhXyppkwbs7kte8M1huGK5d3Y9YigduVCAc
         hZsUlk7tKX2/gGnnH3NzYlGEq5XSbZ9RzxSc0dJVvUyCLd4Oi1z6Ig3nZUdufcwKt6r5
         6iG6Odv0wj/UFFK2DIl+wOZ7Bdyg8I6HS84UQfFYLlO8rryr48IrFTs4qDvF2QqgKAzl
         Vsng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692801471; x=1693406271;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8Am+3G453BWxkECIQKIaSqP41+YiaQQDPUurWlckhzQ=;
        b=OE+MIv+BuIhQPgSfCCIhOSc5Wi5V4FeWaQm5dv0cm0WPyWKjW7klziAtNUo77PFTJW
         qQS4vAab4UEGIsYzVJQbcOxgkpUpYB/6CDZ30WYNJcKyykgGjVBoJq8kg8A3genQ5z98
         KCXHs+QeI979iX9gWzIngjeILzbGB/bHibkb6iAdZ3kXAMWf8LRsVGYml5FOv6XXcSHc
         k9/vwhzZra4lFEoOuJdDjsopcioGwb63XiNlxywgjsYMbRq7LcXQd32h9v2PGhhLP2/Z
         CeItKBoMZ1BcM0U+zJ/59I1uLBi51WKRByMqt8vgAZbWQ8RAStX9NOJ1mH+g92w40wYP
         eVng==
X-Gm-Message-State: AOJu0YxLBlaPpC33kMwusdwJYBXiLEPhfMMo8ujB/NTL10LHjDwKLDYy
	gWhjTgMebJjpTtiYfV7pa3Rxnp4MP/qL+tUct2jf8rgSoeo=
X-Google-Smtp-Source: AGHT+IGl7itbm6r4VRM79mieYNK1dQAZSS2xdI7JhmExF01VB2D8If9e2c4BEZ6vlcgMnx28/k+cJik4nMwAiUGXpkQ=
X-Received: by 2002:a0d:d7d3:0:b0:589:e713:3752 with SMTP id
 z202-20020a0dd7d3000000b00589e7133752mr14382827ywd.4.1692801471468; Wed, 23
 Aug 2023 07:37:51 -0700 (PDT)
MIME-Version: 1.0
From: Rita Zhang <rita.z.zhang@gmail.com>
Date: Wed, 23 Aug 2023 07:37:40 -0700
Message-ID: <CAL7+V1zrLPQ_GS49OhWOQX0BfMSDoYmQ8a=c0bvRWp3mpqs88A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000061d9020603980e9d"
Subject: [oss-security] [kubernetes] CVE-2023-3676: Insufficient input sanitization on
 Windows nodes leads to privilege escalation

--00000000000061d9020603980e9d
Content-Type: text/plain; charset="UTF-8"

Hello Kubernetes Community,

A security issue was discovered in Kubernetes where a user that can create
pods on Windows nodes may be able to escalate to admin privileges on those
nodes. Kubernetes clusters are only affected if they include Windows nodes.

This issue has been rated ***HIGH*** (
CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H>-
8.8
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H>),
and assigned **CVE-2023-3676**

*Am I vulnerable?*

Any kubernetes environment with Windows nodes is impacted.  Run `kubectl
get nodes -l kubernetes.io/os=windows` <http://kubernetes.io/os=windows> to
see if any Windows nodes are in use.

*Affected Versions*

- kubelet <= v1.28.0

- kubelet <= v1.27.4

- kubelet <= v1.26.7

- kubelet <= v1.25.12

- kubelet <= v1.24.16

*How do I mitigate this vulnerability?*

The provided patch fully mitigates the vulnerability and has no known side
effects.  Full mitigation for this class of issues requires patches applied
for CVE-2023-3676, CVE-2023-3955, and CVE-2023-3893.

Outside of applying the provided patch, there are no known mitigations to
this vulnerability.

*Fixed Versions*

- kubelet v1.28.1

- kubelet v1.27.5

- kubelet v1.26.8

- kubelet v1.25.13

- kubelet v1.24.17

These releases will be published over the course of today, August 23rd,
2023.

To upgrade, refer to the documentation:

https://kubernetes.io/docs/tasks/administer-cluster/cluster-management/#upgrading-a-cluster

*Detection*

Kubernetes audit logs can be used to detect if this vulnerability is being
exploited. Pod create events with embedded powershell commands are a strong
indication of exploitation. Config maps and secrets that contain embedded
powershell commands and are mounted into pods are also a strong indication
of exploitation.

If you find evidence that this vulnerability has been exploited, please
contact security@kubernetes.io

*Additional Details*

See the GitHub issue for more details:
https://github.com/kubernetes/kubernetes/issues/119339

*Acknowledgements*

This vulnerability was reported by Tomer Peled @tomerpeled92

The issue was fixed and coordinated by the fix team:

James Sturtevant @jsturtevant

Mark Rossetti @marosset

Andy Zhang @andyzhangx

Justin Terry @jterry75

Kulwant Singh @KlwntSingh

Micah Hausler @micahhausler

Rita Zhang @ritazh

and release managers:

Jeremy Rickard @jeremyrickard

Thank You,

Rita Zhang on behalf of the Kubernetes Security Response Committee

--00000000000061d9020603980e9d--
