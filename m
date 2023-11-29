Received: (qmail 15586 invoked by uid 550); 30 Nov 2023 11:04:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3932 invoked from network); 29 Nov 2023 23:02:44 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: =?UTF-8?Q?C=C3=A9dric_Damioli?= <cdamioli@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <6d19c7c3-3070-062b-e705-275e15abc645@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 29 Nov 2023 23:02:30 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-45135: Apache Cocoon: SQL injection in
 DatabaseCookieAuthenticatorAction 

Severity: moderate

Affected versions:

- Apache Cocoon 2.2.0 before 2.3.0

Description:

Improper Neutralization of Special Elements used in an SQL Command ('SQL In=
jection') vulnerability in Apache Cocoon.This issue affects Apache Cocoon: =
from 2.2.0 before 2.3.0.

Users are recommended to upgrade to version 2.3.0, which fixes the issue.

Credit:

QSec-Team (finder)

References:

https://cocoon.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2022-45135

