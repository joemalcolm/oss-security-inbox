Received: (qmail 1787 invoked by uid 550); 1 Apr 2025 04:30:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9508 invoked from network); 1 Apr 2025 02:44:50 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Enxin Xie <linkinstar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <429849a9-9c33-6734-470e-5dbee3555f96@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 01 Apr 2025 02:44:41 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-29868: Apache Answer: Using externally referenced images
 can leak user privacy. 

Severity: low

Affected versions:

- Apache Answer through 1.4.2

Description:

Private Data Structure Returned From A Public Method vulnerability in Apach=
e Answer.

This issue affects Apache Answer: through 1.4.2.

If a user uses an externally referenced image, when a user accesses this im=
age, the provider of the image may obtain private information about the ip =
address of that accessing user.
Users are recommended to upgrade to version 1.4.5, which fixes the issue.=
=C2=A0In the new version, administrators can set whether external content c=
an be displayed.

Credit:

Hamed Kohi (reporter)
Luke Smith (reporter)

References:

https://answer.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-29868

