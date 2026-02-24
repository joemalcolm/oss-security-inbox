Received: (qmail 19645 invoked by uid 550); 24 Feb 2026 16:36:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26529 invoked from network); 24 Feb 2026 09:26:33 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <62a401e5-221e-0fb5-161c-1b4b930abed6@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 24 Feb 2026 09:26:05 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-23980: Apache Superset: Improper Neutralization of
 Special Elements used in a SQL Command 

Severity:=20

Affected versions:

- Apache Superset 0.0.0 before 6.0.0

Description:

Improper Neutralization of Special Elements used in a SQL Command ('SQL Inj=
ection') vulnerability in Apache Superset allows an authenticated user with=
 read access to conduct error-based SQL injection via the sqlExpression or =
where parameters.

This issue affects Apache Superset: before 6.0.0.

Users are recommended to upgrade to version 6.0.0, which fixes the issue.

Credit:

Pritam Chakkerwar (finder)
Dhanush Nayak (reporter)
Pedro Sousa (remediation developer)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2026-23980

