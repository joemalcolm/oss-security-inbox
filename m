Received: (qmail 11469 invoked by uid 550); 14 Feb 2025 14:39:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15571 invoked from network); 14 Feb 2025 07:36:35 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Nikita Amelchev <namelchev@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <83a1572b-ac91-f4fe-bbe3-047b72bc94b2@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 14 Feb 2025 07:36:25 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-52577: Apache Ignite: Possible RCE when deserializing
 incoming messages by the server node 

Affected versions:

- Apache Ignite 2.6.0 before 2.17.0

Description:

In Apache Ignite versions from 2.6.0 and before 2.17.0, configured Class Se=
rialization Filters are ignored for some Ignite endpoints. The vulnerabilit=
y could be exploited if an attacker manually crafts an Ignite message conta=
ining a vulnerable object whose class is present in the Ignite server class=
path and sends it to Ignite server endpoints. Deserialization of such a mes=
sage by the Ignite server may result in the execution of arbitrary code on =
the Apache Ignite server side.

This issue is being tracked as IGNITE-23594=20

Credit:

zhattatey (zhattatey@gmail.com) (finder)
zhattatey (zhattatey@gmail.com) (reporter)
Mikhail Petrov (mpetrov@apache.org) (remediation developer)
Alex Plehanov (plehanov.alex@gmail.com) (remediation reviewer)

References:

https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2024-52577
https://ignite.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-52577
https://issues.apache.org/jira/browse/IGNITE-23594

