Received: (qmail 3689 invoked by uid 550); 22 Nov 2024 15:56:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1947 invoked from network); 22 Nov 2024 13:56:25 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Enxin Xie <linkinstar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <7acd42e4-aea7-d95b-ec33-932f669229fc@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 22 Nov 2024 13:55:18 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-45719: Apache Answer: Predictable Authorization Token
 Using UUIDv1 

Severity: important

Affected versions:

- Apache Answer through 1.4.0

Description:

Inadequate Encryption Strength vulnerability in Apache Answer.

This issue affects Apache Answer: through 1.4.0.

The ids generated using the UUID v1 version are to some extent not secure e=
nough. It can cause the generated token to be predictable.
Users are recommended to upgrade to version 1.4.1, which fixes the issue.

Credit:

Chi Tran from Eevee (reporter)

References:

https://answer.incubator.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-45719

