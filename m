Received: (qmail 14234 invoked by uid 550); 28 Nov 2024 17:35:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11350 invoked from network); 28 Nov 2024 16:21:35 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Dewey Dunnington <paleolimbot@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <e1b7db91-ab63-8e45-b00b-c72111846618@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 28 Nov 2024 16:20:39 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-52338: Apache Arrow R package: Arbitrary code execution
 when loading a malicious data file 

Severity: critical

Affected versions:

- Apache Arrow R package 4.0.0 through 16.1.0

Description:

Deserialization of untrusted data in IPC and Parquet readers in the Apache =
Arrow R package versions=C2=A04.0.0 through 16.1.0 allows arbitrary code ex=
ecution. An application is vulnerable if it=20
reads Arrow IPC, Feather or Parquet data from untrusted sources (for=20
example, user-supplied input files). This vulnerability only affects the ar=
row R package, not other Apache Arrow=20
implementations or bindings unless those bindings are specifically used via=
 the R package (for example, an R application that embeds a Python interpre=
ter and uses PyArrow to read files from untrusted sources is still vulnerab=
le if the arrow R package is an affected version). It is recommended that u=
sers of the arrow R package upgrade to 17.0.0 or later. Similarly, it
 is recommended that downstream libraries upgrade their dependency=20
requirements to arrow 17.0.0 or later. If using an affected
version of the package, untrusted data can read into a Table and its intern=
al to_data_frame() method can be used as a workaround (e.g., read_parquet(.=
.., as_data_frame =3D FALSE)$to_data_frame()).


This issue affects the Apache Arrow R package: from 4.0.0 through 16.1.0.


Users are recommended to upgrade to version 17.0.0, which fixes the issue.

References:

https://github.com/apache/arrow/commit/801de2fbcf5bcbce0c019ed4b35ff3fc863b=
141b
https://arrow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-52338

