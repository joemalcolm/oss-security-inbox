Received: (qmail 32654 invoked by uid 550); 19 Mar 2025 17:07:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 4057 invoked from network); 19 Mar 2025 15:32:05 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Min Ji <jimin@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <d56298f8-3998-4262-d5b4-94f532f04c9e@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 19 Mar 2025 15:31:52 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-47552: Apache Seata (incubating): Deserialization of
 untrusted Data in jraft mode in Apache Seata Server 

Severity: low

Affected versions:

- Apache Seata (incubating) 2.0.0 before 2.2.0

Description:

Deserialization of Untrusted Data vulnerability in Apache Seata (incubating=
).

This issue affects Apache Seata (incubating): from 2.0.0 before 2.2.0.

Users are recommended to upgrade to version 2.2.0, which fixes the issue.

Credit:

liuhuajin<liuhuajin1@huawei.com> (finder)
llqxc369@gmail.com (finder)

References:

https://seata.incubator.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-47552

