X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/23/35
Message-ID: <CABrZYSD08f1N_+vWmHBsrUfr7dpNpXEUME2ZWpi0zCu1_4HY1A@mail.gmail.com>
Date: Wed, 23 Sep 2026 16:09:01 -0700
From: Nathan Herz <nathan.herz97@...il.com>
To: oss-security@...ts.openwall.com
Subject: [kubernetes] CVE-2026-2270: StatefulSet and ControllerRevision write permissions allow cross-namespace pod creation
Content-Type: text/plain; charset=utf-8

Hello Kubernetes Community,

A confused deputy attack exists in the StatefulSet controller that allows a
user with namespace-scoped write permissions on StatefulSet and
ControllerRevision objects to create a cross-namespace pod. An attacker
exploiting this vulnerability would have full control over the resulting
pod’s metadata and specification, including namespace selection. Note that
the cross-namespace pod will be immediately deleted by the garbage
collector unless the attacker is able to construct a valid StatefulSet
OwnerReference. This would require referencing the UID of an existing
StatefulSet in the victim’s namespace.

This issue has been rated Medium (5.9)
CVSS:3.1/AV:N/AC:H/PR:H/UI:N/S:U/C:H/I:H/A:N
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:H/PR:H/UI:N/S:U/C:H/I:H/A:N>,
and assigned CVE-2026-2270.

Affected Versions

   -

   kube-controller-manager: <= v1.34.11
   -

   kube-controller-manager: <= v1.35.8
   -

   kube-controller-manager: <= v1.36.4
   -

   kube-controller-manager: = v1.37.0

How do I mitigate this vulnerability?

This issue can be mitigated by upgrading to a fixed kube-controller-manager
version. The fixed versions are patched to ensure that only the spec field
in StatefulSets will be restored from ControllerRevisions.

Fixed Versions

   -

   kube-controller-manager: >= v1.34.12
   -

   kube-controller-manager: >= v1.35.9
   -

   kube-controller-manager: >= v1.36.5
   -

   kube-controller-manager: >= v1.37.1

If you find evidence that this vulnerability has been exploited, please
contact security@...ernetes.io.

Additional Details

See the GitHub issue for more details:
https://github.com/kubernetes/kubernetes/issues/142097

Acknowledgements

This vulnerability was reported by ImanOracle.

The issue was fixed and coordinated by:

Maciej Szulik @soltysh

Filip Křepinský @atiratree

Verónica López @Verolop

Jeremy Rickard @jeremyrickard

Nathan Herz @natherz97

Thank you,

Nathan Herz on behalf of the Kubernetes Security Response Committee

