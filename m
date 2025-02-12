Received: (qmail 24072 invoked by uid 550); 12 Feb 2025 15:18:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7577 invoked from network); 12 Feb 2025 09:40:59 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Arnout Engelen <engelen@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <e231282b-8429-69ef-ca1c-0ee127a1409b@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 12 Feb 2025 09:40:12 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-32838: Apache Fineract: SQL injection vulnerabilities in
 offices API endpoint 

Severity: important

Affected versions:

- Apache Fineract 1.4 through 1.9

Description:

SQL Injection vulnerability in various API endpoints - offices, dashboards,=
 etc. Apache Fineract versions 1.9 and before have a vulnerability that all=
ows an authenticated attacker to inject malicious data into some of the RES=
T API endpoints' query parameter.=C2=A0
Users are recommended to upgrade to version 1.10.1, which fixes this issue.

A SQL Validator has been implemented which allows us to configure a series =
of tests and checks against our SQL queries that will allow us to validate =
and protect against nearly all potential SQL injection attacks.

Credit:

Kabilan S - Security engineer at Zoho (finder)
Aleksandar Vidakovic (remediation developer)

References:

https://fineract.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-32838

