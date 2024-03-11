Received: (qmail 30468 invoked by uid 550); 11 Mar 2024 17:37:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27867 invoked from network); 11 Mar 2024 17:36:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1710178802;
	bh=hKrZw5mQYY6NQsSMYEJQ8lslgyRleM72/rLRqJeIkY8=;
	h=From:Content-Type:Mime-Version:Subject:Message-Id:Date:To;
	b=vMU7aCi1HQBEhdhWZPS6tKYAu1MdbQ+F6PeEnznQb11EdLxfZToPZK/udgQsfxzt9
	 KPxBug0T/z4ZPUvutNbEs1tmrvJQ+wFBGM1qFCisA7NEFb+0Zt39FeAxwZhHC5FTH1
	 +TUy4NS7Yz6L6y96Lfe3IfO06oiI6LBKtEUrBdRSKoiql8tzidjfBKl2AcFvhvm4ya
	 +8xrvyOfukNA/RpcvWAyi9sLGvmqsoA6quyd8tKXZvB91vrXs2yAqLZy4gmbPrbKiQ
	 vvhL6wduCaqRODUXOf2P3dDOqZ2ynEMliNFgkjyQcX72JTSXXts7j1RcxjzXI1xcqV
	 Dvw1pTMC0V/yA==
From: suarezmiguelc@icloud.com
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_EE5C298B-91FD-4159-A6C4-9D68384DC923"
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.300.61.1.2\))
Message-Id: <79472A3B-156A-4CCD-ADDA-517C21B07158@icloud.com>
Date: Mon, 11 Mar 2024 18:39:48 +0100
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3774.300.61.1.2)
X-Proofpoint-GUID: qvX3HhKzgdRf5lljTy-KnY_WqRpu12pM
X-Proofpoint-ORIG-GUID: qvX3HhKzgdRf5lljTy-KnY_WqRpu12pM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-11_10,2024-03-11_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015 malwarescore=0
 adultscore=0 mlxscore=0 spamscore=0 bulkscore=0 suspectscore=0
 phishscore=0 mlxlogscore=999 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2308100000 definitions=main-2403110135
Subject: [oss-security] NodeJS v{18.x,20.x,21.x} February Security Updates

--Apple-Mail=_EE5C298B-91FD-4159-A6C4-9D68384DC923
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

This posting is largely based on the NodeJS blog post at
https://nodejs.org/en/blog/vulnerability/february-2024-security-releases
with some edits and extras by me.  Please note that it still uses future
tense to talk about the releases, which should actually have been made
by now.

=3D=3D=3D=3D=3D=3D
Summary
=3D=3D=3D=3D=3D=3D

The Node.js project will release new versions of the 18.x, 20.x and,
21.x releases lines on or shortly after, Tuesday February 6 2024 in
order to address:

- 4 high severity issues.
- 4 medium severity issue.
- 1 low severity issue.

=3D=3D=3D=3D=3D=3D
Impact
=3D=3D=3D=3D=3D=3D

The 21.x release line of Node.js is vulnerable to 4 high severity
issues, 4 medium severity issues, and 1 low severity issue.

The 20.x release line of Node.js is vulnerable to 4 high severity
issues, 4 medium severity issues, and 1 low severity issue.

In addition, the 18.x release line of Node.js is vulnerable to 2 high
severity issues, 2 medium severity issues, and 1 low severity issue.

=3D=3D=3D=3D=3D=3D
Release timing
=3D=3D=3D=3D=3D=3D

Releases will be available on, or shortly after, Tuesday February
6 2024.

This security release includes the following dependency updates to
address public vulnerabilities:

- libuv 1.48.0 v21.x (CVE-2024-24806).
 =3D> Discussed in this thread on oss-security
 https://www.openwall.com/lists/oss-security/2024/02/08/2

- libuv on v18.x and v20.x has been patched to address CVE-2024-24806.

- undici 5.28.3 on all release lines
 (CVE-2024-24758, GHSA-3787-6prv-h9w3) =3D>
 https://github.com/nodejs/undici/security/advisories/GHSA-3787-6prv-h9w3


<<<<<<

For undici, it refers to a low severity vulnerability where the
Proxy-Authorization header wasn=E2=80=99t cleared on cross-origin redirects.
Patched on v5.28.3 (The version NodeJS is updating to) and v6.6.1.

No Workarounds.

>>>>>>

=3D=3D=3D=3D=3D=3D
Code injection and privilege escalation through Linux capabilities
(CVE-2024-21892) -  (High)
=3D=3D=3D=3D=3D=3D

On Linux, Node.js ignores certain environment variables if those may
have been set by an unprivileged user while the process is running with
elevated privileges with the only exception of CAP_NET_BIND_SERVICE.

Due to a bug in the implementation of this exception, Node.js
incorrectly applies this exception even when certain other capabilities
have been set.

This allows unprivileged users to inject code that inherits the
process's elevated privileges.

Impacts:

- All users in all active release lines: 18.x, 20.x, and 21.x.

=3D=3D=3D=3D=3D=3D
Reading unprocessed HTTP request with unbounded chunk extension allows
DoS attacks (CVE-2024-22019) - (High)
=3D=3D=3D=3D=3D=3D

A vulnerability in Node.js HTTP servers allows an attacker to send a
specially crafted HTTP request with chunked encoding, leading to
resource exhaustion and denial of service (DoS).

The server reads an unbounded number of bytes from a single connection,
exploiting the lack of limitations on chunk extension bytes.

The issue can cause CPU and network bandwidth exhaustion, bypassing
standard safeguards like timeouts and body size limits.

Impacts:

- All users in all active release lines: 18.x, 20.x, and 21.x.

=3D=3D=3D=3D=3D=3D
Path traversal by monkey-patching Buffer internals
(CVE-2024-21896) - (High)
=3D=3D=3D=3D=3D=3D

The permission model protects itself against path traversal attacks by
calling path.resolve() on any paths given by the user. If the path is to
be treated as a Buffer, the implementation uses Buffer.from() to obtain
a Buffer from the result of path.resolve().

By monkey-patching Buffer internals, namely, Buffer.prototype.utf8Write,
the application can modify the result of path.resolve(), which leads to
a path traversal vulnerability.

Impacts:

- All users using the experimental permission model in active release
 lines: 20.x and 21.x.

Please note that at the time this CVE was issued, the permission model
is an experimental feature of Node.js.

=3D=3D=3D=3D=3D=3D
setuid() does not drop all privileges due to io_uring
(CVE-2024-22017) - (High)
=3D=3D=3D=3D=3D=3D

setuid() does not affect libuv's internal io_uring operations if
initialized before the call to setuid().

This allows the process to perform privileged operations despite
presumably having dropped such privileges through a call to setuid().

Impacts:

- All users in active release lines: 20.x, and 21.x.

=3D=3D=3D=3D=3D=3D
Node.js is vulnerable to the Marvin Attack (timing variant of the
Bleichenbacher attack against PKCS#1 v1.5 padding)
(CVE-2023-46809) - (Medium)
=3D=3D=3D=3D=3D=3D

A vulnerability in the privateDecrypt() API of the crypto library,
allowed a covert timing side-channel during PKCS#1 v1.5 padding error
handling.

The vulnerability revealed significant timing differences in decryption
for valid and invalid ciphertexts.

This poses a serious threat as attackers could remotely exploit the
vulnerability to decrypt captured RSA ciphertexts or forge signatures,
especially in scenarios involving API endpoints processing Json Web
Encryption messages.

Impacts:

- All users in all active release lines: 18.x, 20.x, and 21.x.

=3D=3D=3D=3D=3D=3D
Multiple permission model bypasses due to improper path traversal
sequence sanitization
(CVE-2024-21891) - (Medium)
=3D=3D=3D=3D=3D=3D

Node.js depends on multiple built-in utility functions to normalize
paths provided to node:fs functions, which can be overwitten with
user-defined implementations leading to filesystem permission model
bypass through path traversal attack.

Impacts:

- All users using the experimental permission model in active release
 lines: 20.x and 21.x.

Please note that at the time this CVE was issued, the permission model
is an experimental feature of Node.js.

=3D=3D=3D=3D=3D=3D
Improper handling of wildcards in --allow-fs-read and --allow-fs-write
(CVE-2024-21890) - (Medium)
=3D=3D=3D=3D=3D=3D

The Node.js Permission Model does not clarify in the documentation that
wildcards should be only used as the last character of a file path.

For example: --allow-fs-read=3D/home/node/.ssh/*.pub will ignore pub and
give access to everything after .ssh/.

Impacts:

- This misleading documentation affects all users using the experimental
 permission model in active release lines: 20.x and 21.x.

Please note that at the time this CVE was issued, the permission model
is an experimental feature of Node.js.

=3D=3D=3D=3D=3D=3D
Updates on the release timings
=3D=3D=3D=3D=3D=3D

(Update 13-February-2024) Security Release target Wednesday 14th

Due to a long pipeline test on this security release, additional time
was required. Therefore, the new target date is Wednesday 14th.

(Update 08-February-2024) Security Release target Tuesday 13th

We have encounted an error in one of our patches, therefore, the release
will take a bit longer than expected and the Node.js Security Releases
should be available on, or shortly after, Tuesday, February 13th, 2024.

(Update 06-February-2024) Security Release target Thursday 8th

Preparing the releases is taking us a bit longer than originally
expected and the Node.js Security Releases will be available on, or
shortly after, Thursday, February 8th, 2024.

=3D=3D=3D=3D=3D=3D
OpenSSL Security updates
=3D=3D=3D=3D=3D=3D

This security release includes an OpenSSL update to version 3.0.13+quic1
on all release lines to address advisories:

- OpenSSL security advisory 6th November =3D>  Excessive time spent in DH
 check / generation with large Q parameter value, CVE-2023-5678.
https://mta.openssl.org/pipermail/openssl-announce/2023-November/000284.html

- OpenSSL security advisory 9th January =3D> POLY1305 MAC implementation
 corrupts vector registers on PowerPC, CVE-2023-6129.
https://mta.openssl.org/pipermail/openssl-announce/2024-January/000288.html

- OpenSSL security advisory 15th January =3D> Excessive time spent
 checking invalid TSA public keys, CVE-2023-6237.
https://mta.openssl.org/pipermail/openssl-announce/2024-January/000289.html

- OpenSSL security advisory 25th January =3D> PKCS12 Decoding crashes,
 CVE-2024-0727.
https://mta.openssl.org/pipermail/openssl-announce/2024-January/000292.html

--Apple-Mail=_EE5C298B-91FD-4159-A6C4-9D68384DC923--
