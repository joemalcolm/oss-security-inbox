X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/19/2
Message-ID: <CAHxebFY2NJp4BMVA6ed-G=E_SPjSTJ3mcpXm+BJHc+4-CzuHSw@mail.gmail.com>
Date: Thu, 18 Jun 2026 16:50:52 -0700
From: Samuel Karp <sam@...uelkarp.com>
To: oss-security@...ts.openwall.com
Subject: [containerd] Patch releases addressing CVE-2026-50195, CVE-2026-53488, CVE-2026-53492, CVE-2026-53489, and CVE-2026-47262
Content-Type: text/plain; charset=utf-8

Hello,

Patch releases of containerd are now available at
https://github.com/containerd/containerd/releases which address the
following CVEs:

CVE-2026-50195 (Critical) -
https://github.com/containerd/containerd/security/advisories/GHSA-cvxm-645q-p574
containerd's CRI checkpoint import process contains a vulnerability
where it fails to validate the image references specified within a
checkpoint image's configuration. An attacker with permissions to
create pods can use a crafted checkpoint image to force containerd to
pull a malicious image and assign it an arbitrary local tag, thereby
poisoning the node's local image cache. Subsequently, if other pods on
the same node attempt to use the poisoned tag with an IfNotPresent (or
Never) pull policy, they will unknowingly execute the attacker's
malicious image instead of the legitimate one. This can lead to a
compromise of the affected pods, allowing the attacker to execute
arbitrary code under the victim pod's identity.

This bug has been fixed in the following containerd versions:
2.3.2
2.2.5
2.1.9

Users should update to these versions to resolve the issue.

The containerd project would like to thank Henry Beberman (@hbeberman)
of Microsoft, the GKE Security Team using Gemini, Anthropic Research,
in collaboration with Claude, and Robert Prast (@robertprast) who
independently discovered and responsibly disclosed this issue in
accordance with the containerd security policy.

CVE-2026-53488 (Critical) -
https://github.com/containerd/containerd/security/advisories/GHSA-xhf5-7wjv-pqxp
A bug was found in containerd where the CRI plugin propagates labels
from an image config (LABEL instruction in Dockerfile) to a container
without validation. This may result in executing an arbitrary command
on the host, via a plugin that consumes container labels for some
operations.

This bug has been fixed in the following containerd versions:
2.3.2
2.2.5
2.1.9
2.0.10
1.7.33

Users should update to these versions to resolve the issue.

The containerd project would like to thank Anthropic Research, in
collaboration with Claude, the GKE Security Team using Gemini, and
Robert Prast (@robertprast) for independently discovering and
responsibly disclosing this issue in accordance with the containerd
security policy.

CVE-2026-53492 (Critical) -
https://github.com/containerd/containerd/security/advisories/GHSA-33vj-92qq-66hc
containerd's CRI implementation improperly trusts Container Device
Interface (CDI) annotations found within untrusted checkpoint image
metadata during container restoration. When restoring a container from
a checkpoint, containerd preserves CDI-related annotations from the
checkpoint archive rather than relying solely on the pod's create-time
specification. This allows a user with pod creation permissions to
bypass standard Kubernetes resource allocation and device plugin
enforcement, injecting arbitrary CDI edits (such as device nodes and
host mounts) into the restored container. Successful exploitation
requires that the node has CDI enabled and contains a matching host
CDI specification for the requested device; environments where CDI is
disabled or lacking sensitive device specifications are not affected.

This bug has been fixed in the following containerd versions:
2.3.2
2.2.5
2.1.9

Users should update to these versions to resolve the issue. Recreating
existing containers restored from untrusted checkpoints may be
necessary to remove smuggled configuration.

The containerd project would like to thank Robert Prast (@robertprast)
for responsibly disclosing this issue in accordance with the
containerd security policy.

CVE-2026-53489 (High) -
https://github.com/containerd/containerd/security/advisories/GHSA-rgh6-rfwx-v388
A bug was found in containerd where the CRI plugin restores
container.log from a checkpoint image without validating a symlinked
path. This could result in reading an arbitrary file on the host via
kubectl logs.

This bug has been fixed in the following containerd versions:
2.3.2
2.2.5
2.1.9

Users should update to these versions to resolve the issue.

The containerd project would like to thank @gouldnicholas and
@davidrxchester, Yuming Zhang and Song Li of Zhejiang University,
Sangwon Ryu (@sangwon090), Henry Beberman (@hbeberman) of Microsoft,
the GKE Security Team using Gemini, Anthropic Research, in
collaboration with Claude, Robert Prast (@robertprast),
Kyle Elliott (@kyle-elliott-tob) of Trail of Bits, and Zhenchen Wang
(@Plucky923), who independently discovered and responsibly disclosed
this issue in accordance with the containerd security policy.

CVE-2026-47262 (Moderate) -
https://github.com/containerd/containerd/security/advisories/GHSA-jpcc-p29g-p8mq
A vulnerability in containerd allows a maliciously crafted image to
cause a Denial of Service (DoS) condition. When creating a container
from this image, memory exhaustion occurs, leading to an Out Of Memory
(OOM) kill of the containerd process. This renders the container
runtime API unavailable and can disrupt clients such as the Docker
Engine or Kubernetes control-plane components.

This bug has been fixed in the following containerd versions:
2.3.2
2.2.5
2.1.9
2.0.10
1.7.33

Users should update to these versions to resolve the issue.

The containerd project would like to thank Jakub Ciolek (@jake-ciolek)
at AlphaSense and Kyle Elliott @ Trail of Bits who independently
discovered and responsibly disclosed this issue in accordance with the
containerd security policy.

containerd security policy:
https://github.com/containerd/project/blob/main/SECURITY.md

If you have any questions or comments about these advisories:
* Open an issue in containerd:
https://github.com/containerd/containerd/issues/new/choose
* Email us at security@...tainerd.io

To report a security issue in containerd:
* Report a new vulnerability:
https://github.com/containerd/containerd/security/advisories/new
* Email us at security@...tainerd.io

On behalf of the containerd project,
Samuel Karp
