Received: (qmail 32027 invoked by uid 550); 1 Mar 2024 22:42:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22202 invoked from network); 1 Mar 2024 14:29:52 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Brahma Reddy Battula <brahma@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <27bed20a-2214-91ba-2fce-42b651099354@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 01 Mar 2024 14:31:18 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-50378: Apache Ambari: Various XSS problems 

Severity: important

Affected versions:

- Apache Ambari 2.7.0 through 2.7.7

Description:

Lack of proper input validation and constraint enforcement in Apache Ambari=
 prior to 2.7.8=C2=A0=C2=A0

=C2=A0Impact : As it will be stored XSS,=C2=A0Could be exploited to perform=
 unauthorized actions, varying from data access to session hijacking and de=
livering malicious payloads.=20

Users are recommended to upgrade to version  2.7.8 which fixes this issue.

References:

https://ambari.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-50378

