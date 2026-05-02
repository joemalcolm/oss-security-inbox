Received: (qmail 23570 invoked by uid 550); 2 May 2026 18:15:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3885 invoked from network); 2 May 2026 16:03:17 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: =?UTF-8?Q?Jean-Baptiste_Onofr=C3=A9?= <jbonofre@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <379a1d5c-56a0-e733-1691-ce8344955738@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sat, 02 May 2026 16:00:17 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-42810: Apache Polaris: Polaris accepts literal `*`
 characters in namespace and table names. When it later builds temporary S3
 access policies for delegated table access, those same characters appear
 to be reused unescaped in S3 IAM resource patterns and `s3:prefix`
 conditions. 

Severity: important=20

Affected versions:

- Apache Polaris before 1.4.1

Description:

Apache Polaris accepts literal `*` characters in namespace and table names.=
 When it
later builds temporary S3 access policies for delegated table access, those
same characters appear to be reused unescaped in S3 IAM resource patterns
and
`s3:prefix` conditions.



In S3 IAM policy matching, `*` is treated as a wildcard rather than as
ordinary text. That means temporary credentials issued for one crafted table
can match the storage path of a different table.



In private testing against Polaris 1.4.0 using Polaris' AWS S3 temporary-
credential path on both MinIO and real AWS S3, credentials returned for
crafted tables such as `f*.t1`, `f*.*`, `*.*`, and `foo.*` could reach other
tables' S3 locations.


The confirmed behavior includes:


- reading another table's metadata control file ([Iceberg metadata JSON]);

- listing another table's exact S3 table prefix ([table prefix]);

- and, when write delegation was returned for the crafted table, creating
and
deleting an object under another table's exact S3 table prefix.



A control case using ordinary different names did not allow the same
cross-table access.



I also confirmed a least-privilege AWS S3 variant in which the attacker
principal had no Polaris permission on the victim table and only enough
Polaris permission to create and use the crafted wildcard table
(namespace-scoped `TABLE_CREATE` and `TABLE_WRITE_DATA` on `*`). In that
setup, direct Polaris access to `foo.t1` remained forbidden, but the
attacker
could still create and load `*.*`, receive delegated S3 credentials, and use
those credentials to list, read, create, and delete objects under `foo.t1`.



In Iceberg, the metadata JSON file is a control file: it tells readers which
data files belong to the table, which snapshots exist, and which table
version
to read. So unauthorized access to it is already a meaningful
confidentiality
problem. The confirmed write-capable variant means the issue is not limited
to
disclosure.

References:

https://polaris.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2026-42810

