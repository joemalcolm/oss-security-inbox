Received: (qmail 25614 invoked by uid 550); 2 May 2026 18:15:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11698 invoked from network); 2 May 2026 16:05:11 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: =?UTF-8?Q?Jean-Baptiste_Onofr=C3=A9?= <jbonofre@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <36cf1c67-de7f-31bc-3322-5ab2a9c97d2c@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sat, 02 May 2026 16:03:19 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-42812: Apache Polaris: No protection on
 `write.metadata.path` 

Severity: important=20

Affected versions:

- Apache Polaris before 1.4.1

Description:

In Apache Iceberg, the table's metadata files are control files: they tell =
readers
which data files belong to the table and which table version to read.



`write.metadata.path` is an optional table property that tells Polaris
where to
write those metadata files.=20
For a table already registered in a
Polaris-managed
catalog, changing only that property through an `ALTER TABLE`-style settings
change (not a row-level `INSERT`, `SELECT`, `UPDATE`, or `DELETE`) bypasses
the commit-time branch that is supposed to revalidate storage locations.

The full persisted / credential-vending variant requires the affected
catalog
to have `polaris.config.allow.unstructured.table.location=3Dtrue`, with
`allowedLocations` broad enough to include the attacker-chosen target.


`allowedLocations` is the admin-configured allowlist of storage paths that
the
catalog is allowed to use. Public project materials suggest that this flag
is a
real supported compatibility / layout mode, not just a contrived lab-only
prerequisite.


In that configuration, a user who can change table settings can cause Apach=
e Polaris
itself to write new table metadata to an attacker-chosen reachable storage
location before the intended location-validation branch runs.

If the later concrete-path validation also accepts that location, Polaris
persists the resulting metadata path into stored table state. Later
table-load
and credential APIs can then return temporary cloud-storage credentials for
the
same location without revalidating it. In plain terms, Polaris can later
hand
out temporary storage access for the same attacker-chosen area.

That attacker-chosen area does not need to be limited to the poisoned
table's
own files. If it is a broader storage prefix, another table's prefix, or,
depending on configuration or provider behavior, even a bucket/container
root,
the resulting disclosure or corruption scope can extend to any data and
metadata Polaris can reach there.



The practical consequences are therefore similar to the staged-create
credential-vending issue already discussed: data and metadata reachable in
that
storage scope can be exposed and, if write-capable credentials are later
issued, modified, corrupted, or removed. Even before that later credential
step, Polaris itself performs the metadata write to the unchecked location.

So the core issue is not only later credential vending.=20

The primary defect
is
that Polaris skips its intended location checks before performing a
security-
sensitive metadata write when only `write.metadata.path` changes.



When `polaris.config.allow.unstructured.table.location=3Dfalse`, current co=
de
review suggests the later `updateTableLike(...)` validation usually rejects
out-of-tree metadata locations before the unsafe path is persisted. That may
reduce the persisted / credential-vending variant, but it does not prevent
the
underlying defect: Polaris still skips the intended pre-write location check
when only `write.metadata.path` changes.

References:

https://polaris.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2026-42812

