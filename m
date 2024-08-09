Received: (qmail 5787 invoked by uid 550); 9 Aug 2024 12:33:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19754 invoked from network); 9 Aug 2024 10:39:19 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Enxin Xie <linkinstar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <3d7439ad-4f0c-aaea-3c3c-0671581ac1cd@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 09 Aug 2024 10:37:54 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-41890: Apache Answer: The link to reset the user's
 password will remain valid after sending a new link 

Severity: moderate

Affected versions:

- Apache Answer through 1.3.5

Description:

Missing Release of Resource after Effective Lifetime vulnerability in Apach=
e Answer.

This issue affects Apache Answer: through 1.3.5.

User sends multiple password reset emails, each containing a valid link. Wi=
thin the link's validity period, this could potentially lead to the link be=
ing misused or hijacked.
Users are recommended to upgrade to version 1.3.6, which fixes the issue.

Credit:

Mohammad Reza Omrani (reporter)

References:

https://answer.incubator.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-41890

