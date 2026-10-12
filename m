X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/12/1
Message-ID: <CAD9hHLHJZGWhmEMmgYXPdqhmPNStZnrjKAAn88X5vGXtVvb1wA@mail.gmail.com>
Date: Mon, 12 Oct 2026 09:28:29 +0200
From: Nebojša Jaćović <nebojsa.jacovic@...il.com>
To: oss-security@...ts.openwall.com
Subject: Unpatched credential leak in kubernetes/cloud-provider-gcp (auth-provider-gcp) - CVE requested (CAN-2026-2039459)
Content-Type: text/plain; charset=utf-8

Hi,

I'm disclosing a vulnerability in kubernetes/cloud-provider-gcp that I
reported to Google Cloud VRP on 2026-06-14 (Issue #523808414). The 90-day
disclosure deadline I communicated to the vendor (2026-10-06) has passed
with no substantive response beyond automated queue acknowledgments and a
priority reassignment to P2. I've independently reconfirmed the issue
remains present in master as of 2026-10-11.

A CVE ID has been requested from MITRE's CNA-LR (CAN-2026-2039459,
pending). I'll follow up with the CVE ID once assigned.

Affected component: pkg/gcpcredential/gcpcredential.go, line 314
Project: https://github.com/kubernetes/cloud-provider-gcp

Description:

auth-provider-gcp is a kubelet credential provider plugin deployed on every
GKE node, invoked by kubelet on every image pull from GCR/Artifact
Registry. ContainerRegistryProvider.Provide() unconditionally logs the raw
GCE metadata server response body via klog.Errorf when JSON parsing of the
token response fails:

    if err := json.Unmarshal([]byte(tokenJSONBlob), &parsedBlob); err !=
nil {
        klog.Errorf("while parsing json blob %s: %v", tokenJSONBlob, err)
        return cfg
    }

tokenJSONBlob is the raw HTTP response from the GCE metadata server (
http://metadata.google.internal./computeMetadata/v1/instance/service-accounts/default/token),
which contains a valid GCP OAuth2 access token. klog.Errorf logs at ERROR
level regardless of kubelet's -v verbosity flag, guaranteeing the token
reaches system/kubelet logs whenever a malformed or truncated JSON response
is received (e.g. due to network issues, proxy truncation, or transient
metadata service problems).

This is a regression of CVE-2020-8563. The same binary explicitly guards
against this exact pattern elsewhere
(cmd/auth-provider-gcp/app/getcredentials.go:130):

    // The error from json.Marshal is intentionally not included so as to
not leak credentials into the logs
    return fmt.Errorf("error marshaling credentials")

Attack preconditions:
- GKE Standard cluster without Pod Security Standards enforcement (common
default; GKE Autopilot is unaffected - hostPath blocked by policy)
- Malformed/truncated JSON response from the metadata server (realistic via
network timeout, proxy truncation, or transient metadata service issues)
- Attacker controls a pod on the same node, with either a hostPath mount to
the kubelet log location, or Cloud Logging read access for the node

Impact:

An attacker who controls a pod on a GKE Standard node can exfiltrate the
node's GCE service account access token from system logs when a metadata
server parse failure occurs, then authenticate to GCP APIs with that
service account's privileges. Impact scales with the node SA's OAuth scope:
- devstorage.read_only (minimum): unauthorized read access to GCR/Artifact
Registry images across the project
- cloud-platform (GKE default for non-hardened clusters): read/write access
across all GCP services in the project - storage, compute, secrets, KMS

PoC and full reproduction steps (standalone Go harness + kind cluster
integration test) were included in the original Cloud VRP report; happy to
share on request.

Nebojša Jaćović

