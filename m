Received: (qmail 14136 invoked by uid 550); 12 Feb 2026 18:49:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3520 invoked from network); 12 Feb 2026 18:03:53 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ryan Skraba <rskraba@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <d9267ca2-7cbe-7a62-3fea-4bac86a7a5f4@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 12 Feb 2026 18:03:27 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-33042: Apache Avro Java SDK: Code injection on Java
 generated code 

Severity: moderate=20

Affected versions:

- Apache Avro Java SDK (org.apache.avro:avro) through 1.11.4
- Apache Avro Java SDK (org.apache.avro:avro) 1.12.0

Description:

Improper Control of Generation of Code ('Code Injection') vulnerability in =
Apache Avro Java SDK when generating specific records from untrusted Avro s=
chemas.

This issue affects Apache Avro Java SDK: all versions through 1.11.4 and ve=
rsion=C2=A01.12.0.

Users are recommended to upgrade to version 1.12.1 or 1.11.5, which fix the=
 issue.

This issue is being tracked as AVRO-4053=20

Credit:

Brant Eckert (finder)

References:

https://avro.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-33042
https://issues.apache.org/jira/browse/AVRO-4053

