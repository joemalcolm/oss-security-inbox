X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/28/11
Message-ID: <CAK3hNHb=VbrU8bE4DWgAexYLVgjwhZX_wJZTTX4BqnzWd44bkg@mail.gmail.com>
Date: Tue, 28 Jul 2026 04:55:36 -0700
From: Abhinav Agarwal <abhinavagarwal1996@...il.com>
To: oss-security@...ts.openwall.com
Subject: [CVE pending] Eclipse Milo <= 1.1.4: password-recovery oracle, pre-auth DoS, and four server flaws
Content-Type: text/plain; charset=utf-8

Six server-side vulnerabilities in Eclipse Milo, the open-source OPC
UA (IEC 62541) client/server SDK for the JVM, have been fixed in Milo
1.1.5. Only the server side is affected; a Milo client is not. Two
stand out: a username-token RSA PKCS#1 v1.5 padding oracle that
recovers a victim's plaintext password from one captured token, and a
pre-authentication memory leak that gets the server process OOM-killed
with no session and no credentials.

CVE IDs were reserved by the Eclipse Foundation (CNA) on 2026-07-16
but have not been published. Per the CNA's terms a reserved identifier
must not be used in public communication before publication, so no CVE
IDs are cited below; findings are numbered instead. I will follow up
on this thread with the identifiers once they are published.

Affected versions: server side only; per-finding ranges below,
spanning 0.6.0-0.6.16 and/or 1.0.0-1.1.4
Fixed in: Eclipse Milo 1.1.5
  https://github.com/eclipse-milo/milo/releases/tag/v1.1.5

Finding 1: Basic128Rsa15 username-token padding oracle
Severity: Critical (CVSS 4.0 9.1 / CVSS 3.1 7.4)
CWE: CWE-204
Affected: 0.6.0-0.6.16, 1.0.0-1.1.4

AbstractIdentityValidator.decryptTokenData maps an RSA PKCS#1 v1.5
unpad failure onto a different status code than a successful unpad
that later fails authentication, giving a Bleichenbacher decryption
oracle over the Basic128Rsa15 username token.

Self-test, two probes, no exploit code needed. Send an ActivateSession
whose encrypted password block is (a) correctly padded with a wrong
password, then (b) random bytes that will not unpad. Affected servers
answer Bad_UserAccessDenied (0x801F0000) and Bad_SecurityChecksFailed
(0x80130000) respectively; 1.1.5 answers Bad_IdentityTokenInvalid
(0x80200000) to both. Two distinct codes means you are affected.

Exploitation: capture one victim's encrypted password block off the
wire, then open a single anonymous session and send adaptive
ActivateSession identity-change requests for the victim account,
narrowing the plaintext on each answer. Against a 2048-bit key the
password was recovered in 11,675 queries / 12.8 s, and a raw
ActivateSession with it returned Good. Query cost varies by about an
order of magnitude between runs because the initial blinding search is
geometrically distributed. Requires the deprecated Basic128Rsa15
username policy to be enabled and an on-path capture of one token;
that is what AC:H and AT:P encode.

Fix: https://github.com/eclipse-milo/milo/commit/db59fae993a3a1bc66fffc8a2796d444b40285fb

Finding 2: pre-authentication direct-memory leak
Severity: High (CVSS 4.0 8.7 / CVSS 3.1 7.5)
CWE: CWE-401
Affected: 0.6.0-0.6.16, 1.0.0-1.1.4

The UASC server asymmetric handler retains incomplete inbound chunks
in pooled direct memory and releases them only on exceptionCaught, not
on channelInactive. Because SecurityPolicy.None is accepted for
channel setup, an unauthenticated client can open a channel, send a
non-final chunk, disconnect, and repeat, leaking off-heap memory
permanently. No session, no credentials, no user interaction.

Reproduction and detection: from an unauthenticated TCP client, open a
None channel, send chunks with the final-chunk flag never set, close
the socket, repeat. No OPC UA library is needed; it is plain UASC
framing. Pooled direct memory then climbs monotonically and survives a
forced GC (jcmd <pid> GC.run), and at the cap the server logs repeated
"OutOfMemoryError: Cannot reserve ... direct buffer memory" from
UascServerAsymmetricHandler, which is the cleanest operator-side
indicator. Under -XX:MaxDirectMemorySize this degrades the server;
with no protective cap under a container memory limit the JVM is
OOM-killed outright (observed: OOMKilled=true, ExitCode 137,
legitimate clients denied until restart).

Fix: https://github.com/eclipse-milo/milo/commit/459715793ec54b0f33367a14f94264500a0d872b

Finding 3: OpcUaServerConfig.copy() drops RoleMapper, RBAC fails open
Severity: High (CVSS 4.0 8.8 / CVSS 3.1 8.6)
CWE: CWE-862
Affected: 1.0.0-1.1.4

OpcUaServerConfig.copy() omits the configured RoleMapper, so a server
built through copy() has no role mappings: the access controller sees
no roles, every role-permission check is skipped, and authorization
fails open. Demonstrated: an anonymous client called a method whose
RolePermissions grant Call only to AdminRole and it executed (status
Good, server-side counter incremented, and an independent subscribed
client's feed died with it). On 1.1.5 the same call returns
Bad_UserAccessDenied.

How to check your deployment: read
OpcUaServer.getConfig().getRoleMapper() on the running server. If you
configured a RoleMapper and it is absent there, your server is failing
open.

Note on scope: DefaultAccessController gates node Value read/write by
AccessLevel, not RolePermissions. The RolePermissions-gated operations
are Browse, Call, reads of the RolePermissions/Historizing attributes,
and AddNodes/DeleteNodes, so the fail-open manifests there. A naive
"write a protected value" test falsely passes on both versions.

Fix: https://github.com/eclipse-milo/milo/commit/d51f03e9a75f313ab41c3d68d809f4b922073f1a

Finding 4: Call service mixed-batch authorization bypass
Severity: High (CVSS 4.0 8.7 / CVSS 3.1 8.2)
CWE: CWE-863
Affected: 1.0.0-1.1.4

DefaultMethodServiceSet computes the authorized subset of a
CallRequest, then passes the original unfiltered methodsToCall list to
AddressSpaceManager.call() instead of the computed group. A denied
method batched alongside an allowed one executes anyway, in either
order. Sent alone it is correctly denied, so the bypass is purely a
function of batching.

Self-test: as a low-privileged identity, invoke a
RolePermissions-protected method alone (expect Bad_UserAccessDenied,
no side effect), then invoke it in one CallRequest alongside a method
you are permitted to call. On affected versions the protected method's
side effect occurs regardless of the status codes returned, so check
server-side state rather than the response; the client may see an
error or a timeout while the method has already run.

Fix: https://github.com/eclipse-milo/milo/commit/59b50bed094de0d18a130a48f3527254dc76105d

Finding 5: cross-session diagnostics disclosure
Severity: Medium (CVSS 4.0 6.9 / CVSS 3.1 6.4)
CWE: CWE-862
Affected: 0.6.0-0.6.16, 1.0.0-1.1.4

The server diagnostics EnabledFlag is writable by any session and the
session diagnostics arrays are readable without adequate
authorization. An anonymous client over a None/None endpoint can
enable diagnostics and read other sessions' information; with a
trusted client-application certificate this extends to
SessionSecurityDiagnostics, which carries other users' names and
certificates. The credential-bearing read is gated by operator
cert-trust and is not reachable by an untrusted outsider by default.

Fix: https://github.com/eclipse-milo/milo/commit/a5dae1be0657d2b4fcb66e63f377c1dc36069e2a

Finding 6: nested decode and monitored-item quota exhaustion
Severity: Medium (CVSS 4.0 6.9 / CVSS 3.1 7.5)
CWE: CWE-460
Affected: nested decoding 1.0.0-1.1.4; quota accounting 0.6.8-0.6.16,
1.0.0-1.1.4

Two related defects. Nested ExtensionObject decoding creates a binary
decoder with a reset depth counter, bypassing the recursion limit, so
a deeply nested structure (~700 KiB) raises StackOverflowError.
Separately, monitored-item quota accounting is not exception-safe: the
reservation is incremented before construction completes and not
restored when creation throws, so a finite maxMonitoredItems quota
drains permanently. Milo's default is unlimited, which avoids the
lasting effect.

Fix: https://github.com/eclipse-milo/milo/commit/587e35669f519b2d7f6d850a5f86ee5a76c3a2c5
     https://github.com/eclipse-milo/milo/commit/5f3f6da2a5ea80682e1da7c58f7a1870b09d2b43

Downstream: any application embedding an affected Milo server inherits
these findings as far as its configuration reaches them. The pre-auth
leak needs only a network-reachable endpoint; the authorization and
username-token findings need RBAC and Basic128Rsa15 in use. I
confirmed exploitability against at least one downstream project
end-to-end and notified it directly; per-project details are withheld
at the maintainers' request.

Exploit code: working end-to-end PoCs exist for the four strongest
findings. Each is a self-contained Maven project built against
released Milo artifacts, shipping a 1.1.5 negative control that is the
same bytecode with only the Milo dependency changed. They will be
published on 2026-07-30, two days from this advisory, at
https://github.com/abhinavagarwal07/milo-security-poc

All six were reported privately to the Eclipse Foundation Security
Team and fixed in a coordinated release. I am publishing now because
the project cleared disclosure on 2026-07-15, the fix release has been
public for over a week, and the fixing commits identify each issue
plainly, while the reserved CVE IDs remain unpublished and warn no
one.

Timeline:
  2026-07-13 six findings reported to Eclipse Foundation Security Team
  2026-07-15 all findings confirmed; public disclosure cleared
  2026-07-16 Milo 1.1.5 released with all fixes; CVE IDs reserved
  2026-07-17 CERT/CC case opened (VU#813184)
  2026-07-21 CVE publication requested (again 2026-07-22); no response
  2026-07-26 publication requests filed with Eclipse; CERT/CC notified
of upcoming advisory
  2026-07-28 this advisory
  2026-07-30 proof-of-concept exploit code to be published

Writeup: https://abhinavagarwal07.github.io/posts/eclipse-milo-opcua-six-cves?src=oss
Credit: Abhinav Agarwal (reporter)

Regards,
Abhinav Agarwal
