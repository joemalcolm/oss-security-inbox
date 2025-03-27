Received: (qmail 12160 invoked by uid 550); 27 Mar 2025 01:28:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1719 invoked from network); 27 Mar 2025 01:25:40 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Li Yang <liyang@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <3f686759-fe4a-59e7-c03b-a10e69815b1e@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 27 Mar 2025 01:24:49 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-48944: Apache Kylin: SSRF vulnerability in the diagnosis
 api 

Severity: low

Affected versions:

- Apache Kylin 5.0.0 through 5.0.1

Description:

Server-Side Request Forgery (SSRF) vulnerability in Apache Kylin. Through a=
 kylin server, an attacker may forge a request to invoke "/kylin/api/xxx/di=
ag" api on another internal host and possibly get leaked information. There=
 are two preconditions: 1) The attacker has got admin access to a kylin ser=
ver; 2) Another internal host has the "/kylin/api/xxx/diag" api

endpoint open for service.


This issue affects Apache Kylin: from 5.0.0=20
through=20

5.0.1.

Users are recommended to upgrade to version 5.0.2, which fixes the issue.

This issue is being tracked as KYLIN-5644=20

Credit:

Zevi <linzmgx@gmail.com> (finder)

References:

https://kylin.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-48944
https://issues.apache.org/jira/browse/KYLIN-5644

