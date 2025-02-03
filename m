Received: (qmail 9321 invoked by uid 550); 3 Feb 2025 23:18:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1927 invoked from network); 3 Feb 2025 23:11:46 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Paulo Motta <paulo@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <3ecc1752-ffb3-ff67-dc8f-28d2b9ae85e9@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 03 Feb 2025 23:11:24 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-23015: Apache Cassandra: User with MODIFY permission on
 ALL KEYSPACES can escalate privileges to superuser via unsafe actions 

Severity: moderate

Affected versions:

- Apache Cassandra 3.0.0 through 3.0.30
- Apache Cassandra 3.1.0 through 3.11.17
- Apache Cassandra 4.0.0 through 4.0.15
- Apache Cassandra 4.1.0 through 4.1.7
- Apache Cassandra 5.0.0 through 5.0.2

Description:

Privilege Defined With Unsafe Actions vulnerability in Apache Cassandra. An=
 user with MODIFY permission ON ALL KEYSPACES can escalate privileges to su=
peruser within a targeted Cassandra cluster via unsafe actions to a system =
resource. Operators granting data MODIFY permission on all keyspaces on aff=
ected versions should review data access rules for potential breaches.

This issue affects Apache Cassandra through 3.0.30, 3.11.17, 4.0.15, 4.1.7,=
 5.0.2.

Users are recommended to upgrade to versions 3.0.31, 3.11.18, 4.0.16, 4.1.8=
, 5.0.3, which fixes the issue.

This issue was reported by Adam Pond, Ali Mirheidari, Terry Thibault, and W=
ill Brattain of Apple Services Engineering Security.

References:

https://cassandra.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-23015

