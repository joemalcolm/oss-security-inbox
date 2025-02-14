Received: (qmail 15370 invoked by uid 550); 14 Feb 2025 14:43:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20438 invoked from network); 14 Feb 2025 11:53:22 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Xue Weiming <mikexue@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <1526e64d-6ff0-bf7a-962d-4fa92aaa97e3@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 14 Feb 2025 11:53:11 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-56180: Apache EventMesh: raft Hessian Deserialization
 Vulnerability allowing remote code execution 

Severity: moderate

Affected versions:

- Apache EventMesh unaffected

Description:

CWE-502 Deserialization of Untrusted Data at the eventmesh-meta-raft=C2=A0p=
lugin=C2=A0module in Apache EventMesh master branch without release version=
 on windows\linux\mac os e.g. platforms allows attackers to send controlled=
 message and remote code execute=C2=A0via hessian deserialization rpc proto=
col. Users can use the code under the master branch in project repo or vers=
ion 1.11.0-release to fix this issue.

Credit:

yulate (reporter)
Au5t1n (reporter)
h3h3qaq (reporter)
X1r0z (reporter)

References:

https://eventmesh.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-56180

