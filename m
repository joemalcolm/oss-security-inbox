Received: (qmail 1409 invoked by uid 550); 1 Apr 2025 02:19:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9310 invoked from network); 1 Apr 2025 02:03:21 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Gang Wu <gangwu@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <042ceaf8-642e-e59f-f891-ffa07e21c86d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 01 Apr 2025 02:03:07 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-30065: Apache Parquet Java: Arbitrary code execution in
 the parquet-avro module when reading an Avro schema from a Parquet file
 metadata 

Affected versions:

- Apache Parquet Java through 1.15.0

Description:

Schema parsing in the parquet-avro module of Apache Parquet 1.15.0 and prev=
ious versions allows bad actors to execute arbitrary code


Users are recommended to upgrade to version 1.15.1, which fixes the issue.

Credit:

Keyi Li (Amazon) (finder)

References:

https://lists.apache.org/thread/okzqb3kn479gqzxm21gg5vqr35om9gw5
https://parquet.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-30065

