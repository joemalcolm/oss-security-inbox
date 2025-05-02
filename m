Received: (qmail 3462 invoked by uid 550); 2 May 2025 08:23:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 31763 invoked from network); 2 May 2025 07:25:56 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Gang Wu <gangwu@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <bf42edf5-a9e1-dc94-6926-8a6f9d2164c2@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 02 May 2025 07:24:12 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-46762: Apache Parquet Java: Potential malicious code
 execution from trusted packages in the parquet-avro module when reading an
 Avro schema from a Parquet file metadata 

Affected versions:

- Apache Parquet Java through 1.15.1

Description:

Schema parsing in the parquet-avro module of Apache Parquet 1.15.0 and prev=
ious versions allows bad actors to execute arbitrary code.

While 1.15.1 introduced a fix to restrict untrusted packages, the default s=
etting of trusted packages still allows malicious classes from these packag=
es to be executed.

The exploit is only applicable if the client code of parquet-avro uses the =
"specific" or the "reflect" models deliberately for reading Parquet files. =
("generic" model is not impacted)

Users are recommended to upgrade to 1.15.2 or set the system property "org.=
apache.parquet.avro.SERIALIZABLE_PACKAGES" to an empty string on 1.15.1. Bo=
th are sufficient to fix the issue.

Credit:

Andrew Pikler (reporter)
David Handermann (reporter)
N=C3=A1ndor Koll=C3=A1r (reporter)

References:

https://lists.apache.org/thread/vr1h7dnr4jp2f1xhzzkwzcw49qgfgsyl
https://parquet.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-46762

