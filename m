Received: (qmail 7838 invoked by uid 550); 11 Sep 2024 12:18:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25867 invoked from network); 11 Sep 2024 12:12:42 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Min Ji <jimin@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <d970a126-40e8-a4bd-ee84-c5e357b2f49e@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 11 Sep 2024 12:11:32 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-22399: Apache Seata: Remote Code Execution vulnerability
 via Hessian Deserialization in Apache Seata Server 

Severity: moderate

Affected versions:

- Apache Seata 2.0.0
- Apache Seata 1.0.0 through 1.8.0

Description:

Deserialization of Untrusted Data vulnerability in Apache Seata.This issue =
affects Apache Seata: 2.0.0, from 1.0.0 through 1.8.0.

Users are recommended to upgrade to version 2.1.0/1.8.1, which fixes the is=
sue.

Credit:

X1r0z(exp10it666123@gmail.com) (finder)

References:

https://seata.incubator.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-22399

