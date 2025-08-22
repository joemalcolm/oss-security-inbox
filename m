Received: (qmail 14201 invoked by uid 550); 22 Aug 2025 17:11:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17599 invoked from network); 22 Aug 2025 16:15:09 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Huajie Wang <benjobs@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <a262d809-ae5b-c3e9-5a45-c83f51356cda@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 22 Aug 2025 16:11:35 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-48988: Apache StreamPark: SQL injection vulnerability 

Severity: low=20

Affected versions:

- Apache StreamPark 2.1.4 before 2.1.6

Description:

SQL Injection vulnerability in Apache StreamPark.

This issue affects Apache StreamPark: from 2.1.4 before 2.1.6.

Users are recommended to upgrade to version 2.1.6, which fixes the issue.


This vulnerability is present only in the distribution package (SpringBoot =
platform) and does not involve Maven artifacts.
It can only be exploited after a user has successfully logged into the plat=
form (implying that the attacker would first need to compromise the login a=
uthentication).=20
As a result, the associated risk is considered relatively low.

Credit:

Xingchen Chen, Ze Jin, wh1t3p1g, yhbl, Qixu Liu  Institute of Information E=
ngineering, CAS (reporter)

References:

https://streampark.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-48988

