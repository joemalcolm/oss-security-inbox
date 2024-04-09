Received: (qmail 5451 invoked by uid 550); 9 Apr 2024 15:12:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17739 invoked from network); 9 Apr 2024 15:09:19 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jongyoul Lee <jongyoul@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <87ad01a6-f153-2d83-84a1-28a0a054b224@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Apr 2024 15:06:59 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-31867: Apache Zeppelin: LDAP search filter query
 Injection Vulnerability 

Severity: moderate

Affected versions:

- Apache Zeppelin 0.8.2 before 0.11.1

Description:

Improper Input Validation vulnerability in Apache Zeppelin.

The attackers can execute malicious queries by setting improper configurati=
on properties to LDAP search filter.
This issue affects Apache Zeppelin: from 0.8.2 before 0.11.1.

Users are recommended to upgrade to version 0.11.1, which fixes the issue.

Credit:

Qing Xu (finder)

References:

https://github.com/apache/zeppelin/pull/4714
https://zeppelin.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-31867

