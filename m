Received: (qmail 32080 invoked by uid 550); 16 Jul 2024 12:38:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3617 invoked from network); 16 Jul 2024 09:02:02 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <409e184f-4869-36ae-d898-9cc7f6d3183f@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 16 Jul 2024 09:01:50 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-39887: Apache Superset: Improper SQL authorisation, parse
 not checking for specific engine functions 

Affected versions:

- Apache Superset before 4.0.2

Description:

An SQL Injection vulnerability in Apache Superset exists due to improper ne=
utralization of special elements used in SQL commands. Specifically, certai=
n engine-specific functions are not checked, which allows attackers to bypa=
ss Apache Superset's SQL authorization. To mitigate this, a new configurati=
on key named DISALLOWED_SQL_FUNCTIONS has been introduced. This key disallo=
ws the use of the following PostgreSQL functions: version, query_to_xml, in=
et_server_addr, and inet_client_addr. Additional functions can be added to =
this list for increased protection.

This issue affects Apache Superset: before 4.0.2.

Users are recommended to upgrade to version 4.0.2, which fixes the issue.

Credit:

Mike Yushkovskiy (finder)
Daniel Vaz Gaspar (remediation developer)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-39887

