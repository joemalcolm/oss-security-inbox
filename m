Received: (qmail 3681 invoked by uid 550); 19 Mar 2025 17:07:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17591 invoked from network); 19 Mar 2025 15:35:35 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Min Ji <jimin@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <6cc9ea67-a0ea-f90c-4fd3-d734bbfba28e@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 19 Mar 2025 15:33:56 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-54016: compression bomb attack in Apache Seata Server 

Severity: Low

Affected versions:

- Apache Seata (incubating) through <=3D2.2.0

Description:

Improper Handling of Highly Compressed Data (Data Amplification) vulnerabil=
ity in Apache Seata (incubating).

This issue affects Apache Seata (incubating): through <=3D2.2.0.

Users are recommended to upgrade to version 2.3.0, which fixes the issue.

Credit:

yyjLF@proton.me (finder)

References:

https://seata.incubator.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-54016

