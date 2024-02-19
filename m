Received: (qmail 25891 invoked by uid 550); 19 Feb 2024 14:44:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8001 invoked from network); 19 Feb 2024 13:31:22 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Andrea Cosentino <acosentino@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <a730f7a3-4138-c6be-0de2-0db7e2778fb4@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 19 Feb 2024 13:34:17 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-22369: Apache Camel: Camel-SQL: Unsafe Deserialization from JDBCAggregationRepository

Severity: important

Affected versions:

- Apache Camel 3.0.0 before 3.21.4
- Apache Camel 3.22.0 before 3.22.1
- Apache Camel 4.0.0 before 4.0.4
- Apache Camel 4.1.0 before 4.4.0

Description:

Deserialization of Untrusted Data vulnerability in Apache Camel SQL Compone=
ntThis issue affects Apache Camel: from 3.0.0 before 3.21.4, from 3.22.0 be=
fore 3.22.1, from 4.0.0 before 4.0.4, from 4.1.0 before 4.4.0.

Users are recommended to upgrade to version 4.4.0, which fixes the issue. I=
f users are on the 4.0.x LTS releases stream, then they are suggested to up=
grade to 4.0.4. If users are on 3.x, they are suggested to move to 3.21.4 o=
r 3.22.1

This issue is being tracked as CAMEL-20303=20

Credit:

Ziyang Chen from HuaWei Open Source Management Center (finder)
Pingtao Wei from HuaWei Open Source Management Center (finder)
Haoran Zhi from HuaWei Open Source Management Center (finder)

References:

https://camel.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-22369
https://issues.apache.org/jira/browse/CAMEL-20303

