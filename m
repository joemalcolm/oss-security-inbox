Received: (qmail 16124 invoked by uid 550); 28 Feb 2024 14:06:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9394 invoked from network); 28 Feb 2024 10:40:42 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <aafa44b7-a57c-d264-ea53-801959ea46cc@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 28 Feb 2024 10:44:04 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-26016: Apache Superset: Improper authorization validation
 on dashboards and charts import 

Affected versions:

- Apache Superset before 3.0.4
- Apache Superset 3.1.0 before 3.1.1

Description:

A low privilege authenticated user could import an existing dashboard or ch=
art that they do not have access to and then modify its metadata, thereby g=
aining ownership of the object. However, it's important to note that access=
 to the analytical data of these charts and dashboards would still be subje=
ct to validation based on data access privileges.

This issue affects Apache Superset: before 3.0.4, from 3.1.0 before 3.1.1.U=
sers are recommended to upgrade to version 3.1.1, which fixes the issue.

Credit:

Daniel Vaz Gaspar (remediation developer)
Matt Freyre (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-26016

