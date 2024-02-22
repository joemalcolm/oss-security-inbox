Received: (qmail 6130 invoked by uid 550); 22 Feb 2024 14:51:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13331 invoked from network); 22 Feb 2024 08:41:15 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Enxin Xie <linkinstar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <73fe470c-7887-0bf9-64da-948a7dd32a69@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 22 Feb 2024 08:44:24 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-26578: Apache Answer: Repeated submission at registration
 created duplicate users with the same name 

Severity: moderate

Affected versions:

- Apache Answer through 1.2.1

Description:

Concurrent Execution using Shared Resource with Improper Synchronization ('=
Race Condition') vulnerability in Apache Answer.This issue affects Apache A=
nswer: through 1.2.1.

Repeated submission during registration resulted in the registration of the=
 same user. When users register, if they rapidly submit multiple registrati=
ons using scripts, it can result in the creation of multiple user accounts =
simultaneously with the same name.
Users are recommended to upgrade to version [1.2.5], which fixes the issue.

Credit:

Mohammad Reza Omrani (reporter)

References:

https://answer.incubator.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-26578

