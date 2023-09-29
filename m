Received: (qmail 31813 invoked by uid 550); 29 Sep 2023 16:16:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30195 invoked from network); 29 Sep 2023 16:15:57 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ryan Skraba <rskraba@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <b6e3aaa0-5d6b-cb13-d602-142f325a5544@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 29 Sep 2023 16:12:45 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-39410: Apache Avro Java SDK: Memory when deserializing
 untrusted data in Avro Java SDK 

Severity: low

Affected versions:

- Apache Avro Java SDK before 1.11.3

Description:

When deserializing untrusted or corrupted data, it is possible for a reader=
 to consume memory beyond the allowed constraints and thus lead to out of m=
emory on the system.

This issue affects Java applications using Apache Avro Java SDK up to and i=
ncluding 1.11.2.  Users should update to apache-avro version 1.11.3 which a=
ddresses this issue.

This issue is being tracked as AVRO-3819=20

Credit:

Adam Korczynski at ADA Logics Ltd (finder)

References:

https://avro.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-39410
https://issues.apache.org/jira/browse/AVRO-3819

