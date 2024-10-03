Received: (qmail 23722 invoked by uid 550); 3 Oct 2024 16:06:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20403 invoked from network); 3 Oct 2024 10:16:11 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Martin Tzvetanov Grigorov <mgrigorov@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <bedb9133-e1e5-df85-a534-a09fdee8e673@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 03 Oct 2024 10:14:59 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-47561: Apache Avro Java SDK: Arbitrary Code Execution
 when reading Avro Data (Java SDK) 

Severity: critical

Affected versions:

- Apache Avro Java SDK before 1.11.4

Description:

Schema parsing in the Java SDK of Apache Avro 1.11.3 and previous versions =
allows bad actors to execute arbitrary code.
Users are recommended to upgrade to version 1.11.4=C2=A0 or 1.12.0, which f=
ix this issue.

Credit:

Kostya Kortchinsky, from the Databricks Security Team (finder)

References:

https://avro.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-47561

