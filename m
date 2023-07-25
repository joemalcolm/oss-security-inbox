Received: (qmail 7638 invoked by uid 550); 25 Jul 2023 08:59:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25981 invoked from network); 25 Jul 2023 02:33:27 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Charles Zhang <dockerzhang@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <cbfab1ae-27dd-ec5a-ce17-13c69bb3b488@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 25 Jul 2023 02:33:14 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-35088: Apache InLong: SQL injection in audit endpoint 

Severity: moderate

Affected versions:

- Apache InLong 1.4.0 through 1.7.0

Description:

Improper Neutralization of Special Elements Used in an SQL Command ('SQL In=
jection') vulnerability in Apache Software Foundation Apache InLong.This is=
sue affects Apache InLong: from 1.4.0 through 1.7.0.=C2=A0
In the toAuditCkSql method, the groupId, streamId, auditId, and dt are dire=
ctly concatenated into the SQL query statement, which may lead to SQL injec=
tion attacks.
Users are advised to upgrade to Apache InLong's 1.8.0 or cherry-pick [1] to=
 solve it.

[1]  https://github.com/apache/inlong/pull/8198

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-35088

