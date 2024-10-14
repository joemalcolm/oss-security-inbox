Received: (qmail 28246 invoked by uid 550); 14 Oct 2024 15:42:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1474 invoked from network); 14 Oct 2024 15:24:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1728919485;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=DtRyHHD21/QV9ki6vUgMGnfCzSVB5QPvRTgdepK4oSc=;
	b=XoE0WAjAxrRbM7GmO08GtO/vDt4UAv0Dt0ipnKbgVQmxrbnk0yKIQWAcmMA4LwnBoLbu3t
	6aGxXpBI4peDytWFdQ6LyJuS80olVFoM9ttALRB47G3NZDNaGQ2Q6f/61y3LZHFa+5I0Ga
	Q+W186W+OYbznTBFlZA5k0pl4dKT+GI=
X-MC-Unique: yyjM3gYTN46xjw5EL2varw-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728919481; x=1729524281;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DtRyHHD21/QV9ki6vUgMGnfCzSVB5QPvRTgdepK4oSc=;
        b=M2pFklTVJBA60A65KXHVSH6Wr0JJQRXA/KJcOz/eV2kR56skTJm+V8GJGf4Sdevy+J
         Q2uRq3coduwDdAtf46nU1qOxULJbXw/jofuoiLRFwFJJAUa6m8vd/T2lJrud0SxZDo0I
         j8dG0nF1Ulb/ePOFvy+8aSRl8byCZIgTta7DtAYCScJ5YQtx5LcpbvMxt2jM81BRWtUV
         tedAFsEPkkcI2yRbpi3ChBPAZuJa0yNwAu1VUyIOMGBcBUtdzKb/EQdhEIAMORmU1PV2
         UeycmIlDkLUCSh7XZibzXoTy5g6MV8/78dnlEYsNMdNWscXII6r/t8clJJwzE70BvHrE
         62qw==
X-Gm-Message-State: AOJu0YxJHfCCSWkNB8tLTSIYirMAfkJOL+qVizpvTuaLgRA9WqBisiXd
	uBuBABIvPc0/I645o9W+DL3i2x4JOE92gNuQqSE8XnxtF6OYffnonOWUjutKnlPAc0AxyNCSX4n
	iWB0rt9ip8+gcb/i1oAPFqLgNBdagEJW9kjs9DksIWqM7b/Ake3Hn5rtVgkv1uaDHWgpoNe1zjs
	rIWQzhTzJx0PFAtaEf+5oxSiD7/QWtmbwjZ+2+je13G/dl8rVnyfc=
X-Received: by 2002:a2e:4e02:0:b0:2fb:5810:3403 with SMTP id 38308e7fff4ca-2fb58103bd3mr7885341fa.10.1728919480995;
        Mon, 14 Oct 2024 08:24:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHxBxMmbPgx+7I+U3HKrw/26JoKJ1ce/EYGS5auttR0qlKNxF5/IILHlB3LpZa4BAUShck0Zhoy/pzeydlCDdA=
X-Received: by 2002:a2e:4e02:0:b0:2fb:5810:3403 with SMTP id
 38308e7fff4ca-2fb58103bd3mr7885101fa.10.1728919480308; Mon, 14 Oct 2024
 08:24:40 -0700 (PDT)
MIME-Version: 1.0
From: Joel Smith <joelsmith@redhat.com>
Date: Mon, 14 Oct 2024 09:24:28 -0600
Message-ID: <CAEftUapV2VARqJBVpugRkKX0CPnxz=EYOpPzuAg29aYhHJPzSg@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="0000000000007830770624716fb6"
Subject: [oss-security] [kubernetes] CVE-2024-9486 and CVE-2024-9594: VM images built with
 Kubernetes Image Builder use default credentials

--0000000000007830770624716fb6
Content-Type: text/plain; charset="UTF-8"

Hello Kubernetes Community,

A security issue was discovered in Kubernetes where an unauthorized user
may be able to ssh to a node VM which uses a VM image built with the
Kubernetes Image Builder project (
https://github.com/kubernetes-sigs/image-builder).

For images built with the Proxmox provider, this issue has been rated
Critical (
https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H)
(9.8), and assigned CVE-2024-9486.

For images built with the Nutanix, OVA, QEMU or raw providers, this issue
has been rated Medium (
https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:H/PR:H/UI:R/S:U/C:H/I:H/A:H)
(6.3), and assigned CVE-2024-9594.

Am I vulnerable?

Clusters using virtual machine images built with Kubernetes Image Builder (
https://github.com/kubernetes-sigs/image-builder) version v0.1.37 or
earlier are affected.

CVE-2024-9486: VMs using images built with the Proxmox provider are
confirmed to be vulnerable.

CVE-2024-9594: VMs using images built with the Nutanix, OVA, QEMU or raw
providers were vulnerable during the build process and are affected only if
an attacker was able to reach the VM where the image build was happening
and used the vulnerability to modify the image at the time the image build
was occurring.

VMs using images built with all other providers are not affected.

To determine the version of Image Builder you are using, use one of the
following methods:

* For git clones of the image builder repository:
    cd <local path to image builder repo>

    make version

* For installations using a tarball download:
    cd <local path to install location>

    grep -o v0\\.[0-9.]* RELEASE.md | head -1

* For a container image release:

    docker run --rm <image pull spec> version
  or
    podman run --rm <image pull spec> version

  or look at the image tag specified, in the case of an official image such
as
registry.k8s.io/scl-image-builder/cluster-node-image-builder-amd64:v0.1.37

How do I mitigate this vulnerability?

Rebuild any affected images using a fixed version of Image Builder.
Re-deploy the fixed images to any affected VMs.

Prior to upgrading, this vulnerability can be mitigated by disabling the
builder account on affected VMs:

usermod -L builder

Fixed Versions

Kubernetes Image Builder versions >= v0.1.38

Detection

The linux command "last builder" can be used to view logins to the affected
"builder" account.

If you find evidence that this vulnerability has been exploited, please
contact security@kubernetes.io

Additional Details

See the GitHub issues for more details:

https://github.com/kubernetes/kubernetes/issues/128006

https://github.com/kubernetes/kubernetes/issues/128007

Acknowledgements

This vulnerability was reported by Nicolai Rybnikar @rybnico from Rybnikar
Enterprises GmbH.

The issue was fixed and coordinated by Marcus Noble of the Image Builder
project.

Thank You,

Joel Smith on behalf of the Kubernetes Security Response Committee

--0000000000007830770624716fb6--

