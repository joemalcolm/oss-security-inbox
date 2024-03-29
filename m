Received: (qmail 24185 invoked by uid 550); 29 Mar 2024 14:36:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26206 invoked from network); 29 Mar 2024 14:31:19 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Arnout Engelen <engelen@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <c31a0654-b7d5-ba5f-1f0b-45ce8764d4e6@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 29 Mar 2024 14:34:53 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-23539: Apache Fineract: Under certain system
 configurations, the sqlSearch parameter for specific endpoints was
 vulnerable to SQL injection attacks, potentially allowing attackers to
 manipulate database queries.  

Severity: critical

Affected versions:

- Apache Fineract through 1.8.4

Description:

Improper Neutralization of Special Elements used in an SQL Command ('SQL In=
jection') vulnerability in Apache Fineract.This issue affects Apache Finera=
ct: <1.8.5.

Users are recommended to upgrade to version 1.8.5 or 1.9.0, which fix the i=
ssue.

Credit:

Yash Sancheti of GH Solutions Consultants (finder)

References:

https://cwiki.apache.org/confluence/display/FINERACT/Apache+Fineract+Securi=
ty+Report
https://fineract.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-23539

