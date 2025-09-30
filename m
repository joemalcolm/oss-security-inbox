Received: (qmail 3635 invoked by uid 550); 30 Sep 2025 15:53:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1191 invoked from network); 30 Sep 2025 15:48:13 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Li Yang <liyang@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <436442d0-bf33-ee9a-cc46-581e6e100a3e@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Sep 2025 15:48:03 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-61735: Apache Kylin: Server-Side Request Forgery 

Severity: low=20

Affected versions:

- Apache Kylin 4.0.0 through 5.0.2

Description:

Server-Side Request Forgery (SSRF) vulnerability in Apache Kylin.

This issue affects Apache Kylin: from 4.0.0 through 5.0.2.=C2=A0You are fin=
e as long as the Kylin's system and project admin access is well protected.

Users are recommended to upgrade to version 5.0.3, which fixes the issue.

This issue is being tracked as KYLIN-6082=20

Credit:

liuhuajin <liuhuajin1@huawei.com> (finder)

References:

https://kylin.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-61735
https://issues.apache.org/jira/browse/KYLIN-6082

