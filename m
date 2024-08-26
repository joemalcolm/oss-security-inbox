Received: (qmail 12215 invoked by uid 550); 26 Aug 2024 15:16:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23962 invoked from network); 26 Aug 2024 13:50:01 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <cf030995-28b2-f9f7-342a-5713f6461264@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 26 Aug 2024 13:49:01 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-49582: Apache Portable Runtime (APR): Unexpected lax
 shared memory permissions 

Severity: moderate

Affected versions:

- Apache Portable Runtime (APR) 0.9.0 through 1.7.4

Description:

Lax permissions set by the Apache Portable Runtime library on Unix platform=
s would allow local users read access to named shared memory segments, pote=
ntially revealing sensitive application data.=20

This issue does not affect non-Unix platforms, or builds with=C2=A0APR_USE_=
SHMEM_SHMGET=3D1 (apr.h)

Users are recommended to upgrade to APR version 1.7.5, which fixes this iss=
ue.

Credit:

Thomas Stangner (reporter)

References:

https://apr.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-49582

Timeline:

2023-02-08: Discussion on public mailing list https://lists.apache.org/thre=
ad/h5f1c2dqm8bf5yfosw3rg85927p612l0
2023-11-15: Reported to security team

