Received: (qmail 7993 invoked by uid 550); 30 May 2025 21:30:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20150 invoked from network); 30 May 2025 08:18:03 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <89e1b57e-ac38-b475-49f5-a7ca921731e6@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 30 May 2025 08:17:51 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-48912: Apache Superset: Improper authorization bypass on
 row level security via SQL Injection 

Affected versions:

- Apache Superset before 4.1.2

Description:

An authenticated malicious actor using specially crafted requests could byp=
ass row level security configuration by injecting SQL into 'sqlExpression' =
fields. This allowed the execution of sub-queries to evade parsing defenses=
 ultimately granting unauthorized access to data.

This issue affects Apache Superset: before 4.1.2.

Users are recommended to upgrade to version 4.1.2, which fixes the issue.

Credit:

Pedro Sousa (coordinator)
Beto de Almeida (remediation developer)
Mirakl Security (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-48912

