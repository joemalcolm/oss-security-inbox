Received: (qmail 28028 invoked by uid 550); 4 Dec 2024 15:57:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27933 invoked from network); 4 Dec 2024 13:34:28 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Stamatis Zampetakis <zabetak@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <d9ad5b1e-d9a8-ec57-82ef-dfbfbfb59e37@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 04 Dec 2024 13:28:56 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-41137: Apache Hive: Deserialization of untrusted data
 when fetching partitions from the Metastore 

Severity: moderate

Affected versions:

- Apache Hive 4.0.0-alpha-1 before 4.0.0

Description:

Apache Hive=C2=A0Metastore (HMS) uses=C2=A0SerializationUtilities#deseriali=
zeObjectWithTypeInformation=C2=A0method when filtering and fetching partiti=
ons that is unsafe and=C2=A0can lead=C2=A0to Remote Code Execution (RCE) si=
nce it allows the deserialization of arbitrary data.

In real deployments, the vulnerability can be exploited only by authenticat=
ed users/clients that were able to successfully establish=C2=A0a connection=
 to the Metastore. From an API perspective any code that calls the unsafe m=
ethod may be vulnerable unless it performs additional prerechecks on the in=
put arguments.

This issue is being tracked as HIVE-26539=20

Credit:

Junjie Liao (reporter)

References:

https://github.com/apache/hive
https://issues.apache.org/jira/browse/HIVE-26539
https://github.com/apache/hive/commit/60027bb9c91a93affcfebd9068f064bc1f2a7=
4c9
https://hive.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2022-41137
https://issues.apache.org/jira/browse/HIVE-26539

