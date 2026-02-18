Received: (qmail 16184 invoked by uid 550); 18 Feb 2026 16:38:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 10092 invoked from network); 18 Feb 2026 10:28:53 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Andrea Cosentino <acosentino@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <881c458b-079c-8968-adc9-1a7ac0f2b85e@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 18 Feb 2026 10:27:33 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-25747: Apache Camel: Deserialization of Untrusted Data in Camel LevelDB

Severity: important=20

Affected versions:

- Apache Camel (org.apache.camel:camel-leveldb) 4.10.0 before 4.10.9
- Apache Camel (org.apache.camel:camel-leveldb) 4.14.0 before 4.14.5
- Apache Camel (org.apache.camel:camel-leveldb) 4.15.0 before 4.18.0

Description:

Deserialization of Untrusted Data vulnerability in Apache Camel LevelDB com=
ponent.

This issue affects Apache Camel: from 4.10.0 before 4.10.8, from 4.14.0 bef=
ore 4.14.5, from 4.15.0 before 4.18.0.

Users are recommended to upgrade to version 4.18.0, which fixes the issue. =
For the 4.10.x LTS releases, users are recommended to upgrade to 4.10.9, wh=
ile for 4.14.x LTS releases, users are recommended to upgrade to 4.14.5

This issue is being tracked as CAMEL-22966=20

Credit:

Andrea Cosentino (finder)
Andrea Cosentino (remediation developer)

References:

https://github.com/oscerd/CVE-2026-25747
https://camel.apache.org/security/CVE-2026-25747.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-25747
https://issues.apache.org/jira/browse/CAMEL-22966

