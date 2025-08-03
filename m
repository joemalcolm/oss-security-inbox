Received: (qmail 8054 invoked by uid 550); 3 Aug 2025 17:48:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18003 invoked from network); 3 Aug 2025 09:59:32 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: PJ Fanning <fanningpj@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <3319dcff-5d41-ff72-7b1f-d32e553d8f54@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 03 Aug 2025 09:59:20 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-52279: Apache Zeppelin: Arbitrary file read by adding
 malicious JDBC connection string 

Severity: moderate=20

Affected versions:

- Apache Zeppelin (org.apache.zeppelin:zeppelin-jdbc) 0.11.1 before 0.12.0

Description:

Improper Input Validation vulnerability in Apache Zeppelin. The fix for JDB=
C URL validation in CVE-2024-31864 did not account for URL encoded input.

This issue affects Apache Zeppelin: from 0.11.1 before 0.12.0.

Users are recommended to upgrade to version 0.12.0, which fixes the issue.

Credit:

H Ming (finder)

References:

https://github.com/apache/zeppelin/pull/4838
https://issues.apache.org/jira/browse/ZEPPELIN-6095
https://www.cve.org/CVERecord?id=3DCVE-2024-31864
https://zeppelin.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-52279

