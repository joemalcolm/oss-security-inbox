Received: (qmail 6028 invoked by uid 550); 9 Aug 2024 12:33:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22359 invoked from network); 9 Aug 2024 10:40:21 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Enxin Xie <linkinstar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <7c5180a3-8a7f-efd1-c87c-572e9b70f6e5@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 09 Aug 2024 10:39:05 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-41888: Apache Answer: The link for resetting user
 password is not Single-Use 

Severity: moderate

Affected versions:

- Apache Answer through 1.3.5

Description:

Missing Release of Resource after Effective Lifetime vulnerability in Apach=
e Answer.

This issue affects Apache Answer: through 1.3.5.

The password reset link remains valid within its expiration period even aft=
er it has been used. This could potentially lead to the link being misused =
or hijacked.
Users are recommended to upgrade to version 1.3.6, which fixes the issue.

Credit:

Mohammad Reza Omrani (reporter)

References:

https://answer.incubator.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-41888

