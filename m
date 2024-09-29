Received: (qmail 28006 invoked by uid 550); 29 Sep 2024 01:44:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32691 invoked from network); 29 Sep 2024 01:34:40 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Robert Muir <rmuir@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <85b7ba4f-9ddb-7f1b-c583-08f418b5b22f@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 29 Sep 2024 01:34:30 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-45772: Apache Lucene Replicator: Deserialization of Untrusted Data

Severity: low

Affected versions:

- Apache Lucene Replicator 4.4.0 before 9.12.0

Description:

Deserialization of Untrusted Data vulnerability in Apache Lucene Replicator.

This issue affects Apache Lucene's replicator module: from 4.4.0 before 9.1=
2.0.
The deprecated org.apache.lucene.replicator.http package is affected.
The org.apache.lucene.replicator.nrt package is not affected.

Users are recommended to upgrade to version 9.12.0, which fixes the issue.

Java serialization filters (such as=C2=A0-Djdk.serialFilter=3D'!*' on the c=
ommandline) can mitigate the issue on vulnerable versions without impacting=
 functionality.

Credit:

Summ3r from Vidar-Team (finder)
Paul Irwin from Apache Lucene.NET (coordinator)

References:

https://lucene.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-45772

