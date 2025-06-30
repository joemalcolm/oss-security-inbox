Received: (qmail 22384 invoked by uid 550); 30 Jun 2025 03:38:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9639 invoked from network); 30 Jun 2025 03:09:43 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Xue Weiming <mikexue@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <1f5dfc41-3641-64e5-8531-6c10f28f5602@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 30 Jun 2025 03:09:33 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-39954: Apache EventMesh Runtime: SSRF 

Severity: low=20

Affected versions:

- Apache EventMesh Runtime (org.apache.eventmesh:eventmesh-runtime) 1.6.0 t=
hrough 1.11.0

Description:

CWE-918 Server-Side Request Forgery (SSRF) in eventmesh-runtime module in W=
ebhookUtil.java on windows\linux\mac os e.g. allows the attacker can abuse =
functionality on the server to read or update internal resources.
Users are recommended to upgrade to version 1.12.0 or use the master branch=
 , which fixes this issue.

Credit:

Mak1r 808 <808mak1r@gmail.com> (reporter)

References:

https://eventmesh.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-39954

