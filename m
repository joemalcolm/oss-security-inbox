Received: (qmail 9987 invoked by uid 550); 21 Jun 2024 17:59:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28218 invoked from network); 21 Jun 2024 17:50:16 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: David Philip Brondsema <brondsem@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <5ba6465f-0850-e097-dda4-33a2fffb9efd@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 21 Jun 2024 17:49:12 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-38379: Apache Allura: Stored authenticated XSS 

Severity: moderate

Affected versions:

- Apache Allura 1.4.0 through 1.17.0

Description:

Apache Allura's neighborhood settings are vulnerable to a stored XSS attack=
.=C2=A0 Only neighborhood admins can access these settings, so the scope of=
 risk is limited to configurations where neighborhood admins are not fully =
trusted.

This issue affects Apache Allura: from 1.4.0 through 1.17.0.

Users are recommended to upgrade to version 1.17.1, which fixes the issue.

Credit:

=C3=96mer "WASP" Akincir  (finder)

References:

https://allura.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-38379

