Received: (qmail 3469 invoked by uid 550); 23 Aug 2023 17:30:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24301 invoked from network); 23 Aug 2023 14:38:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692801473; x=1693406273;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=fby/o7+R+dLVKWDff1K/+zo5HjIoR+kwdYioALBWseQ=;
        b=L2ju5Kqn9ds8F34iP6380ssVpZxnS+9fJK83UruWiDi4yDVZ1/QX3mfzM+RUzcI/5l
         kM6Q2U/3mjCSyNIIEE3LFyDXpaR+cAfNrpmmVD3IzLIAInI7Q1OHDXBvzYavlUblDxQJ
         BFIFqKUVNE0XuG8H0ayV4x4tpVhGX+xzMLZghSd8AIDmfemfthtaA2CIszxEbB8KRRCx
         VpGlCsa6e0m8Yc/2SLCx1O8w6uHDPZw/ovcyTgW2X5iOjGHn0OyoLUyuv1Ja0bz7IdoW
         Kd3xZF0/KaZ2TSeahAAxzzLRXrC7p2k71qZ+V7HoCCopghYSb6rU5Vf4kcyTdZ8/vUvs
         6i2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692801473; x=1693406273;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fby/o7+R+dLVKWDff1K/+zo5HjIoR+kwdYioALBWseQ=;
        b=Lqkz+Ixs52aY+0yyW49XEzh7FhhDFPOzR0R51N8Cuzs+BbdRyZc3NJvrGzplWmCwil
         SkM71bLPBQ1WKh4XLHK3C77wMI02wcxzdUfpUURstexk//aJw3qgVmj+9WKkX/qTQ8iN
         Av9+roNGWCwf76Kp2DK1quCBgOrNsmRWZQ4QWgE8YfD9BK/9/a281KITv4Eqi1F72SWl
         +6lRt0pMldor0AimgigPLi+HmTX+yB2bMooneGvopIWSuEXN4P7HqN5/UkYNy3Dbt0IM
         qgW5+v5ZpJoqvaNhDBP+Pi77WDTO/3Kx5ABqwpmWciH820hYd4D4aklHm5NZYgDC9l63
         wbeQ==
X-Gm-Message-State: AOJu0YyKQshMtBbWmubZ0gYiPW5rzZHQ0s9uifvsX2HRZ+hKxIC9ug9l
	xkyfE2pijKlMdCSPoIrfNGQQJ/nVitGbrUuo4ZrlL870/sw=
X-Google-Smtp-Source: AGHT+IF9Mw+wV1cYNxOkqTrvtO+mS+59yDN3QtHwvbWuxkzDs08MzuXKyZoLVdsJiAKWwPPS8rsdUdh8hDu68NhY980=
X-Received: by 2002:a0d:ea14:0:b0:58c:9651:8f with SMTP id t20-20020a0dea14000000b0058c9651008fmr13774109ywe.10.1692801472981;
 Wed, 23 Aug 2023 07:37:52 -0700 (PDT)
MIME-Version: 1.0
From: Rita Zhang <rita.z.zhang@gmail.com>
Date: Wed, 23 Aug 2023 07:37:42 -0700
Message-ID: <CAL7+V1zmb66gKzeQUe9qzJ1MVVn=ua2JEfY-_jiMk8zJ-+K+zw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000078ff040603980e5b"
Subject: [oss-security] [kubernetes] CVE-2023-3955: Insufficient input sanitization on
 Windows nodes leads to privilege escalation

--00000000000078ff040603980e5b
Content-Type: text/plain; charset="UTF-8"

Hello Kubernetes Community,

A security issue was discovered in Kubernetes where a user that can create
pods on Windows nodes may be able to escalate to admin privileges on those
nodes. Kubernetes clusters are only affected if they include Windows nodes.

This issue has been rated ***HIGH*** (
CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H>
-
8.8
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H>),
and assigned **CVE-2023-3955**

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

The provided patch fully mitigates the vulnerability (see fix impact
below).  Full mitigation for this class of issues requires patches applied
for CVE-2023-3676, CVE-2023-3955, and CVE-2023-3893.

Outside of applying the patch, there are no known mitigations to this
vulnerability.

*Fixed Versions*

- kubelet v1.28.1

- kubelet v1.27.5

- kubelet v1.26.8

- kubelet v1.25.13

- kubelet v1.24.17

These releases will be published over the course of today, August 23rd,
2023.

***Fix impact:*** Passing Windows Powershell disk format options to in-tree
volume plugins will result in an error during volume provisioning on the
node.  There are no known use cases for this functionality, nor is this
functionality supported by any known out-of-tree CSI driver.

To upgrade, refer to the documentation:

https://kubernetes.io/docs/tasks/administer-cluster/cluster-management/#upgrading-a-cluster

*Detection*

Kubernetes audit logs can be used to detect if this vulnerability is being
exploited. Pod create events with embedded powershell commands are a strong
indication of exploitation.

If you find evidence that this vulnerability has been exploited, please
contact security@kubernetes.io

*Additional Details*

See the GitHub issue for more details:
https://github.com/kubernetes/kubernetes/issues/119595

*Acknowledgements*

This vulnerability was discovered by James Sturtevant @jsturtevant and Mark
Rossetti @marosset during the process of fixing CVE-2023-3676 (that
original CVE was reported by Tomer Peled @tomerpeled92)

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

--00000000000078ff040603980e5b--
