Received: (qmail 24251 invoked by uid 550); 2 May 2026 18:15:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7241 invoked from network); 2 May 2026 16:03:57 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: =?UTF-8?Q?Jean-Baptiste_Onofr=C3=A9?= <jbonofre@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <f1017815-db33-0d3d-fc56-163e7a88a57d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sat, 02 May 2026 16:01:13 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-42811: Apache Polaris: In plain terms, Polaris is
 supposed to issue short-lived GCS credentials that only work for one
 table's files, but a crafted namespace or table name can cause those
 credentials to work across the configured bucket instead. 

Severity: important=20

Affected versions:

- Apache Polaris before 1.4.1

Description:

In plain terms, Apache Polaris is supposed to issue short-lived GCS credent=
ials
that
only work for one table's files, but a crafted namespace or table name can
cause those credentials to work across the configured bucket instead.


Apache Polaris builds Google Cloud Storage downscoped credentials by creati=
ng a
Credential Access Boundary (CAB) with CEL conditions that are intended to
restrict access to the requested table's storage path.



The relevant CEL string is built from the bucket name and the table path.
That
table path is derived from namespace and table identifiers. In current code,
that path appears to be inserted into the CEL expression without escaping.



As a result, a namespace or table identifier containing a single quote and
other URI-safe CEL fragments can break out of the intended quoted string and
change the meaning of the CEL condition.



In private testing against Polaris 1.4.0 on real Google Cloud Storage, I
confirmed that Polaris accepted a crafted identifier and returned delegated
GCS
credentials whose CEL path restriction had effectively collapsed.


Those delegated credentials could then:


- list another table's object prefix;

- read another table's metadata control file (Iceberg metadata JSON);

- create and delete an object under another table's object prefix;

- and also list, read, create, and delete objects under an unrelated
external
prefix in the same bucket that was not part of any table path.



That last point is important. The issue is not limited to "another table".
In
the confirmed setup, once Apache Polaris returned credentials for the craft=
ed
table,
the path restriction inside the configured bucket was effectively gone.

The practical effect is that temporary credentials for one crafted table
can be
broader than the table Polaris was asked to authorize, and can become
effectively bucket-wide within the configured bucket.



The current GCS repro uses a Polaris principal with broad catalog privileges
for setup. I have not yet repeated the separate least-privilege Polaris-RBAC
variant on GCS. However, the storage-credential broadening itself is
confirmed
on real GCS.

References:

https://polaris.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2026-42811

