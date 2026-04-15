Received: (qmail 3759 invoked by uid 550); 15 Apr 2026 00:40:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 29705 invoked from network); 15 Apr 2026 00:24:19 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Kai Wan <wankai@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <52ac0662-d6b5-6d39-71b8-23f00af7fa69@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 15 Apr 2026 00:24:09 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-30778: Apache SkyWalking: The SkyWalking OAP
 /debugging/config/dump endpoint may leak sensitive configuration
 information of MySQL/PostgreSQL. 

Severity: moderate=20

Affected versions:

- Apache SkyWalking 9.7.0 through 10.3.0

Description:

The SkyWalking OAP /debugging/config/dump endpoint may leak sensitive confi=
guration information of MySQL/PostgreSQL.

This issue affects Apache SkyWalking: from 9.7.0 through 10.3.0.

Users are recommended to upgrade to version 10.4.0, which fixes the issue.

Credit:

shuiboye@gmail.com (reporter)

References:

https://skywalking.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-30778

