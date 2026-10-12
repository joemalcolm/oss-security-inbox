X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/12/2
Message-ID: <CAD9hHLH96OsYqDJ--wj+9DLkqaMMmzari4X+V_0bwU0g8LmiaQ@mail.gmail.com>
Date: Mon, 12 Oct 2026 09:39:19 +0200
From: Nebojša Jaćović <nebojsa.jacovic@...il.com>
To: oss-security@...ts.openwall.com
Subject: Unpatched cross-namespace secret exfiltration in GoogleCloudPlatform/k8s-config-connector - CVE requested (CAN-2026-2039460)
Content-Type: text/plain; charset=utf-8

Hi,

I'm disclosing a vulnerability in GoogleCloudPlatform/k8s-config-connector
that I reported to Google Cloud VRP on 2026-06-17. The 90-day disclosure
deadline I communicated to the vendor (2026-10-09) has passed with no
substantive response beyond automated queue acknowledgments. I've
independently reconfirmed the issue remains present in master as of
2026-10-11.

A CVE ID has been requested from MITRE's CNA-LR (CAN-2026-2039460,
pending). I'll follow up with the CVE ID once assigned.

Affected component: apis/refs/v1beta1/secret/interface.go, function
NormalizedSecret()
Project: https://github.com/GoogleCloudPlatform/k8s-config-connector

Description:

k8s-config-connector's Direct controller implementations fail to enforce
Kubernetes namespace boundaries when resolving Secret references, allowing
cross-namespace secret exfiltration and live credential misuse.
NormalizedSecret() accepts a user-supplied namespace from the custom
resource's SecretRef and uses it directly to fetch the Secret, only falling
back to the resource's own namespace when the field is empty:

    nn := types.NamespacedName{
        Namespace: r.GetNamespace(),
        Name:      r.GetName(),
    }
    if nn.Namespace == "" {
        nn.Namespace = otherNamespace
    }
    ...
    if err := reader.Get(ctx, nn, secret); err != nil { ... }

The SecretRef struct exposes a mutable namespace field directly in the CRD
schema for Direct-controller-managed resource types (e.g.
BigQueryConnection, Datastream, AlloyDBBackup, and ~20+ others). A user
with permission to create such a resource in namespace A can set
secretRef.namespace to any other namespace (e.g. kube-system); the
controller, which runs with cluster-wide Secret read permissions, will
fetch and use that Secret.

This is a regression relative to the project's own Legacy implementation
(apis/refs/v1beta1/secret/legacy.go, ReadSecretValue()), which hardcodes
the namespace to the resource's own namespace and does not expose a
namespace field at all.

Attack preconditions:
- Attacker has RBAC permission to create custom resources in at least one
namespace (no cluster-admin or elevated privileges needed)
- k8s-config-connector deployed with cluster-wide Secret read permissions
(standard configuration)
- A sensitive Secret exists in a different, protected namespace (e.g.
kube-system)

Impact:

Any user able to create a Direct-controller-managed custom resource in any
namespace can cause the controller to read and actively use Secrets
(database credentials, GCP service account keys, API tokens, TLS material)
from any other namespace, including kube-system. The credential is used
live to authenticate to GCP services on the attacker's behalf - not merely
information disclosure, but direct privilege escalation and lateral
movement within the victim's GCP project. This completely bypasses
Kubernetes RBAC namespace isolation, the cluster's primary security
boundary, at the application level.

Full attack scenario and reproduction steps (crafted BigQueryConnection
manifest triggering cross-namespace read) were included in the original
Cloud VRP report; happy to share on request.

Nebojša Jaćović

