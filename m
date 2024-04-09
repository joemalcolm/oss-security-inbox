Received: (qmail 30212 invoked by uid 550); 9 Apr 2024 14:44:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25778 invoked from network); 9 Apr 2024 14:43:53 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jongyoul Lee <jongyoul@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <01b804f6-7fd4-1f35-9333-d0539db66983@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Apr 2024 14:43:43 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-31865: Apache Zeppelin: Cron arbitrary user impersonation
 with improper privileges 

Severity: moderate

Affected versions:

- Apache Zeppelin 0.8.2 before 0.11.1

Description:

Improper Input Validation vulnerability in Apache Zeppelin.

The attackers can call updating cron API with invalid or improper privilege=
s so that the notebook can run with the privileges.

This issue affects Apache Zeppelin: from 0.8.2 before 0.11.1.

Users are recommended to upgrade to version 0.11.1, which fixes the issue.

Credit:

Esa Hiltunen (finder)
https://teragrep.com (finder)

References:

https://github.com/apache/zeppelin/pull/4631
https://zeppelin.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-31865

