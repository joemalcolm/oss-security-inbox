Received: (qmail 1601 invoked by uid 550); 13 May 2026 01:31:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32117 invoked from network); 13 May 2026 01:31:09 -0000
Date: Wed, 13 May 2026 03:30:48 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Zvonko Kaiser <zkaiser@nvidia.com>
Message-ID: <20260513013048.GA4563@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.4.2.3i
Subject: [oss-security] CVE-2026-41326: Kata Containers: CopyFile Policy Subversion via Symlinks

Hi,

Zvonko kindly brought the below to linux-distros last month (thank you,
Zvonko!), but seems to have failed to bring it to oss-security on the
public disclosure date as required.  I only discovered this now while
processing the distros list statistics for April.

Gentoo and Amazon failed to stay on top of this, even though that was
their contributing-back task.  We already figured this out with Gentoo
in context of another issue, but I am yet to hear from Amazon.

The "private" GitHub advisory referenced below is now public at that
URL.  It says the issue's Severity is Critical without giving a
vector/score.  However, NIST NVD lists this for CVE-2026-41326:

> Kata Containers is an open source project focusing on a standard
> implementation of lightweight Virtual Machines (VMs) that perform like
> containers. From v3.4.0 to v3.28.0, an oversight in the CopyFile policy
> (and perhaps the CopyFile handler) allows untrusted hosts to write to
> arbitrary locations inside the guest workload image. This can be used to
> overwrite binaries inside the guest and exfiltrate data from containers;
> even those running inside CVMs. This vulnerability is fixed in v3.29.0.

> CNA:  GitHub, Inc.
> CVSS-B 8.2 HIGH
> Vector:  CVSS:4.0/AV:L/AC:L/AT:N/PR:N/UI:N/VC:N/VI:H/VA:N/SC:H/SI:N/SA:N

Alexander

----- Forwarded message from Zvonko Kaiser <zkaiser@nvidia.com> -----

From: Zvonko Kaiser <zkaiser@nvidia.com>
To: "linux-distros@vs.openwall.org" <linux-distros@vs.openwall.org>
Subject: [vs-plain] Vulnerability in Kata Containers (CVE Requested)
Date: Thu, 16 Apr 2026 13:42:19 +0000

This is an advance warning of a vulnerability discovered in
Kata Containers, to give you, as downstream stakeholders, a chance to
coordinate the release of fixes and reduce the vulnerability window.
Please treat the following information as confidential until the
proposed public disclosure date.

An oversight in the CopyFile policy (and perhaps the CopyFile handler) allows untrusted hosts to write to arbitrary locations inside the guest workload image. This can be used to overwrite binaries inside the guest and exfiltrate data from containers; even those running inside CVMs.

Proposed patch: See attached patches.
Unless a flaw is discovered in them, these patches will be merged to
their corresponding branches on the public disclosure date.

CVE: Requested

Proposed public disclosure date/time:
2026-04-22, 1800 UTC
Please do not make the issue public (or release public patches)
before this coordinated embargo date.

Original private report:
https://github.com/kata-containers/kata-containers/security/advisories/GHSA-q49m-57vm-c8cc

For access to read and comment on the security report, please reply to me
with your *GitHub* username and I will subscribe you.


Zvonko Kaiser
Kata Containers Vulnerability Management Team


From 30d06769469a652e7c33dee2cf1400bfb691fbcf Mon Sep 17 00:00:00 2001
From: Markus Rudy <mr@edgeless.systems>
Date: Tue, 14 Apr 2026 16:51:15 +0200
Subject: [PATCH 1/3] agent: add required features for standalone build

Building the kata-agent-policy crate only succeeded when its parents
(agent and genpolicy) pulled in the required features. This commit adds
the required features to the crate itself, such that it can be built
standalone and IDEs don't show errors while browsing it.

Signed-off-by: Markus Rudy <mr@edgeless.systems>
---
 src/agent/policy/Cargo.toml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/src/agent/policy/Cargo.toml b/src/agent/policy/Cargo.toml
index 3562008b91..b17a9ff764 100644
--- a/src/agent/policy/Cargo.toml
+++ b/src/agent/policy/Cargo.toml
@@ -7,7 +7,7 @@ license.workspace = true
 
 [dependencies]
 # Async runtime
-tokio.workspace = true
+tokio = { workspace = true, features = ["fs", "io-util"] }
 
 anyhow.workspace = true
 

From b89ad10f76447380c5601dad24ea5d663babb4c0 Mon Sep 17 00:00:00 2001
From: Markus Rudy <mr@edgeless.systems>
Date: Wed, 15 Apr 2026 09:29:24 +0200
Subject: [PATCH 2/3] agent: fix naming for symlinks in CopyFile

The agent referred to the `data` field of an incoming CopyFileRequest
as the 'src'. This is misleading, because 'source' is not mentioned
in the specification (where links are just a path with attached
bytes), and because the documentation for the `ln` utility calls the
path LINK_NAME and the data TARGET. This commit fixes the glitch and
calls the first argument to `symlinkat` the target.

Signed-off-by: Markus Rudy <mr@edgeless.systems>
---
 src/agent/src/rpc.rs | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/src/agent/src/rpc.rs b/src/agent/src/rpc.rs
index b85e948e49..d90e57d6df 100644
--- a/src/agent/src/rpc.rs
+++ b/src/agent/src/rpc.rs
@@ -2108,8 +2108,8 @@ fn do_copy_file(req: &CopyFileRequest) -> Result<()> {
         }
 
         // Create new symbolic link
-        let src = PathBuf::from(OsStr::from_bytes(&req.data));
-        unistd::symlinkat(&src, None, &path)?;
+        let symlink_target = PathBuf::from(OsStr::from_bytes(&req.data));
+        unistd::symlinkat(&symlink_target, None, &path)?;
 
         // Set symlink ownership (permissions not supported for symlinks)
         let path_str = CString::new(path.as_os_str().as_bytes())?;

From 5e931ac8301fcf46724614fa5f1f3836b2ae54d9 Mon Sep 17 00:00:00 2001
From: Markus Rudy <mr@edgeless.systems>
Date: Thu, 9 Apr 2026 16:02:14 +0200
Subject: [PATCH 3/3] genpolicy: restrict symlinks in CopyFile

Allowing arbitrary symlinks in the shared directory is unsafe for
confidential VM use cases. In order to make CopyFile safe both for the
VM as well for the consuming containers, we implement the following
rules for symlinks (in addition to the existing rules for other files):

1. Symlinks may not be placed directly into the shared directory.
2. Symlinks must not point 'upwards', i.e. contain `..` as a path
   element.
3. Symlinks must be relative.

These rules ensure that all writes initiated by CopyFile are restricted
to the shared directory (protecting the VM), and that symlinks can't
point outside their mount points (protecting the container).

These new restrictions mean that we can't support arbitrary mount
sources (which might not follow these rules), but the usual k8s suspects
(ConfigMap, Secret, ServiceAccountToken) should still pass.

In order to aid writing the policy, we convert the CopyFileRequest to a
structure that does not contain binary data, but well-defined strings
and types.

Signed-off-by: Markus Rudy <mr@edgeless.systems>
---
 Cargo.lock                                    |   2 +
 src/agent/policy/Cargo.toml                   |   7 +
 src/agent/policy/src/policy.rs                | 222 +++++++++++++++++-
 src/agent/src/policy.rs                       |   9 +-
 src/agent/src/rpc.rs                          |  17 +-
 src/tools/genpolicy/rules.rego                |  50 +++-
 src/tools/genpolicy/tests/policy/main.rs      |   8 +-
 .../policy/testdata/copyfile/testcases.json   |  97 ++++++++
 8 files changed, 398 insertions(+), 14 deletions(-)

diff --git a/Cargo.lock b/Cargo.lock
index a4d5beb947..e9d3044eeb 100644
--- a/Cargo.lock
+++ b/Cargo.lock
@@ -3469,6 +3469,8 @@ version = "0.1.0"
 dependencies = [
  "anyhow",
  "json-patch 2.0.0",
+ "libc",
+ "protocols",
  "regorus",
  "serde",
  "serde_json",
diff --git a/src/agent/policy/Cargo.toml b/src/agent/policy/Cargo.toml
index b17a9ff764..42632978f1 100644
--- a/src/agent/policy/Cargo.toml
+++ b/src/agent/policy/Cargo.toml
@@ -25,8 +25,15 @@ regorus = { version = "0.2.8", default-features = false, features = [
 ] }
 json-patch = "2.0.0"
 
+# POSIX
+libc.workspace = true
+
 
 # Note: this crate sets the slog 'max_*' features which allows the log level
 # to be modified at runtime.
 slog.workspace = true
 slog-scope.workspace = true
+
+# Internal dependencies
+
+protocols = { workspace = true, features = ["with-serde"] }
diff --git a/src/agent/policy/src/policy.rs b/src/agent/policy/src/policy.rs
index 4e4a9debb1..0aa2c1081c 100644
--- a/src/agent/policy/src/policy.rs
+++ b/src/agent/policy/src/policy.rs
@@ -6,7 +6,10 @@
 
 //! Policy evaluation for the kata-agent.
 
-use anyhow::{bail, Result};
+use std::{ffi::OsStr, os::unix::ffi::OsStrExt as _};
+
+use anyhow::{bail, Error, Result};
+use protocols::agent::CopyFileRequest;
 use slog::{debug, error, info, warn};
 use tokio::io::AsyncWriteExt;
 
@@ -241,3 +244,220 @@ impl AgentPolicy {
         Ok(())
     }
 }
+
+/// FileType represents the S_IFMT part of the POSIX file mode such that it's easier to check in
+/// Rego.
+#[derive(serde::Deserialize, serde::Serialize, Clone, Debug, Default, PartialEq)]
+pub enum FileType {
+    #[default]
+    Unknown,
+    Regular,
+    Directory,
+    Symlink,
+}
+
+impl From<u32> for FileType {
+    fn from(raw_mode: u32) -> Self {
+        match raw_mode & libc::S_IFMT {
+            libc::S_IFREG => Self::Regular,
+            libc::S_IFDIR => Self::Directory,
+            libc::S_IFLNK => Self::Symlink,
+            _ => Self::Unknown,
+        }
+    }
+}
+
+/// PolicyCopyFileRequest is a pre-processed variant of the CopyFileRequest that avoids byte
+/// manipulation in Rego rules.
+#[derive(serde::Deserialize, serde::Serialize, Clone, Debug, Default, PartialEq)]
+#[serde(default)]
+pub struct PolicyCopyFileRequest {
+    pub path: String,
+    pub file_type: FileType,
+    pub symlink_target: Option<String>,
+
+    // Below fields are copied from the original request. They are not used by the genpolicy rules,
+    // but might be relevant for alternative rule sets. The data field is intentionally omitted to
+    // reduce serde overhead and protect the rules engine.
+
+    pub file_size: i64,
+    pub file_mode: u32,
+    pub dir_mode: u32,
+    pub uid: i32,
+    pub gid: i32,
+    pub offset: i64,
+}
+
+impl std::convert::TryFrom<&CopyFileRequest> for PolicyCopyFileRequest {
+    type Error = Error;
+
+    fn try_from(req: &CopyFileRequest) -> Result<Self> {
+        let file_type = req.file_mode.into();
+        let symlink_target: Option<String> = match file_type {
+            FileType::Symlink => {
+                if let Some(s) = OsStr::from_bytes(&req.data).to_str() {
+                    Some(s.to_owned())
+                } else {
+                    bail!("invalid symlink content")
+                }
+            }
+            _ => None,
+        };
+
+        Ok(PolicyCopyFileRequest {
+            path: req.path.clone(),
+            file_type,
+            symlink_target,
+            file_size: req.file_size,
+            file_mode: req.file_mode,
+            dir_mode: req.dir_mode,
+            uid: req.uid,
+            gid: req.gid,
+            offset: req.offset,
+        })
+    }
+}
+
+#[cfg(test)]
+mod tests {
+    use super::*;
+    use std::convert::TryInto;
+
+    use protocols::agent::CopyFileRequest;
+
+    struct TestCase {
+        name: String,
+        input: CopyFileRequest,
+        output: Option<PolicyCopyFileRequest>,
+    }
+
+    #[test]
+    fn test_copyfile_translation() {
+        let test_cases = [
+            TestCase {
+                name: "regular".to_owned(),
+                input: CopyFileRequest {
+                    file_mode: libc::S_IFREG,
+                    path: "/foo/bar".to_owned(),
+                    ..Default::default()
+                },
+                output: Some(PolicyCopyFileRequest {
+                    file_mode: libc::S_IFREG,
+                    file_type: FileType::Regular,
+                    path: "/foo/bar".to_owned(),
+                    ..Default::default()
+                }),
+            },
+            TestCase {
+                name: "directory".to_owned(),
+                input: CopyFileRequest {
+                    file_mode: libc::S_IFDIR,
+                    path: "/foo".to_owned(),
+                    ..Default::default()
+                },
+                output: Some(PolicyCopyFileRequest {
+                    file_mode: libc::S_IFDIR,
+                    file_type: FileType::Directory,
+                    path: "/foo".to_owned(),
+                    ..Default::default()
+                }),
+            },
+            TestCase {
+                name: "socket".to_owned(),
+                input: CopyFileRequest {
+                    file_mode: libc::S_IFSOCK,
+                    path: "/foo/sock".to_owned(),
+                    ..Default::default()
+                },
+                output: Some(PolicyCopyFileRequest {
+                    file_mode: libc::S_IFSOCK,
+                    file_type: FileType::Unknown,
+                    path: "/foo/sock".to_owned(),
+                    ..Default::default()
+                }),
+            },
+            TestCase {
+                name: "mixed".to_owned(),
+                input: CopyFileRequest {
+                    file_mode: libc::S_IFDIR | libc::S_IFREG,
+                    path: "/foo/dunno".to_owned(),
+                    ..Default::default()
+                },
+                output: Some(PolicyCopyFileRequest {
+                    file_mode: libc::S_IFDIR | libc::S_IFREG,
+                    file_type: FileType::Unknown,
+                    path: "/foo/dunno".to_owned(),
+                    ..Default::default()
+                }),
+            },
+            TestCase {
+                name: "all".to_owned(),
+                input: CopyFileRequest {
+                    file_mode: libc::S_IFMT,
+                    path: "/wat".to_owned(),
+                    ..Default::default()
+                },
+                output: Some(PolicyCopyFileRequest {
+                    file_mode: libc::S_IFMT,
+                    file_type: FileType::Unknown,
+                    path: "/wat".to_owned(),
+                    ..Default::default()
+                }),
+            },
+            TestCase {
+                name: "none".to_owned(),
+                input: CopyFileRequest {
+                    file_mode: 0,
+                    path: "/0".to_owned(),
+                    ..Default::default()
+                },
+                output: Some(PolicyCopyFileRequest {
+                    file_mode: 0,
+                    file_type: FileType::Unknown,
+                    path: "/0".to_owned(),
+                    ..Default::default()
+                }),
+            },
+            TestCase {
+                name: "link/valid".to_owned(),
+                input: CopyFileRequest {
+                    data: b"..data/foo".to_vec(),
+                    file_mode: libc::S_IFLNK,
+                    path: "/foo/lnk".to_owned(),
+                    ..Default::default()
+                },
+                output: Some(PolicyCopyFileRequest {
+                    file_mode: libc::S_IFLNK,
+                    file_type: FileType::Symlink,
+                    symlink_target: Some("..data/foo".to_owned()),
+                    path: "/foo/lnk".to_owned(),
+                    ..Default::default()
+                }),
+            },
+            TestCase {
+                name: "link/invalid".to_owned(),
+                input: CopyFileRequest {
+                    file_mode: libc::S_IFLNK,
+                    data: vec![0x00, 0xFF, 0xFF, 0x00],
+                    ..Default::default()
+                },
+                output: None,
+            },
+        ];
+
+        for test_case in test_cases {
+            let output_res: Result<PolicyCopyFileRequest> = (&test_case.input).try_into();
+            if let Some(expected) = test_case.output {
+                let output = output_res.expect(&format!("test case {}", &test_case.name));
+                assert_eq!(expected, output, "test case {}", &test_case.name)
+            } else {
+                assert!(
+                    output_res.is_err(),
+                    "test case {}\nunexpected success: {:?}",
+                    &test_case.name,
+                    output_res
+                )
+            }
+        }
+    }
+}
diff --git a/src/agent/src/policy.rs b/src/agent/src/policy.rs
index 1b8f391c0b..fddef06ed2 100644
--- a/src/agent/src/policy.rs
+++ b/src/agent/src/policy.rs
@@ -29,9 +29,16 @@ async fn allow_request(policy: &mut AgentPolicy, ep: &str, request: &str) -> ttr
 }
 
 pub async fn is_allowed(req: &(impl MessageDyn + serde::Serialize)) -> ttrpc::Result<()> {
+    is_allowed_with_entrypoint(req.descriptor_dyn().name(), &req).await
+}
+
+pub async fn is_allowed_with_entrypoint(
+    ep: &str,
+    req: &impl serde::Serialize,
+) -> ttrpc::Result<()> {
     let request = serde_json::to_string(req).unwrap();
     let mut policy = AGENT_POLICY.lock().await;
-    allow_request(&mut policy, req.descriptor_dyn().name(), &request).await
+    allow_request(&mut policy, ep, &request).await
 }
 
 pub async fn do_set_policy(req: &protocols::agent::SetPolicyRequest) -> ttrpc::Result<()> {
diff --git a/src/agent/src/rpc.rs b/src/agent/src/rpc.rs
index d90e57d6df..f4fca88247 100644
--- a/src/agent/src/rpc.rs
+++ b/src/agent/src/rpc.rs
@@ -4,12 +4,16 @@
 //
 
 use async_trait::async_trait;
+#[cfg(feature = "agent-policy")]
+use kata_agent_policy::policy::PolicyCopyFileRequest;
 use rustjail::{pipestream::PipeStream, process::StreamType};
 use tokio::io::{AsyncReadExt, AsyncWriteExt, ReadHalf};
 use tokio::sync::Mutex;
 use tokio::time::{timeout, Duration};
 
 use std::convert::TryFrom;
+#[cfg(feature = "agent-policy")]
+use std::convert::TryInto as _;
 use std::ffi::{CString, OsStr};
 use std::fmt::Debug;
 use std::io;
@@ -28,6 +32,8 @@ use anyhow::{anyhow, Context, Result};
 use cgroups::freezer::FreezerState;
 use oci::{Hooks, LinuxNamespace, Spec};
 use oci_spec::runtime as oci;
+#[cfg(feature = "agent-policy")]
+use protobuf::MessageDyn;
 use protobuf::MessageField;
 use protocols::agent::{
     AddSwapPathRequest, AddSwapRequest, AgentDetails, CopyFileRequest, GetIPTablesRequest,
@@ -85,7 +91,7 @@ use crate::trace_rpc_call;
 use crate::tracer::extract_carrier_from_ttrpc;
 
 #[cfg(feature = "agent-policy")]
-use crate::policy::{do_set_policy, is_allowed};
+use crate::policy::{do_set_policy, is_allowed, is_allowed_with_entrypoint};
 
 use opentelemetry::global;
 use tracing::span;
@@ -1519,6 +1525,15 @@ impl agent_ttrpc::AgentService for AgentService {
         req: protocols::agent::CopyFileRequest,
     ) -> ttrpc::Result<Empty> {
         trace_rpc_call!(ctx, "copy_file", req);
+        #[cfg(feature = "agent-policy")]
+        {
+            let req_for_policy: PolicyCopyFileRequest = (&req)
+                .try_into()
+                .context("parsing CopyFileRequest for policy")
+                .map_ttrpc_err(same)?;
+            is_allowed_with_entrypoint(req.descriptor_dyn().name(), &req_for_policy).await?;
+        }
+        #[cfg(not(feature = "agent-policy"))]
         is_allowed(&req).await?;
 
         do_copy_file(&req).map_ttrpc_err(same)?;
diff --git a/src/tools/genpolicy/rules.rego b/src/tools/genpolicy/rules.rego
index 1f2b8c4ffc..96c2d37513 100644
--- a/src/tools/genpolicy/rules.rego
+++ b/src/tools/genpolicy/rules.rego
@@ -1542,19 +1542,55 @@ allow_sandbox_storage(p_storages, i_storage) if {
 }
 
 CopyFileRequest if {
-    print("CopyFileRequest: input.path =", input.path)
+    print("CopyFileRequest: input =", input)
 
-    check_directory_traversal(input.path)
+    allow_copy_file
+
+    print("CopyFileRequest: true")
+}
+
+allow_copy_file if {
+    print("allow_copy_file regular")
+
+    input.file_type == "Regular"
+    allow_copy_file_path(input.path, "")
+
+    print("allow_copy_file regular: true")
+}
+
+allow_copy_file if {
+    print("allow_copy_file directory")
+
+    input.file_type == "Directory"
+    allow_copy_file_path(input.path, "")
+
+    print("allow_copy_file directory: true")
+}
+
+allow_copy_file if {
+    print("allow_copy_file symlink")
+
+    input.file_type == "Symlink"
+    # Symlinks are not allowed on the top-level of the shared directory, from which we mount.
+    allow_copy_file_path(input.path, ".*/.+")
+    # Symlinks must be normalized.
+    check_directory_traversal(input.symlink_target)
+    # Symlinks must be relative.
+    not startswith(input.symlink_target, "/")
+
+    print("allow_copy_file symlink: true")
+}
+
+allow_copy_file_path(path, regex_suffix) if {
+    check_directory_traversal(path)
 
     some regex1 in policy_data.request_defaults.CopyFileRequest
     regex2 := replace(regex1, "$(sfprefix)", policy_data.common.sfprefix)
     regex3 := replace(regex2, "$(cpath)", policy_data.common.cpath)
     regex4 := replace(regex3, "$(bundle-id)", "[a-z0-9]{64}")
-    print("CopyFileRequest: regex4 =", regex4)
-
-    regex.match(regex4, input.path)
-
-    print("CopyFileRequest: true")
+    regex5 := concat("", [regex4, regex_suffix])
+    print("allow_copy_file_path: regex5 =", regex5)
+    regex.match(regex5, path)
 }
 
 CreateSandboxRequest if {
diff --git a/src/tools/genpolicy/tests/policy/main.rs b/src/tools/genpolicy/tests/policy/main.rs
index c0b312850d..2e24fcb156 100644
--- a/src/tools/genpolicy/tests/policy/main.rs
+++ b/src/tools/genpolicy/tests/policy/main.rs
@@ -12,12 +12,12 @@ mod tests {
     use std::str;
 
     use protocols::agent::{
-        AddARPNeighborsRequest, CopyFileRequest, CreateContainerRequest, CreateSandboxRequest,
-        ExecProcessRequest, RemoveContainerRequest, UpdateInterfaceRequest, UpdateRoutesRequest,
+        AddARPNeighborsRequest, CreateContainerRequest, CreateSandboxRequest, ExecProcessRequest,
+        RemoveContainerRequest, UpdateInterfaceRequest, UpdateRoutesRequest,
     };
     use serde::{Deserialize, Serialize};
 
-    use kata_agent_policy::policy::AgentPolicy;
+    use kata_agent_policy::policy::{AgentPolicy, PolicyCopyFileRequest};
 
     // Translate each test case in testcases.json
     // to one request type.
@@ -25,7 +25,7 @@ mod tests {
     #[serde(tag = "kind", content = "request")]
     #[allow(clippy::enum_variant_names)] // The tags need to match the entrypoint logged by the agent.
     enum TestRequest {
-        CopyFileRequest(CopyFileRequest),
+        CopyFileRequest(PolicyCopyFileRequest),
         CreateContainerRequest(CreateContainerRequest),
         CreateSandboxRequest(CreateSandboxRequest),
         ExecProcessRequest(ExecProcessRequest),
diff --git a/src/tools/genpolicy/tests/policy/testdata/copyfile/testcases.json b/src/tools/genpolicy/tests/policy/testdata/copyfile/testcases.json
index 17e52f2e1b..ed4d4d1fbd 100644
--- a/src/tools/genpolicy/tests/policy/testdata/copyfile/testcases.json
+++ b/src/tools/genpolicy/tests/policy/testdata/copyfile/testcases.json
@@ -4,6 +4,7 @@
     "description": "copy initiated by k8s mount",
     "kind": "CopyFileRequest",
     "request": {
+      "file_type": "Regular",
       "path": "/run/kata-containers/shared/containers/81e5f43bc8599c5661e66f959ac28df5bfb30da23c5d583f2dcc6f9e0c5186dc-ce23cfeb91e75aaa-resolv.conf"
     }
   },
@@ -12,6 +13,7 @@
     "description": "a dirname can have trailing dots",
     "kind": "CopyFileRequest",
     "request": {
+      "file_type": "Regular",
       "path": "/run/kata-containers/shared/containers/81e5f43bc8599c5661e66f959ac28df5bfb30da23c5d583f2dcc6f9e0c5186dc-ce23cfeb91e75aaa-foo../bar"
     }
   },
@@ -20,6 +22,7 @@
     "description": "attempt to copy outside of container root",
     "kind": "CopyFileRequest",
     "request": {
+      "file_type": "Regular",
       "path": "/etc/ssl/cert.pem"
     }
   },
@@ -28,6 +31,7 @@
     "description": "attempt to write into container root",
     "kind": "CopyFileRequest",
     "request": {
+      "file_type": "Regular",
       "path": "/run/kata-containers/shared/containers/81e5f43bc8599c5661e66f959ac28df5bfb30da23c5d583f2dcc6f9e0c5186dc/rootfs/bin/sh"
     }
   },
@@ -36,6 +40,7 @@
     "description": "attempt to write into container root - guest pull",
     "kind": "CopyFileRequest",
     "request": {
+      "file_type": "Regular",
       "path": "/run/kata-containers/81e5f43bc8599c5661e66f959ac28df5bfb30da23c5d583f2dcc6f9e0c5186dc/rootfs/bin/sh"
     }
   },
@@ -44,6 +49,7 @@
     "description": "attempted directory traversal",
     "kind": "CopyFileRequest",
     "request": {
+      "file_type": "Regular",
       "path": "/run/kata-containers/shared/containers/81e5f43bc8599c5661e66f959ac28df5bfb30da23c5d583f2dcc6f9e0c5186dc-ce23cfeb91e75aaa-foo/../../../../../etc/ssl/cert.pem"
     }
   },
@@ -52,6 +58,7 @@
     "description": "attempted directory traversal - parent directory",
     "kind": "CopyFileRequest",
     "request": {
+      "file_type": "Directory",
       "path": "/run/kata-containers/shared/containers/81e5f43bc8599c5661e66f959ac28df5bfb30da23c5d583f2dcc6f9e0c5186dc-ce23cfeb91e75aaa-foo/.."
     }
   },
@@ -60,6 +67,7 @@
     "description": "relative path",
     "kind": "CopyFileRequest",
     "request": {
+      "file_type": "Regular",
       "path": "etc/ssl/cert.pem"
     }
   },
@@ -68,7 +76,96 @@
     "description": "relative path - parent directory",
     "kind": "CopyFileRequest",
     "request": {
+      "file_type": "Directory",
       "path": ".."
     }
+  },
+  {
+    "allowed": false,
+    "description": "unsupported file type",
+    "kind": "CopyFileRequest",
+    "request": {
+      "file_type": "Unknown",
+      "path": "/run/kata-containers/shared/containers/81e5f43bc8599c5661e66f959ac28df5bfb30da23c5d583f2dcc6f9e0c5186dc-ce23cfeb91e75aaa-foo/bar"
+    }
+  },
+  {
+    "allowed": true,
+    "description": "directory in top-level shared directory",
+    "kind": "CopyFileRequest",
+    "request": {
+      "file_type": "Directory",
+      "path": "/run/kata-containers/shared/containers/81e5f43bc8599c5661e66f959ac28df5bfb30da23c5d583f2dcc6f9e0c5186dc-ce23cfeb91e75aaa-foo"
+    }
+  },
+  {
+    "allowed": false,
+    "description": "symlink in top-level shared directory",
+    "kind": "CopyFileRequest",
+    "request": {
+      "symlink_target": "abc",
+      "file_type": "Symlink",
+      "path": "/run/kata-containers/shared/containers/81e5f43bc8599c5661e66f959ac28df5bfb30da23c5d583f2dcc6f9e0c5186dc-ce23cfeb91e75aaa-foo"
+    }
+  },
+  {
+    "allowed": true,
+    "description": "symlink beneath top-level shared directory",
+    "kind": "CopyFileRequest",
+    "request": {
+      "symlink_target": "abc",
+      "file_type": "Symlink",
+      "path": "/run/kata-containers/shared/containers/81e5f43bc8599c5661e66f959ac28df5bfb30da23c5d583f2dcc6f9e0c5186dc-ce23cfeb91e75aaa-foo/lnk"
+    }
+  },
+  {
+    "allowed": false,
+    "description": "symlink pointing up - leading",
+    "kind": "CopyFileRequest",
+    "request": {
+      "symlink_target": "../abc",
+      "file_type": "Symlink",
+      "path": "/run/kata-containers/shared/containers/81e5f43bc8599c5661e66f959ac28df5bfb30da23c5d583f2dcc6f9e0c5186dc-ce23cfeb91e75aaa-foo/lnk"
+    }
+  },
+  {
+    "allowed": false,
+    "description": "symlink pointing up - middle",
+    "kind": "CopyFileRequest",
+    "request": {
+      "symlink_target": "a/../../b",
+      "file_type": "Symlink",
+      "path": "/run/kata-containers/shared/containers/81e5f43bc8599c5661e66f959ac28df5bfb30da23c5d583f2dcc6f9e0c5186dc-ce23cfeb91e75aaa-foo/lnk"
+    }
+  },
+  {
+    "allowed": false,
+    "description": "symlink pointing up - trailing",
+    "kind": "CopyFileRequest",
+    "request": {
+      "symlink_target": "foo/..",
+      "file_type": "Symlink",
+      "path": "/run/kata-containers/shared/containers/81e5f43bc8599c5661e66f959ac28df5bfb30da23c5d583f2dcc6f9e0c5186dc-ce23cfeb91e75aaa-foo/lnk"
+    }
+  },
+  {
+    "allowed": false,
+    "description": "symlink pointing up - ..",
+    "kind": "CopyFileRequest",
+    "request": {
+      "symlink_target": "..",
+      "file_type": "Symlink",
+      "path": "/run/kata-containers/shared/containers/81e5f43bc8599c5661e66f959ac28df5bfb30da23c5d583f2dcc6f9e0c5186dc-ce23cfeb91e75aaa-foo/lnk"
+    }
+  },
+  {
+    "allowed": false,
+    "description": "symlink with absolute target",
+    "kind": "CopyFileRequest",
+    "request": {
+      "symlink_target": "/abc",
+      "file_type": "Symlink",
+      "path": "/run/kata-containers/shared/containers/81e5f43bc8599c5661e66f959ac28df5bfb30da23c5d583f2dcc6f9e0c5186dc-ce23cfeb91e75aaa-foo/lnk"
+    }
   }
 ]

----- End forwarded message -----
