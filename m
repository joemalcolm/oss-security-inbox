Received: (qmail 32491 invoked by uid 550); 3 May 2024 10:48:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16182 invoked from network); 3 May 2024 08:03:47 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Stamatis Zampetakis <zabetak@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <99f26c7f-4611-6918-23c5-96c401972688@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 May 2024 08:03:35 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-35701: Apache Hive: Arbitrary command execution via JDBC
 driver 

Severity: moderate

Affected versions:

- Apache Hive 4.0.0-alpha-1 before 4.0.0

Description:

Improper Control of Generation of Code ('Code Injection') vulnerability in =
Apache Hive.

The vulnerability affects the Hive JDBC driver component and it can potenti=
ally lead to arbitrary code execution on the machine/endpoint that the JDBC=
 driver (client) is running. The malicious user must have sufficient permis=
sions to specify/edit JDBC URL(s) in an endpoint relying on the Hive JDBC d=
river and the JDBC client process must run under a privileged user to fully=
 exploit the vulnerability.=C2=A0

The attacker can setup a malicious HTTP server and specify a JDBC URL point=
ing towards this server. When a JDBC connection is attempted, the malicious=
 HTTP server can provide a special response with customized payload that ca=
n trigger the execution of certain commands in the JDBC client.This issue a=
ffects Apache Hive: from 4.0.0-alpha-1 before 4.0.0.

Users are recommended to upgrade to version 4.0.0, which fixes the issue.

This issue is being tracked as HIVE-27554=20

Credit:

Kostya Kortchinsky (reporter)

References:

https://hive.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-35701
https://issues.apache.org/jira/browse/HIVE-27554

