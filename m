Received: (qmail 21819 invoked by uid 550); 16 Oct 2023 01:55:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3564 invoked from network); 16 Oct 2023 01:52:04 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Charles Zhang <dockerzhang@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <7722f9c4-59ab-8666-a51d-0897c64f5dee@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 16 Oct 2023 01:51:32 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-43666: Apache InLong: General user Unauthorized access
 User Management 

Severity: important

Affected versions:

- Apache InLong 1.4.0 through 1.8.0

Description:

Insufficient Verification of Data Authenticity vulnerability in Apache InLo=
ng.This issue affects Apache InLong: from 1.4.0 through 1.8.0,=C2=A0

General user can view all user data like Admin account.

Users are advised to upgrade to Apache InLong's 1.9.0 or cherry-pick [1] to=
 solve it.

[1]=C2=A0 https://github.com/apache/inlong/pull/8623

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-43666

