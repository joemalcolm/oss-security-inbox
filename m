X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/05/4
Message-ID: <CAM62SmKGrXMeLApCu1BPyHYaPCFSiqtok=oE50UWLz8Wq6fFyA@mail.gmail.com>
Date: Thu, 5 Nov 2026 11:37:02 -0600
From: Tabitha Sable <tabitha.c.sable@...il.com>
To: oss-security@...ts.openwall.com
Subject: [kubernetes] CVE-2026-116472: ingress-nginx mirror-target self-DOS
Content-Type: text/plain; charset=utf-8

Hello Kubernetes Community,

A security issue was discovered in ingress-nginx where a user with
permission to create an Ingress may be able to cause denial of service of
the ingress-nginx data plane, or possibly redirect traffic from other
Ingresses. Kubernetes clusters are only affected if they are using
ingress-nginx.

Kubernetes will not be issuing a fix for this CVE, because ingress-nginx
maintenance ended in March 2026.

SUSE has issued a fix for this CVE in version 1.15.2-prime1 of their fork
of ingress-nginx.

This issue has been rated 2.7 (LOW) (
https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:L/PR:H/UI:N/S:U/C:N/I:N/A:L),
and assigned CVE-2026-116472

### Am I vulnerable?

This issue affects ingress-nginx. If you do not have ingress-nginx
installed on your cluster, you are not affected. You can check this by
running `kubectl get pods --all-namespaces --selector
app.kubernetes.io/name=ingress-nginx`.

### How do I mitigate this vulnerability?

Prior to upgrading, this vulnerability can be mitigated by using an
admission controller to reject Ingresses that specify the mirror-target
annotation, or by setting the annotations-risk-level configMap parameter to
"Medium" or "Low".

#### How to upgrade?

To upgrade, consult the documentation provided by your vendor.

Note that the Kubernetes project will not be issuing a fix for this CVE.

### Detection

Localhost addresses in the mirror-target annotation of an Ingress resource
may indicate an attempt to exploit this vulnerability.

If you find evidence that this vulnerability has been exploited, please
contact security@...ernetes.io

See the GitHub issue for more details:
https://github.com/kubernetes/kubernetes/issues/143852

#### Acknowledgements

This vulnerability was reported by Victor Pereira.

Thank you,

Tabitha Sable on behalf of the Kubernetes Security Response Committee

