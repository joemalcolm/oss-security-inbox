Received: (qmail 30230 invoked by uid 550); 30 Nov 2023 11:18:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26578 invoked from network); 30 Nov 2023 11:16:49 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: =?UTF-8?Q?C=C3=A9dric_Damioli?= <cdamioli@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <16acad3f-b909-c85f-bc41-2d81b5054ba8@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 30 Nov 2023 11:16:38 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-49733: Apache Cocoon's StreamGenerator is vulnerable to
 XXE injection 

Severity: important

Affected versions:

- Apache Cocoon 2.2.0 before 2.3.0

Description:

Improper Restriction of XML External Entity Reference vulnerability in Apac=
he Cocoon.This issue affects Apache Cocoon: from 2.2.0 before 2.3.0.

Users are recommended to upgrade to version 2.3.0, which fixes the issue.

References:

https://cocoon.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-49733

