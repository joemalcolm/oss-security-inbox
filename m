Received: (qmail 8041 invoked by uid 550); 28 Jan 2025 20:35:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11959 invoked from network); 28 Jan 2025 19:54:45 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ayush Saxena <ayushsaxena@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <28df58aa-b473-16e4-2e48-9cc802684bd9@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 28 Jan 2025 19:53:38 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-29869: Apache Hive: Credentials file created with non
 restrictive permissions 

Severity: important

Affected versions:

- Apache Hive 1.1.0 before 4.0.1

Description:

Hive creates a credentials file to a temporary directory in the file system=
 with permissions 644 by default when the file permissions are not set expl=
icitly. Any unauthorized user having access to the directory can read the s=
ensitive information written into this file.=C2=A0Users are recommended to =
upgrade to version 4.0.1, which fixes this issue.

Credit:

Andrea Cosentino (reporter)

References:

https://github.com/apache/hive
https://github.com/apache/hive/commit/20106e254527f7d71b2e34455c4322e14950c=
620
https://issues.apache.org/jira/browse/HIVE-28134
https://hive.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-29869

