Received: (qmail 5439 invoked by uid 550); 23 Aug 2023 17:30:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24331 invoked from network); 23 Aug 2023 14:38:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692801474; x=1693406274;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=efwDiGLfphlqhZevdgpbx5TngSe7EpHb/CZ+cL+fXo8=;
        b=kcUh/fUY7aSUSUm2MbQqmXXxN7OgCFkAAsnZhAxLx+E9EJDLNWL+APM67mU2rKAlij
         1tXJt/CotLeof3zhlMLRl6Hjv91x+z/ay7TMN41DnBpwH+UWvduH25N4bLEN4s6UQZk4
         qykmOO0mbuOIUvtb+O9B8xfPZ2Ee4HtoXFQPWlb4oRtHiZKCRfCQl0Po4/9NbN7GT/Rn
         wyqSs6miJx/4mIP52GYJPTb5bolT78hkj6kLVeRFkXUNS3VCqkXurCuRBm9AwvbTc4iN
         ePJ7K4SJF7lOvkL2d0bbcvqvWAXaNRpXcP71R3zz23xLuVBtacq2a9iy2PvyQwZ7EHUG
         GJhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692801474; x=1693406274;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=efwDiGLfphlqhZevdgpbx5TngSe7EpHb/CZ+cL+fXo8=;
        b=ZznA7XG8wsPNjhfhziESWTNfR5IVKarc5fuGBxK5CbD/AvO6jeHCf3WtbCgCflo5S1
         dVDRPaqx4RSBwhICxOBRTZ+YYVLVb0bu3hFtc3978WVna14F8/Ai8oC3Unucx34zjVIl
         Eoa7Mv8b6uDyqNqWyJUc5x2A2g73MXQ4ORSjivP9IhP3YMCowb05agXSWJVgtblkJv0p
         duenS8AV8MyGiQKfal0yrzptuVvTbcAwUpT9GllqBa3yUc5ejWndLF2Eatvurhm/m/oi
         9ybqF60+G5GDZfeRtd4lbukgt2oouuOrNOHEvffxc77fe84pyCowbJPEYKRz0MWvCOjj
         xd1Q==
X-Gm-Message-State: AOJu0YzxZiYfTwr1RbqsKWO24BYH2xZrpS87zfQz3jOjoNhOumQLYmlk
	IZtS7xZK6a0XqEQHsIbTmZhA1b/tfEuuXOKDCn2U9yQ/Y34=
X-Google-Smtp-Source: AGHT+IFnpsE4M9moiJXQjye2Gh++Os3DkhmpDd53yZFYkqY9D6p8u9GLIYBtFuBJgfZB++6xF+QPbQNjWdlmUekfipE=
X-Received: by 2002:a0d:d7c5:0:b0:592:264c:a88c with SMTP id
 z188-20020a0dd7c5000000b00592264ca88cmr7569005ywd.18.1692801474092; Wed, 23
 Aug 2023 07:37:54 -0700 (PDT)
MIME-Version: 1.0
From: Rita Zhang <rita.z.zhang@gmail.com>
Date: Wed, 23 Aug 2023 07:37:43 -0700
Message-ID: <CAL7+V1wuchRgyUhLms8r-cqR42OSn6G0R2GqJZy2sfHDSrU0uQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000089e2820603980e29"
Subject: [oss-security] [kubernetes] CVE-2023-3893: Insufficient input sanitization on
 kubernetes-csi-proxy leads to privilege escalation

--00000000000089e2820603980e29
Content-Type: text/plain; charset="UTF-8"

Hello Kubernetes Community,

A security issue was discovered in Kubernetes where a user that can create
pods on Windows nodes running kubernetes-csi-proxy may be able to escalate
to admin privileges on those nodes. Kubernetes clusters are only affected
if they include Windows nodes running kubernetes-csi-proxy.

This issue has been rated ***HIGH*** (
CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H>
-
8.8
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H>),
and assigned **CVE-2023-3893**

*Am I vulnerable?*

Any kubernetes environment with Windows nodes that are running
kubernetes-csi-proxy is impacted.  This is a common default configuration
on Windows nodes.  Run `kubectl get nodes -l kubernetes.io/os=windows`
<http://kubernetes.io/os=windows> to see if any Windows nodes are in use.

*Affected Versions*

- kubernetes-csi-proxy <= v2.0.0-alpha.0

- kubernetes-csi-proxy <= v1.1.2

*How do I mitigate this vulnerability?*

The provided patch fully mitigates the vulnerability and has no known side
effects.  Full mitigation for this class of issues requires patches applied
for CVE-2023-3676, CVE-2023-3955, and CVE-2023-3893.

Outside of applying the provided patch, there are no known mitigations to
this vulnerability.

*Fixed Versions*

- kubernetes-csi-proxy v2.0.0-alpha.1

- kubernetes-csi-proxy v1.1.3

These releases will be published over the course of today, August 23rd,
2023.

To upgrade: cordon the node, stop the associated Windows service, replace
the csi-proxy.exe binary, restart the associated Windows service, and
un-cordon the node.  See the installation docs for more details:
https://github.com/kubernetes-csi/csi-proxy#installation

If a Windows host process daemon set is used to run kubernetes-csi-proxy
such as
https://github.com/kubernetes-csi/csi-driver-smb/blob/master/charts/latest/csi-driver-smb/templates/csi-proxy-windows.yaml,
simply upgrade the image to a fixed version such as
ghcr.io/kubernetes-sigs/sig-windows/csi-proxy:v1.1.3

*Detection*

Kubernetes audit logs can be used to detect if this vulnerability is being
exploited. Pod create events with embedded powershell commands are a strong
indication of exploitation.

If you find evidence that this vulnerability has been exploited, please
contact security@kubernetes.io

*Additional Details*

See the GitHub issue for more details:
https://github.com/kubernetes/kubernetes/issues/119594

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

Mauricio Poppe @mauriciopoppe

Thank You,

Rita Zhang on behalf of the Kubernetes Security Response Committee

--00000000000089e2820603980e29--
