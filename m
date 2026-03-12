Received: (qmail 12272 invoked by uid 550); 12 Mar 2026 16:58:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5571 invoked from network); 12 Mar 2026 16:40:55 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: =?UTF-8?Q?Gy=C3=B6rgy_G=C3=A1l?= <ggal@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <401138d7-2d02-f558-faf2-3ed8575e4a91@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 12 Mar 2026 16:40:43 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-60012: Apache Livy: Restrict file access 

Severity: important=20

Affected versions:

- Apache Livy (org.apache.livy:livy-server) 0.7.0-incubating before 0.9.0-i=
ncubating

Description:

Malicious configuration can lead to unauthorized file access in Apache Livy.

This issue affects Apache Livy 0.7.0 and 0.8.0 when connecting to Apache=C2=
=A0Spark 3.1 or later.

A request that includes a Spark configuration value supported from Apache=
=C2=A0Spark version 3.1 can lead to users gaining access to files they do n=
ot have permissions to.

For the vulnerability to be exploitable, the user needs to have access to A=
pache Livy's REST or JDBC interface and be able to send requests with arbit=
rary Spark configuration values.

Users are recommended to upgrade to version 0.9.0 or later, which fixes the=
 issue.

Credit:

Furue Hideyuki (finder)

References:

https://livy.incubator.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-60012

