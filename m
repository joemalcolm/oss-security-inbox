Received: (qmail 12146 invoked by uid 550); 19 Dec 2023 13:46:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9742 invoked from network); 19 Dec 2023 09:44:37 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <03fcd35e-e2f6-820a-6f8c-0a32c689243a@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 Dec 2023 09:44:03 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-49734: Apache Superset: Privilege Escalation
 Vulnerability 

Affected versions:

- Apache Superset before 2.1.2
- Apache Superset 3.0.0 before 3.0.2

Description:

An authenticated Gamma user has the ability to create a dashboard and add c=
harts to it, this user would automatically become one of the owners of the =
charts allowing him to incorrectly have write permissions to these charts.T=
his issue affects Apache Superset: before 2.1.2, from 3.0.0 before 3.0.2.

Users are recommended to upgrade to version 3.0.2 or 2.1.3, which fixes the=
 issue.

Credit:

Jordan Velich (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-49734

