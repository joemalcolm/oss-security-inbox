X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/23/36
Message-ID: <CABrZYSB=Q+qhth0pjLSMJVhTJOVpzp3-oF+AyFuK7RjVJ4GAjw@mail.gmail.com>
Date: Wed, 23 Sep 2026 16:13:08 -0700
From: Nathan Herz <nathan.herz97@...il.com>
To: oss-security@...ts.openwall.com
Subject: [kubernetes] CVE-2026-76654: Subpath symlinking on Windows nodes permits NTLM coercion
Content-Type: text/plain; charset=utf-8

Hello Kubernetes Community,

An NTLM coercion vulnerability exists on Windows nodes when the subPath
supplied in a pod's volumeMounts is set to a symbolic link that points to
an attacker-controlled network share. When a kubelet resolves symlinks, it
does not reject a target that resolves to a UNC path. As a result, the
kubelet will transparently attempt to authenticate to the share using NTLM.

This allows an attacker to obtain the NetNTLMv2 hash of the account under
which the kubelet is running. An attacker could then attempt to crack the
hash to retrieve the corresponding password or relay it to impersonate the
node, if the node is domain-joined.

This issue has been rated Medium (5.8)
CVSS:3.1/AV:N/AC:H/PR:H/UI:N/S:C/C:H/I:N/A:N
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:H/PR:H/UI:N/S:C/C:H/I:N/A:N>,
and assigned CVE-2026-76654.

Affected Versions

   -

   kubelet: <= v1.34.11
   -

   kubelet: <= v1.35.8
   -

   kubelet: <= v1.36.4
   -

   kubelet: = v1.37.0

How do I mitigate this vulnerability?

This issue can be mitigated by upgrading to a fixed kubelet version. The
fixed versions update kubelet to refuse UNC symlink targets on Windows.

Fixed Versions

   -

   kubelet: >= v1.34.12
   -

   kubelet: >= v1.35.9
   -

   kubelet: >= v1.36.5
   -

   kubelet: >= v1.37.1

If you find evidence that this vulnerability has been exploited, please
contact security@...ernetes.io.

Additional Details

See the GitHub issue for more details:
https://github.com/kubernetes/kubernetes/issues/142098

Acknowledgements

This vulnerability was reported by the Kubernetes Third-Party Security
Audit subproject, OSTIF, and Shielder.

The issue was fixed and coordinated by:

Yuanliang Zhang @zylxjtu

Verónica López @Verolop

Jeremy Rickard @jeremyrickard

Nathan Herz @natherz97

Thank you,

Nathan Herz on behalf of the Kubernetes Security Response Committee

