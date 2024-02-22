Received: (qmail 32661 invoked by uid 550); 22 Feb 2024 14:50:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23558 invoked from network); 22 Feb 2024 07:33:33 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Enxin Xie <linkinstar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <09842ef3-fc2d-8088-7680-1035ff591b98@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 22 Feb 2024 07:36:40 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-23349: Apache Answer: XSS vulnerability when submitting
 summary 

Severity: important

Affected versions:

- Apache Answer through 1.2.1

Description:

Improper Neutralization of Input During Web Page Generation ('Cross-site Sc=
ripting') vulnerability in Apache Answer.This issue affects Apache Answer: =
through 1.2.1.

XSS attack when user enters summary. A logged-in user, when modifying their=
 own submitted question, can input malicious code in the summary to create =
such an attack.

Users are recommended to upgrade to version [1.2.5], which fixes the issue.

Credit:

Lyaa@JeeseenSec (reporter)

References:

https://answer.incubator.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-23349

