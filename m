Received: (qmail 22021 invoked by uid 550); 17 Dec 2022 00:11:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15427 invoked from network); 16 Dec 2022 22:38:38 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Junkai Xue <jxue@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <57f22782-ca9e-e289-0003-f2044fe5ff61@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 16 Dec 2022 22:38:23 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-47500: Apache Helix: Open redirect 

Severity: low

Description:

URL Redirection to Untrusted Site ('Open Redirect') vulnerability in Apache=
 Software Foundation Apache Helix UI component.This issue affects Apache He=
lix all releases from 0.8.0 to 1.0.4.



Solution: removed the the forward component since it was improper designed =
for UI embedding.

=C2=A0User please upgrade to 1.1.0 to fix this issue.

Credit:

This issue was discovered by Everardo Padilla Saca (reporter)

References:

https://helix.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2022-47500

