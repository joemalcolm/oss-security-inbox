Received: (qmail 18015 invoked by uid 550); 28 Nov 2025 14:28:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18120 invoked from network); 28 Nov 2025 14:02:51 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Hulk Lin <hulk@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <cd13723a-74e2-81e2-1521-b10b8eefc55e@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 28 Nov 2025 14:00:49 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-59792: Apache Kvrocks: MONITOR command reveals plaintext
 credentials to non-admins 

Severity: important=20

Affected versions:

- Apache Kvrocks 1.0.0 through 2.13.0

Description:

Reveals plaintext credentials in the MONITOR command vulnerability in Apach=
e Kvrocks.

This issue affects Apache Kvrocks: from 1.0.0 through 2.13.0.

Users are recommended to upgrade to version 2.14.0, which fixes the issue.

Credit:

Mapta / BugBunny_ai (reporter)

References:

https://kvrocks.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-59792

