Received: (qmail 24483 invoked by uid 550); 14 Jan 2025 15:04:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19672 invoked from network); 14 Jan 2025 13:01:11 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Heping Wang <peacewong@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <8ff255f0-157c-8223-8db0-e43041913941@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jan 2025 13:01:00 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-45627: Apache Linkis Metadata Query Service JDBC: JDBC
 Datasource Module with Mysql has file read vulnerability 

Severity: important

Affected versions:

- Apache Linkis Metadata Query Service JDBC 1.5.0 before 1.7.0

Description:

In Apache Linkis <1.7.0, due to the lack of effective filtering
of parameters, an attacker configuring malicious Mysql JDBC parameters in t=
he DataSource Manager Module will=20

allow the attacker to read arbitrary files from the Linkis server. Therefor=
e, the parameters in the Mysql JDBC URL should be blacklisted. This attack =
requires the attacker to obtain an authorized account from Linkis before it=
 can be carried out. Versions of Apache Linkis < 1.6.0 will be affected.=20
We recommend users upgrade the version of Linkis to version 1.7.0.

Credit:

Le1a (reporter)

References:

https://linkis.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-45627

