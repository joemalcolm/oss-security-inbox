Received: (qmail 31764 invoked by uid 550); 22 Feb 2024 14:50:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9378 invoked from network); 22 Feb 2024 07:04:11 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Enxin Xie <linkinstar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <7c9fbc9f-01e4-8fa5-6b3c-9203e424b6ea@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 22 Feb 2024 07:07:19 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-22393: Apache Answer: Pixel Flood Attack by uploading the
 large pixel file 

Severity: important

Affected versions:

- Apache Answer through 1.2.1

Description:

Unrestricted Upload of File with Dangerous Type vulnerability in Apache Ans=
wer.This issue affects Apache Answer: through 1.2.1.

Pixel Flood Attack by uploading large pixel files will cause server out of =
memory. A logged-in user=C2=A0can cause such an attack by uploading an imag=
e when posting content.
Users are recommended to upgrade to version [1.2.5], which fixes the issue.

Credit:

Mohammad Reza Omrani (reporter)

References:

https://answer.incubator.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-22393

