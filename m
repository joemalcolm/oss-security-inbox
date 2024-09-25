Received: (qmail 30024 invoked by uid 550); 25 Sep 2024 14:26:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21797 invoked from network); 25 Sep 2024 06:28:27 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Enxin Xie <linkinstar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <16a2094c-dfa6-a448-b9c7-76ba2dc86f66@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 25 Sep 2024 06:28:16 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-40761: Apache Answer: Avatar URL leaked user email
 addresses 

Severity: low

Affected versions:

- Apache Answer through 1.3.5

Description:

Inadequate Encryption Strength vulnerability in Apache Answer.

This issue affects Apache Answer: through 1.3.5.

Using the MD5 value of a user's email to access Gravatar is insecure and ca=
n lead to the leakage of user email. The official recommendation is to use =
SHA256 instead.
Users are recommended to upgrade to version 1.4.0, which fixes the issue.

Credit:

=E5=BC=A0=E5=B2=B3=E7=86=99 (reporter)

References:

https://answer.incubator.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-40761

