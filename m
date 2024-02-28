Received: (qmail 12271 invoked by uid 550); 28 Feb 2024 14:05:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11733 invoked from network); 28 Feb 2024 10:09:27 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <0d74971a-3e67-e36e-1445-0ccc5260699d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 28 Feb 2024 10:12:53 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-24773: Apache Superset: Improper validation of SQL
 statements allows for unauthorized access to data  

Affected versions:

- Apache Superset before 3.0.4
- Apache Superset 3.1.0 before 3.1.1

Description:

Improper parsing of nested SQL statements on SQLLab would allow authenticat=
ed users to surpass their data authorization scope.
This issue affects Apache Superset: before 3.0.4, from 3.1.0 before 3.1.1.

Users are recommended to upgrade to version 3.1.1, which fixes the issue.

Credit:

Beto Ferreira De Almeida (remediation developer)
Daniel Vaz Gaspar (coordinator)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-24773

