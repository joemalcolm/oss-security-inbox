Received: (qmail 12146 invoked by uid 550); 27 Mar 2025 01:28:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9921 invoked from network); 27 Mar 2025 01:28:19 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Li Yang <liyang@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <437a5886-82d1-3d35-8cb8-5bf865ef3b50@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 27 Mar 2025 01:25:19 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-30067: Apache Kylin: The remote code execution via jdbc
 url 

Severity: low

Affected versions:

- Apache Kylin 4.0.0 through 5.0.1

Description:

Improper Control of Generation of Code ('Code Injection') vulnerability in =
Apache Kylin.=20
If an attacker gets access to Kylin's system or project admin permission, t=
he JDBC connection configuration maybe altered to execute arbitrary code fr=
om the remote. You are fine as long as the Kylin's system and project admin=
 access is well protected.

This issue affects Apache Kylin: from 4.0.0 through 5.0.1.

Users are recommended to upgrade to version 5.0.2 or above, which fixes the=
 issue.

This issue is being tracked as KYLIN-5994=20

Credit:

Pho3n1x <ph03n1x@qq.com> (finder)

References:

https://kylin.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-30067
https://issues.apache.org/jira/browse/KYLIN-5994

